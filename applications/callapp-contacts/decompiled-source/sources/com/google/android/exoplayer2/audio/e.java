package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import com.google.android.exoplayer2.util.af;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f20750a = new e(new int[]{2}, 8);

    /* renamed from: c  reason: collision with root package name */
    private static final e f20751c = new e(new int[]{2, 5, 6}, 8);

    /* renamed from: b  reason: collision with root package name */
    final int f20752b;

    /* renamed from: d  reason: collision with root package name */
    private final int[] f20753d;

    public e(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f20753d = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f20753d = new int[0];
        }
        this.f20752b = i;
    }

    public static e a(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
        return (!(af.f22275a >= 17 && ("Amazon".equals(af.f22277c) || "Xiaomi".equals(af.f22277c))) || Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) != 1) ? (registerReceiver == null || registerReceiver.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? f20750a : new e(registerReceiver.getIntArrayExtra("android.media.extra.ENCODINGS"), registerReceiver.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : f20751c;
    }

    public final boolean a(int i) {
        return Arrays.binarySearch(this.f20753d, i) >= 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Arrays.equals(this.f20753d, eVar.f20753d) && this.f20752b == eVar.f20752b;
    }

    public final int hashCode() {
        return this.f20752b + (Arrays.hashCode(this.f20753d) * 31);
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f20752b + ", supportedEncodings=" + Arrays.toString(this.f20753d) + "]";
    }
}
