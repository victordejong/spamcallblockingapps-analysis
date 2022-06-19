package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.audio.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/e.class */
public final class C10892e {

    /* renamed from: a */
    public static final C10892e f35147a = new C10892e(new int[]{2}, 8);

    /* renamed from: c */
    private static final C10892e f35148c = new C10892e(new int[]{2, 5, 6}, 8);

    /* renamed from: b */
    final int f35149b;

    /* renamed from: d */
    private final int[] f35150d;

    public C10892e(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f35150d = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f35150d = new int[0];
        }
        this.f35149b = i;
    }

    /* renamed from: a */
    public static C10892e m22067a(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        return (!(C11599af.f38648a >= 17 && ("Amazon".equals(C11599af.f38650c) || "Xiaomi".equals(C11599af.f38650c))) || Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) != 1) ? (registerReceiver == null || registerReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? f35147a : new C10892e(registerReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), registerReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : f35148c;
    }

    /* renamed from: a */
    public final boolean m22068a(int i) {
        return Arrays.binarySearch(this.f35150d, i) >= 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10892e)) {
            return false;
        }
        C10892e c10892e = (C10892e) obj;
        return Arrays.equals(this.f35150d, c10892e.f35150d) && this.f35149b == c10892e.f35149b;
    }

    public final int hashCode() {
        return this.f35149b + (Arrays.hashCode(this.f35150d) * 31);
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f35149b + ", supportedEncodings=" + Arrays.toString(this.f35150d) + "]";
    }
}
