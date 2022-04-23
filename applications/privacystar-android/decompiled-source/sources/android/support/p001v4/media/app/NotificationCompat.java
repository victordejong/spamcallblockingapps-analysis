package android.support.p001v4.media.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.media.session.MediaSession;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.mediacompat.C0208R;
import android.support.p001v4.app.BundleCompat;
import android.support.p001v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.p001v4.app.NotificationCompat;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
/* renamed from: android.support.v4.media.app.NotificationCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/app/NotificationCompat.class */
public class NotificationCompat {

    /* renamed from: android.support.v4.media.app.NotificationCompat$DecoratedMediaCustomViewStyle */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/app/NotificationCompat$DecoratedMediaCustomViewStyle.class */
    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
        private void setBackgroundColor(RemoteViews remoteViews) {
            remoteViews.setInt(C0208R.C0211id.status_bar_latest_event_content, "setBackgroundColor", this.mBuilder.getColor() != 0 ? this.mBuilder.getColor() : this.mBuilder.mContext.getResources().getColor(C0208R.color.notification_material_background_media_default_color));
        }

        @Override // android.support.p001v4.media.app.NotificationCompat.MediaStyle, android.support.p001v4.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                notificationBuilderWithBuilderAccessor.getBuilder().setStyle(fillInMediaStyle(new Notification.DecoratedMediaCustomViewStyle()));
            } else {
                super.apply(notificationBuilderWithBuilderAccessor);
            }
        }

        @Override // android.support.p001v4.media.app.NotificationCompat.MediaStyle
        int getBigContentViewLayoutResource(int i) {
            return i <= 3 ? C0208R.C0212layout.notification_template_big_media_narrow_custom : C0208R.C0212layout.notification_template_big_media_custom;
        }

        @Override // android.support.p001v4.media.app.NotificationCompat.MediaStyle
        int getContentViewLayoutResource() {
            return this.mBuilder.getContentView() != null ? C0208R.C0212layout.notification_template_media_custom : super.getContentViewLayoutResource();
        }

        @Override // android.support.p001v4.media.app.NotificationCompat.MediaStyle, android.support.p001v4.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews bigContentView = this.mBuilder.getBigContentView() != null ? this.mBuilder.getBigContentView() : this.mBuilder.getContentView();
            if (bigContentView == null) {
                return null;
            }
            RemoteViews generateBigContentView = generateBigContentView();
            buildIntoRemoteViews(generateBigContentView, bigContentView);
            if (Build.VERSION.SDK_INT >= 21) {
                setBackgroundColor(generateBigContentView);
            }
            return generateBigContentView;
        }

        @Override // android.support.p001v4.media.app.NotificationCompat.MediaStyle, android.support.p001v4.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            boolean z = false;
            boolean z2 = this.mBuilder.getContentView() != null;
            if (Build.VERSION.SDK_INT >= 21) {
                if (z2 || this.mBuilder.getBigContentView() != null) {
                    z = true;
                }
                if (!z) {
                    return null;
                }
                RemoteViews generateContentView = generateContentView();
                if (z2) {
                    buildIntoRemoteViews(generateContentView, this.mBuilder.getContentView());
                }
                setBackgroundColor(generateContentView);
                return generateContentView;
            }
            RemoteViews generateContentView2 = generateContentView();
            if (!z2) {
                return null;
            }
            buildIntoRemoteViews(generateContentView2, this.mBuilder.getContentView());
            return generateContentView2;
        }

        @Override // android.support.p001v4.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews headsUpContentView = this.mBuilder.getHeadsUpContentView() != null ? this.mBuilder.getHeadsUpContentView() : this.mBuilder.getContentView();
            if (headsUpContentView == null) {
                return null;
            }
            RemoteViews generateBigContentView = generateBigContentView();
            buildIntoRemoteViews(generateBigContentView, headsUpContentView);
            if (Build.VERSION.SDK_INT >= 21) {
                setBackgroundColor(generateBigContentView);
            }
            return generateBigContentView;
        }
    }

    /* renamed from: android.support.v4.media.app.NotificationCompat$MediaStyle */
    /* loaded from: classes-dex2jar.jar:android/support/v4/media/app/NotificationCompat$MediaStyle.class */
    public static class MediaStyle extends NotificationCompat.Style {
        private static final int MAX_MEDIA_BUTTONS = 5;
        private static final int MAX_MEDIA_BUTTONS_IN_COMPACT = 3;
        int[] mActionsToShowInCompact = null;
        PendingIntent mCancelButtonIntent;
        boolean mShowCancelButton;
        MediaSessionCompat.Token mToken;

        public MediaStyle() {
        }

        public MediaStyle(NotificationCompat.Builder builder) {
            setBuilder(builder);
        }

        private RemoteViews generateMediaActionButton(NotificationCompat.Action action) {
            boolean z = action.getActionIntent() == null;
            RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), C0208R.C0212layout.notification_media_action);
            remoteViews.setImageViewResource(C0208R.C0211id.action0, action.getIcon());
            if (!z) {
                remoteViews.setOnClickPendingIntent(C0208R.C0211id.action0, action.getActionIntent());
            }
            if (Build.VERSION.SDK_INT >= 15) {
                remoteViews.setContentDescription(C0208R.C0211id.action0, action.getTitle());
            }
            return remoteViews;
        }

        public static MediaSessionCompat.Token getMediaSession(Notification notification) {
            Bundle extras = android.support.p001v4.app.NotificationCompat.getExtras(notification);
            if (extras == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 21) {
                Parcelable parcelable = extras.getParcelable(android.support.p001v4.app.NotificationCompat.EXTRA_MEDIA_SESSION);
                if (parcelable != null) {
                    return MediaSessionCompat.Token.fromToken(parcelable);
                }
                return null;
            }
            IBinder binder = BundleCompat.getBinder(extras, android.support.p001v4.app.NotificationCompat.EXTRA_MEDIA_SESSION);
            if (binder == null) {
                return null;
            }
            Parcel obtain = Parcel.obtain();
            obtain.writeStrongBinder(binder);
            obtain.setDataPosition(0);
            MediaSessionCompat.Token createFromParcel = MediaSessionCompat.Token.CREATOR.createFromParcel(obtain);
            obtain.recycle();
            return createFromParcel;
        }

        @Override // android.support.p001v4.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 21) {
                notificationBuilderWithBuilderAccessor.getBuilder().setStyle(fillInMediaStyle(new Notification.MediaStyle()));
            } else if (this.mShowCancelButton) {
                notificationBuilderWithBuilderAccessor.getBuilder().setOngoing(true);
            }
        }

        @RequiresApi(21)
        Notification.MediaStyle fillInMediaStyle(Notification.MediaStyle mediaStyle) {
            if (this.mActionsToShowInCompact != null) {
                mediaStyle.setShowActionsInCompactView(this.mActionsToShowInCompact);
            }
            if (this.mToken != null) {
                mediaStyle.setMediaSession((MediaSession.Token) this.mToken.getToken());
            }
            return mediaStyle;
        }

        RemoteViews generateBigContentView() {
            int min = Math.min(this.mBuilder.mActions.size(), 5);
            RemoteViews applyStandardTemplate = applyStandardTemplate(false, getBigContentViewLayoutResource(min), false);
            applyStandardTemplate.removeAllViews(C0208R.C0211id.media_actions);
            if (min > 0) {
                for (int i = 0; i < min; i++) {
                    applyStandardTemplate.addView(C0208R.C0211id.media_actions, generateMediaActionButton(this.mBuilder.mActions.get(i)));
                }
            }
            if (this.mShowCancelButton) {
                applyStandardTemplate.setViewVisibility(C0208R.C0211id.cancel_action, 0);
                applyStandardTemplate.setInt(C0208R.C0211id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(C0208R.integer.cancel_button_image_alpha));
                applyStandardTemplate.setOnClickPendingIntent(C0208R.C0211id.cancel_action, this.mCancelButtonIntent);
            } else {
                applyStandardTemplate.setViewVisibility(C0208R.C0211id.cancel_action, 8);
            }
            return applyStandardTemplate;
        }

        RemoteViews generateContentView() {
            RemoteViews applyStandardTemplate = applyStandardTemplate(false, getContentViewLayoutResource(), true);
            int size = this.mBuilder.mActions.size();
            int min = this.mActionsToShowInCompact == null ? 0 : Math.min(this.mActionsToShowInCompact.length, 3);
            applyStandardTemplate.removeAllViews(C0208R.C0211id.media_actions);
            if (min > 0) {
                for (int i = 0; i < min; i++) {
                    if (i >= size) {
                        throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", Integer.valueOf(i), Integer.valueOf(size - 1)));
                    }
                    applyStandardTemplate.addView(C0208R.C0211id.media_actions, generateMediaActionButton(this.mBuilder.mActions.get(this.mActionsToShowInCompact[i])));
                }
            }
            if (this.mShowCancelButton) {
                applyStandardTemplate.setViewVisibility(C0208R.C0211id.end_padder, 8);
                applyStandardTemplate.setViewVisibility(C0208R.C0211id.cancel_action, 0);
                applyStandardTemplate.setOnClickPendingIntent(C0208R.C0211id.cancel_action, this.mCancelButtonIntent);
                applyStandardTemplate.setInt(C0208R.C0211id.cancel_action, "setAlpha", this.mBuilder.mContext.getResources().getInteger(C0208R.integer.cancel_button_image_alpha));
            } else {
                applyStandardTemplate.setViewVisibility(C0208R.C0211id.end_padder, 0);
                applyStandardTemplate.setViewVisibility(C0208R.C0211id.cancel_action, 8);
            }
            return applyStandardTemplate;
        }

        int getBigContentViewLayoutResource(int i) {
            return i <= 3 ? C0208R.C0212layout.notification_template_big_media_narrow : C0208R.C0212layout.notification_template_big_media;
        }

        int getContentViewLayoutResource() {
            return C0208R.C0212layout.notification_template_media;
        }

        @Override // android.support.p001v4.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 21) {
                return null;
            }
            return generateBigContentView();
        }

        @Override // android.support.p001v4.app.NotificationCompat.Style
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 21) {
                return null;
            }
            return generateContentView();
        }

        public MediaStyle setCancelButtonIntent(PendingIntent pendingIntent) {
            this.mCancelButtonIntent = pendingIntent;
            return this;
        }

        public MediaStyle setMediaSession(MediaSessionCompat.Token token) {
            this.mToken = token;
            return this;
        }

        public MediaStyle setShowActionsInCompactView(int... iArr) {
            this.mActionsToShowInCompact = iArr;
            return this;
        }

        public MediaStyle setShowCancelButton(boolean z) {
            if (Build.VERSION.SDK_INT < 21) {
                this.mShowCancelButton = z;
            }
            return this;
        }
    }

    private NotificationCompat() {
    }
}
