package android.support.p001v4.content.p002pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.support.p001v4.graphics.drawable.IconCompat;
import android.text.TextUtils;
import java.util.Arrays;
/* renamed from: android.support.v4.content.pm.ShortcutInfoCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/content/pm/ShortcutInfoCompat.class */
public class ShortcutInfoCompat {
    ComponentName mActivity;
    Context mContext;
    CharSequence mDisabledMessage;
    IconCompat mIcon;
    String mId;
    Intent[] mIntents;
    boolean mIsAlwaysBadged;
    CharSequence mLabel;
    CharSequence mLongLabel;

    /* renamed from: android.support.v4.content.pm.ShortcutInfoCompat$Builder */
    /* loaded from: classes-dex2jar.jar:android/support/v4/content/pm/ShortcutInfoCompat$Builder.class */
    public static class Builder {
        private final ShortcutInfoCompat mInfo = new ShortcutInfoCompat();

        public Builder(@NonNull Context context, @NonNull String str) {
            this.mInfo.mContext = context;
            this.mInfo.mId = str;
        }

        @NonNull
        public ShortcutInfoCompat build() {
            if (TextUtils.isEmpty(this.mInfo.mLabel)) {
                throw new IllegalArgumentException("Shortcut must have a non-empty label");
            } else if (this.mInfo.mIntents != null && this.mInfo.mIntents.length != 0) {
                return this.mInfo;
            } else {
                throw new IllegalArgumentException("Shortcut must have an intent");
            }
        }

        @NonNull
        public Builder setActivity(@NonNull ComponentName componentName) {
            this.mInfo.mActivity = componentName;
            return this;
        }

        public Builder setAlwaysBadged() {
            this.mInfo.mIsAlwaysBadged = true;
            return this;
        }

        @NonNull
        public Builder setDisabledMessage(@NonNull CharSequence charSequence) {
            this.mInfo.mDisabledMessage = charSequence;
            return this;
        }

        @NonNull
        public Builder setIcon(IconCompat iconCompat) {
            this.mInfo.mIcon = iconCompat;
            return this;
        }

        @NonNull
        public Builder setIntent(@NonNull Intent intent) {
            return setIntents(new Intent[]{intent});
        }

        @NonNull
        public Builder setIntents(@NonNull Intent[] intentArr) {
            this.mInfo.mIntents = intentArr;
            return this;
        }

        @NonNull
        public Builder setLongLabel(@NonNull CharSequence charSequence) {
            this.mInfo.mLongLabel = charSequence;
            return this;
        }

        @NonNull
        public Builder setShortLabel(@NonNull CharSequence charSequence) {
            this.mInfo.mLabel = charSequence;
            return this;
        }
    }

    ShortcutInfoCompat() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Intent addToIntent(Intent intent) {
        intent.putExtra("android.intent.extra.shortcut.INTENT", this.mIntents[this.mIntents.length - 1]).putExtra("android.intent.extra.shortcut.NAME", this.mLabel.toString());
        if (this.mIcon != null) {
            Drawable drawable = null;
            if (this.mIsAlwaysBadged) {
                PackageManager packageManager = this.mContext.getPackageManager();
                Drawable drawable2 = null;
                if (this.mActivity != null) {
                    try {
                        drawable2 = packageManager.getActivityIcon(this.mActivity);
                    } catch (PackageManager.NameNotFoundException e) {
                        drawable2 = null;
                    }
                }
                drawable = drawable2;
                if (drawable2 == null) {
                    drawable = this.mContext.getApplicationInfo().loadIcon(packageManager);
                }
            }
            this.mIcon.addToShortcutIntent(intent, drawable, this.mContext);
        }
        return intent;
    }

    @Nullable
    public ComponentName getActivity() {
        return this.mActivity;
    }

    @Nullable
    public CharSequence getDisabledMessage() {
        return this.mDisabledMessage;
    }

    @NonNull
    public String getId() {
        return this.mId;
    }

    @NonNull
    public Intent getIntent() {
        return this.mIntents[this.mIntents.length - 1];
    }

    @NonNull
    public Intent[] getIntents() {
        return (Intent[]) Arrays.copyOf(this.mIntents, this.mIntents.length);
    }

    @Nullable
    public CharSequence getLongLabel() {
        return this.mLongLabel;
    }

    @NonNull
    public CharSequence getShortLabel() {
        return this.mLabel;
    }

    @RequiresApi(25)
    public ShortcutInfo toShortcutInfo() {
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.mContext, this.mId).setShortLabel(this.mLabel).setIntents(this.mIntents);
        if (this.mIcon != null) {
            intents.setIcon(this.mIcon.toIcon());
        }
        if (!TextUtils.isEmpty(this.mLongLabel)) {
            intents.setLongLabel(this.mLongLabel);
        }
        if (!TextUtils.isEmpty(this.mDisabledMessage)) {
            intents.setDisabledMessage(this.mDisabledMessage);
        }
        if (this.mActivity != null) {
            intents.setActivity(this.mActivity);
        }
        return intents.build();
    }
}
