package androidx.browser.trusted;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:androidx/browser/trusted/TrustedWebActivityDisplayMode.class */
public interface TrustedWebActivityDisplayMode {
    public static final String KEY_ID = "androidx.browser.trusted.displaymode.KEY_ID";

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/TrustedWebActivityDisplayMode$DefaultMode.class */
    public static class DefaultMode implements TrustedWebActivityDisplayMode {

        /* renamed from: ID */
        private static final int f13ID = 0;

        @Override // androidx.browser.trusted.TrustedWebActivityDisplayMode
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(TrustedWebActivityDisplayMode.KEY_ID, 0);
            return bundle;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/TrustedWebActivityDisplayMode$ImmersiveMode.class */
    public static class ImmersiveMode implements TrustedWebActivityDisplayMode {

        /* renamed from: ID */
        private static final int f14ID = 1;
        public static final String KEY_CUTOUT_MODE = "androidx.browser.trusted.displaymode.KEY_CUTOUT_MODE";
        public static final String KEY_STICKY = "androidx.browser.trusted.displaymode.KEY_STICKY";
        private final boolean mIsSticky;
        private final int mLayoutInDisplayCutoutMode;

        public ImmersiveMode(boolean z, int i) {
            this.mIsSticky = z;
            this.mLayoutInDisplayCutoutMode = i;
        }

        static TrustedWebActivityDisplayMode fromBundle(Bundle bundle) {
            return new ImmersiveMode(bundle.getBoolean(KEY_STICKY), bundle.getInt(KEY_CUTOUT_MODE));
        }

        public boolean isSticky() {
            return this.mIsSticky;
        }

        public int layoutInDisplayCutoutMode() {
            return this.mLayoutInDisplayCutoutMode;
        }

        @Override // androidx.browser.trusted.TrustedWebActivityDisplayMode
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(TrustedWebActivityDisplayMode.KEY_ID, 1);
            bundle.putBoolean(KEY_STICKY, this.mIsSticky);
            bundle.putInt(KEY_CUTOUT_MODE, this.mLayoutInDisplayCutoutMode);
            return bundle;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/browser/trusted/TrustedWebActivityDisplayMode$_CC.class */
    public final /* synthetic */ class _CC {
        public static TrustedWebActivityDisplayMode fromBundle(Bundle bundle) {
            return bundle.getInt(TrustedWebActivityDisplayMode.KEY_ID) != 1 ? new DefaultMode() : ImmersiveMode.fromBundle(bundle);
        }
    }

    Bundle toBundle();
}
