package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.tasks.AbstractC15180d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* renamed from: com.google.android.play.core.splitinstall.ak */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ak.class */
public final class C15145ak implements AbstractC15123a {

    /* renamed from: a */
    final C15142ah f54938a;

    /* renamed from: b */
    private final C15164n f54939b;

    /* renamed from: c */
    private final C15139ae f54940c;

    /* renamed from: d */
    private final C15165o f54941d;

    /* renamed from: e */
    private final Handler f54942e = new Handler(Looper.getMainLooper());

    public C15145ak(C15164n c15164n, C15142ah c15142ah, C15139ae c15139ae, C15165o c15165o) {
        this.f54939b = c15164n;
        this.f54938a = c15142ah;
        this.f54940c = c15139ae;
        this.f54941d = c15165o;
    }

    /* renamed from: a */
    public static List<String> m9388a(List<Locale> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Locale locale : list) {
            if (Build.VERSION.SDK_INT >= 21) {
                arrayList.add(locale.toLanguageTag());
            }
        }
        return arrayList;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final AbstractC15180d<AbstractC15152c> mo9339a(int i) {
        return this.f54939b.m9356a(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0070, code lost:
        if (r0.containsAll(r0) != false) goto L16;
     */
    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.play.core.tasks.AbstractC15180d<java.lang.Integer> mo9338a(com.google.android.play.core.splitinstall.C15150b r7) {
        /*
            r6 = this;
            r0 = r7
            java.util.List<java.util.Locale> r0 = r0.f54951b
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L24
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto L17
            goto L24
        L17:
            com.google.android.play.core.splitinstall.SplitInstallException r0 = new com.google.android.play.core.splitinstall.SplitInstallException
            r1 = r0
            r2 = -5
            r1.<init>(r2)
            com.google.android.play.core.tasks.d r0 = com.google.android.play.core.tasks.C15182f.m9329a(r0)
            return r0
        L24:
            r0 = r7
            java.util.List<java.util.Locale> r0 = r0.f54951b
            r8 = r0
            r0 = r6
            com.google.android.play.core.splitinstall.ae r0 = r0.f54940c
            java.util.Set r0 = r0.m9399b()
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L38
            goto L73
        L38:
            java.util.HashSet r0 = new java.util.HashSet
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r8
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
        L48:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L68
            r0 = r10
            r1 = r8
            java.lang.Object r1 = r1.next()
            java.util.Locale r1 = (java.util.Locale) r1
            java.lang.String r1 = r1.getLanguage()
            boolean r0 = r0.add(r1)
            goto L48
        L68:
            r0 = r9
            r1 = r10
            boolean r0 = r0.containsAll(r1)
            if (r0 == 0) goto Lbc
        L73:
            r0 = r7
            java.util.List<java.lang.String> r0 = r0.f54950a
            r10 = r0
            r0 = r6
            com.google.android.play.core.splitinstall.ae r0 = r0.f54940c
            java.util.Set r0 = r0.m9401a()
            r1 = r10
            boolean r0 = r0.containsAll(r1)
            if (r0 == 0) goto Lbc
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 21
            if (r0 < r1) goto La3
            r0 = r7
            java.util.List<java.lang.String> r0 = r0.f54950a
            r1 = r6
            com.google.android.play.core.splitinstall.o r1 = r1.f54941d
            java.util.Set r1 = r1.m9349a()
            boolean r0 = java.util.Collections.disjoint(r0, r1)
            if (r0 == 0) goto Lbc
        La3:
            r0 = r6
            android.os.Handler r0 = r0.f54942e
            com.google.android.play.core.splitinstall.ai r1 = new com.google.android.play.core.splitinstall.ai
            r2 = r1
            r3 = r6
            r4 = r7
            r2.<init>(r3, r4)
            boolean r0 = r0.post(r1)
            r0 = 0
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            com.google.android.play.core.tasks.d r0 = com.google.android.play.core.tasks.C15182f.m9328a(r0)
            return r0
        Lbc:
            r0 = r6
            com.google.android.play.core.splitinstall.n r0 = r0.f54939b
            r1 = r7
            java.util.List<java.lang.String> r1 = r1.f54950a
            r2 = r7
            java.util.List<java.util.Locale> r2 = r2.f54951b
            java.util.List r2 = m9388a(r2)
            com.google.android.play.core.tasks.d r0 = r0.m9353a(r1, r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.splitinstall.C15145ak.mo9338a(com.google.android.play.core.splitinstall.b):com.google.android.play.core.tasks.d");
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final Set<String> mo9340a() {
        Set<String> m9399b = this.f54940c.m9399b();
        Set<String> set = m9399b;
        if (m9399b == null) {
            set = Collections.emptySet();
        }
        return set;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15123a
    /* renamed from: a */
    public final boolean mo9337a(AbstractC15152c abstractC15152c, Activity activity, int i) throws IntentSender.SendIntentException {
        C15144aj c15144aj = new C15144aj(activity);
        if (abstractC15152c.mo9380b() != 8 || abstractC15152c.mo9376h() == null) {
            return false;
        }
        c15144aj.mo9389a(abstractC15152c.mo9376h().getIntentSender(), i);
        return true;
    }
}
