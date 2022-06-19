package androidx.media;

import android.media.VolumeProvider;
import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:androidx/media/VolumeProviderCompat.class */
public abstract class VolumeProviderCompat {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;
    private Callback mCallback;
    private final String mControlId;
    private final int mControlType;
    private int mCurrentVolume;
    private final int mMaxVolume;
    private VolumeProvider mVolumeProviderFwk;

    /* loaded from: classes-dex2jar.jar:androidx/media/VolumeProviderCompat$Callback.class */
    public static abstract class Callback {
        public abstract void onVolumeChanged(VolumeProviderCompat volumeProviderCompat);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/media/VolumeProviderCompat$ControlType.class */
    public @interface ControlType {
    }

    public VolumeProviderCompat(int i, int i2, int i3) {
        this(i, i2, i3, null);
    }

    public VolumeProviderCompat(int i, int i2, int i3, String str) {
        this.mControlType = i;
        this.mMaxVolume = i2;
        this.mCurrentVolume = i3;
        this.mControlId = str;
    }

    public final int getCurrentVolume() {
        return this.mCurrentVolume;
    }

    public final int getMaxVolume() {
        return this.mMaxVolume;
    }

    public final int getVolumeControl() {
        return this.mControlType;
    }

    public final String getVolumeControlId() {
        return this.mControlId;
    }

    public Object getVolumeProvider() {
        if (this.mVolumeProviderFwk == null) {
            if (Build.VERSION.SDK_INT >= 30) {
                this.mVolumeProviderFwk = new VolumeProvider(this.mControlType, this.mMaxVolume, this.mCurrentVolume, this.mControlId) { // from class: androidx.media.VolumeProviderCompat.1
                    @Override // android.media.VolumeProvider
                    public void onAdjustVolume(int i) {
                        VolumeProviderCompat.this.onAdjustVolume(i);
                    }

                    @Override // android.media.VolumeProvider
                    public void onSetVolumeTo(int i) {
                        VolumeProviderCompat.this.onSetVolumeTo(i);
                    }
                };
            } else if (Build.VERSION.SDK_INT >= 21) {
                this.mVolumeProviderFwk = new VolumeProvider(this.mControlType, this.mMaxVolume, this.mCurrentVolume) { // from class: androidx.media.VolumeProviderCompat.2
                    @Override // android.media.VolumeProvider
                    public void onAdjustVolume(int i) {
                        VolumeProviderCompat.this.onAdjustVolume(i);
                    }

                    @Override // android.media.VolumeProvider
                    public void onSetVolumeTo(int i) {
                        VolumeProviderCompat.this.onSetVolumeTo(i);
                    }
                };
            }
        }
        return this.mVolumeProviderFwk;
    }

    public void onAdjustVolume(int i) {
    }

    public void onSetVolumeTo(int i) {
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public final void setCurrentVolume(int i) {
        this.mCurrentVolume = i;
        if (Build.VERSION.SDK_INT >= 21) {
            ((VolumeProvider) getVolumeProvider()).setCurrentVolume(i);
        }
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onVolumeChanged(this);
        }
    }
}
