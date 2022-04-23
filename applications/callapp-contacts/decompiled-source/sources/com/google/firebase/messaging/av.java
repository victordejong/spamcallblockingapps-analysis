package com.google.firebase.messaging;

import android.content.Intent;
import com.google.android.gms.stats.a;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/av.class */
final class av {

    /* renamed from: a  reason: collision with root package name */
    private static final long f32519a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private static final Object f32520b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static a f32521c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e1, code lost:
        if (r11 == false) goto L_0x00e4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00ef, code lost:
        if (r0.g == 0) goto L_0x00f2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f2, code lost:
        com.google.android.gms.common.stats.c.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f6, code lost:
        com.google.android.gms.common.stats.b.a(r0.f29993b, r0);
        com.google.android.gms.common.util.t.a(r0.f29994c);
        r0.g++;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.ComponentName a(android.content.Context r7, android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.av.a(android.content.Context, android.content.Intent):android.content.ComponentName");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0096, code lost:
        if (r7 == false) goto L_0x0099;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a5, code lost:
        if (r0.g == 1) goto L_0x00a8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a8, code lost:
        com.google.android.gms.common.stats.c.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ac, code lost:
        com.google.android.gms.common.stats.b.a(r0.f29993b, r0);
        com.google.android.gms.common.util.t.a(r0.f29994c);
        r0.g--;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Intent r5) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.av.a(android.content.Intent):void");
    }

    private static void a(Intent intent, boolean z) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z);
    }
}
