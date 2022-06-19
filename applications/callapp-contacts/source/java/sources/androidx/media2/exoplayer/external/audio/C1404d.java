package androidx.media2.exoplayer.external.audio;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import androidx.media2.exoplayer.external.util.C1996ac;
import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.audio.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/d.class */
public final class C1404d {

    /* renamed from: a */
    public static final C1404d f5306a = new C1404d(new int[]{2}, 8);

    /* renamed from: d */
    private static final C1404d f5307d = new C1404d(new int[]{2, 5, 6}, 8);

    /* renamed from: b */
    final int[] f5308b;

    /* renamed from: c */
    final int f5309c;

    public C1404d(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f5308b = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f5308b = new int[0];
        }
        this.f5309c = i;
    }

    /* renamed from: a */
    public static C1404d m43017a(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        return (!(C1996ac.f8062a >= 17 && "Amazon".equals(C1996ac.f8064c)) || Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) != 1) ? (registerReceiver == null || registerReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? f5306a : new C1404d(registerReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), registerReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : f5307d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1404d)) {
            return false;
        }
        C1404d c1404d = (C1404d) obj;
        return Arrays.equals(this.f5308b, c1404d.f5308b) && this.f5309c == c1404d.f5309c;
    }

    public final int hashCode() {
        return this.f5309c + (Arrays.hashCode(this.f5308b) * 31);
    }

    public final String toString() {
        int i = this.f5309c;
        String arrays = Arrays.toString(this.f5308b);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
