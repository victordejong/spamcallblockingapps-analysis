package androidx.media;

import android.media.VolumeProvider;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:androidx/media/VolumeProviderCompatApi21.class */
class VolumeProviderCompatApi21 {

    /* loaded from: classes-dex2jar.jar:androidx/media/VolumeProviderCompatApi21$Delegate.class */
    public interface Delegate {
        /* renamed from: a */
        void mo17975a(int i);

        /* renamed from: b */
        void mo17974b(int i);
    }

    private VolumeProviderCompatApi21() {
    }

    /* renamed from: a */
    public static Object m17976a(int i, int i2, int i3, final Delegate delegate) {
        return new VolumeProvider(i, i2, i3) { // from class: androidx.media.VolumeProviderCompatApi21.1
            @Override // android.media.VolumeProvider
            public void onAdjustVolume(int i4) {
                delegate.mo17974b(i4);
            }

            @Override // android.media.VolumeProvider
            public void onSetVolumeTo(int i4) {
                delegate.mo17975a(i4);
            }
        };
    }
}
