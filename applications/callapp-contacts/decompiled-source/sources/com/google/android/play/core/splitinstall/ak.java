package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.tasks.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ak.class */
public final class ak implements a {

    /* renamed from: a  reason: collision with root package name */
    final ah f31503a;

    /* renamed from: b  reason: collision with root package name */
    private final n f31504b;

    /* renamed from: c  reason: collision with root package name */
    private final ae f31505c;

    /* renamed from: d  reason: collision with root package name */
    private final o f31506d;
    private final Handler e = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(n nVar, ah ahVar, ae aeVar, o oVar) {
        this.f31504b = nVar;
        this.f31503a = ahVar;
        this.f31505c = aeVar;
        this.f31506d = oVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<String> a(List<Locale> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Locale locale : list) {
            if (Build.VERSION.SDK_INT >= 21) {
                arrayList.add(locale.toLanguageTag());
            }
        }
        return arrayList;
    }

    @Override // com.google.android.play.core.splitinstall.a
    public final d<c> a(int i) {
        return this.f31504b.a(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0070, code lost:
        if (r0.containsAll(r0) != false) goto L_0x0073;
     */
    @Override // com.google.android.play.core.splitinstall.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.play.core.tasks.d<java.lang.Integer> a(com.google.android.play.core.splitinstall.b r7) {
        /*
            r6 = this;
            r0 = r7
            java.util.List<java.util.Locale> r0 = r0.f31515b
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0024
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L_0x0017
            goto L_0x0024
        L_0x0017:
            com.google.android.play.core.splitinstall.SplitInstallException r0 = new com.google.android.play.core.splitinstall.SplitInstallException
            r1 = r0
            r2 = -5
            r1.<init>(r2)
            com.google.android.play.core.tasks.d r0 = com.google.android.play.core.tasks.f.a(r0)
            return r0
        L_0x0024:
            r0 = r7
            java.util.List<java.util.Locale> r0 = r0.f31515b
            r8 = r0
            r0 = r6
            com.google.android.play.core.splitinstall.ae r0 = r0.f31505c
            java.util.Set r0 = r0.b()
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x0038
            goto L_0x0073
        L_0x0038:
            java.util.HashSet r0 = new java.util.HashSet
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r8
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L_0x0048:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0068
            r0 = r10
            r1 = r8
            java.lang.Object r1 = r1.next()
            java.util.Locale r1 = (java.util.Locale) r1
            java.lang.String r1 = r1.getLanguage()
            boolean r0 = r0.add(r1)
            goto L_0x0048
        L_0x0068:
            r0 = r9
            r1 = r10
            boolean r0 = r0.containsAll(r1)
            if (r0 == 0) goto L_0x00bc
        L_0x0073:
            r0 = r7
            java.util.List<java.lang.String> r0 = r0.f31514a
            r10 = r0
            r0 = r6
            com.google.android.play.core.splitinstall.ae r0 = r0.f31505c
            java.util.Set r0 = r0.a()
            r1 = r10
            boolean r0 = r0.containsAll(r1)
            if (r0 == 0) goto L_0x00bc
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L_0x00a3
            r0 = r7
            java.util.List<java.lang.String> r0 = r0.f31514a
            r1 = r6
            com.google.android.play.core.splitinstall.o r1 = r1.f31506d
            java.util.Set r1 = r1.a()
            boolean r0 = java.util.Collections.disjoint(r0, r1)
            if (r0 == 0) goto L_0x00bc
        L_0x00a3:
            r0 = r6
            android.os.Handler r0 = r0.e
            com.google.android.play.core.splitinstall.ai r1 = new com.google.android.play.core.splitinstall.ai
            r2 = r1
            r3 = r6
            r4 = r7
            r2.<init>(r3, r4)
            boolean r0 = r0.post(r1)
            r0 = 0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            com.google.android.play.core.tasks.d r0 = com.google.android.play.core.tasks.f.a(r0)
            return r0
        L_0x00bc:
            r0 = r6
            com.google.android.play.core.splitinstall.n r0 = r0.f31504b
            r1 = r7
            java.util.List<java.lang.String> r1 = r1.f31514a
            r2 = r7
            java.util.List<java.util.Locale> r2 = r2.f31515b
            java.util.List r2 = a(r2)
            com.google.android.play.core.tasks.d r0 = r0.a(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.splitinstall.ak.a(com.google.android.play.core.splitinstall.b):com.google.android.play.core.tasks.d");
    }

    @Override // com.google.android.play.core.splitinstall.a
    public final Set<String> a() {
        Set<String> b2 = this.f31505c.b();
        Set<String> set = b2;
        if (b2 == null) {
            set = Collections.emptySet();
        }
        return set;
    }

    @Override // com.google.android.play.core.splitinstall.a
    public final boolean a(c cVar, Activity activity, int i) throws IntentSender.SendIntentException {
        aj ajVar = new aj(activity);
        if (cVar.b() != 8 || cVar.h() == null) {
            return false;
        }
        ajVar.a(cVar.h().getIntentSender(), i);
        return true;
    }
}
