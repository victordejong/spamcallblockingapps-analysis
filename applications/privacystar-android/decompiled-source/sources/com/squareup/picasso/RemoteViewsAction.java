package com.squareup.picasso;

import android.app.Notification;
import android.app.NotificationManager;
import android.appwidget.AppWidgetManager;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.squareup.picasso.Picasso;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/RemoteViewsAction.class */
public abstract class RemoteViewsAction extends Action<RemoteViewsTarget> {
    final RemoteViews remoteViews;
    private RemoteViewsTarget target;
    final int viewId;

    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/RemoteViewsAction$AppWidgetAction.class */
    static class AppWidgetAction extends RemoteViewsAction {
        private final int[] appWidgetIds;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AppWidgetAction(Picasso picasso, Request request, RemoteViews remoteViews, int i, int[] iArr, int i2, int i3, String str, Object obj, int i4) {
            super(picasso, request, remoteViews, i, i4, i2, i3, obj, str);
            this.appWidgetIds = iArr;
        }

        @Override // com.squareup.picasso.RemoteViewsAction, com.squareup.picasso.Action
        /* bridge */ /* synthetic */ RemoteViewsTarget getTarget() {
            return RemoteViewsAction.super.getTarget();
        }

        @Override // com.squareup.picasso.RemoteViewsAction
        void update() {
            AppWidgetManager.getInstance(this.picasso.context).updateAppWidget(this.appWidgetIds, this.remoteViews);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/RemoteViewsAction$NotificationAction.class */
    static class NotificationAction extends RemoteViewsAction {
        private final Notification notification;
        private final int notificationId;

        /* JADX INFO: Access modifiers changed from: package-private */
        public NotificationAction(Picasso picasso, Request request, RemoteViews remoteViews, int i, int i2, Notification notification, int i3, int i4, String str, Object obj, int i5) {
            super(picasso, request, remoteViews, i, i5, i3, i4, obj, str);
            this.notificationId = i2;
            this.notification = notification;
        }

        @Override // com.squareup.picasso.RemoteViewsAction, com.squareup.picasso.Action
        /* bridge */ /* synthetic */ RemoteViewsTarget getTarget() {
            return RemoteViewsAction.super.getTarget();
        }

        @Override // com.squareup.picasso.RemoteViewsAction
        void update() {
            ((NotificationManager) Utils.getService(this.picasso.context, "notification")).notify(this.notificationId, this.notification);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/RemoteViewsAction$RemoteViewsTarget.class */
    public static class RemoteViewsTarget {
        final RemoteViews remoteViews;
        final int viewId;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RemoteViewsTarget(RemoteViews remoteViews, int i) {
            this.remoteViews = remoteViews;
            this.viewId = i;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            RemoteViewsTarget remoteViewsTarget = (RemoteViewsTarget) obj;
            if (this.viewId != remoteViewsTarget.viewId || !this.remoteViews.equals(remoteViewsTarget.remoteViews)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.remoteViews.hashCode() * 31) + this.viewId;
        }
    }

    RemoteViewsAction(Picasso picasso, Request request, RemoteViews remoteViews, int i, int i2, int i3, int i4, Object obj, String str) {
        super(picasso, null, request, i3, i4, i2, null, str, obj, false);
        this.remoteViews = remoteViews;
        this.viewId = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.squareup.picasso.Action
    public void complete(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
        this.remoteViews.setImageViewBitmap(this.viewId, bitmap);
        update();
    }

    @Override // com.squareup.picasso.Action
    public void error() {
        if (this.errorResId != 0) {
            setImageResource(this.errorResId);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.squareup.picasso.Action
    public RemoteViewsTarget getTarget() {
        if (this.target == null) {
            this.target = new RemoteViewsTarget(this.remoteViews, this.viewId);
        }
        return this.target;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setImageResource(int i) {
        this.remoteViews.setImageViewResource(this.viewId, i);
        update();
    }

    abstract void update();
}
