package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
@TargetApi(21)
/* renamed from: com.google.android.exoplayer2.audio.j */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/j.class */
public final class C4828j {

    /* renamed from: a */
    public static final C4828j f14626a = new C4828j(new int[]{2}, 8);

    /* renamed from: b */
    private static final C4828j f14627b = new C4828j(new int[]{2, 5, 6}, 8);

    /* renamed from: c */
    private final int[] f14628c;

    /* renamed from: d */
    private final int f14629d;

    public C4828j(int[] iArr, int i) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f14628c = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f14628c = new int[0];
        }
        this.f14629d = i;
    }

    /* renamed from: a */
    private static boolean m21579a() {
        return C5515h0.f17876a >= 17 && "Amazon".equals(C5515h0.f17878c);
    }

    /* renamed from: b */
    public static C4828j m21578b(Context context) {
        return m21577c(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: c */
    static C4828j m21577c(Context context, Intent intent) {
        return (!m21579a() || Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) != 1) ? (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? f14626a : new C4828j(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8)) : f14627b;
    }

    /* renamed from: d */
    public int m21576d() {
        return this.f14629d;
    }

    /* renamed from: e */
    public boolean m21575e(int i) {
        return Arrays.binarySearch(this.f14628c, i) >= 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4828j)) {
            return false;
        }
        C4828j c4828j = (C4828j) obj;
        if (!Arrays.equals(this.f14628c, c4828j.f14628c) || this.f14629d != c4828j.f14629d) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return this.f14629d + (Arrays.hashCode(this.f14628c) * 31);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f14629d + ", supportedEncodings=" + Arrays.toString(this.f14628c) + "]";
    }
}
