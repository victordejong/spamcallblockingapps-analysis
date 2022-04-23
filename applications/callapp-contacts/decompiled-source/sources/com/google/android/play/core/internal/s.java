package com.google.android.play.core.internal;

import android.content.Intent;
import android.util.Log;
import com.google.android.play.core.splitcompat.a;
import com.google.android.play.core.splitcompat.q;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/s.class */
final class s implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f31387a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.splitinstall.s f31388b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ t f31389c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(t tVar, List list, com.google.android.play.core.splitinstall.s sVar) {
        this.f31389c = tVar;
        this.f31387a = list;
        this.f31388b = sVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            v vVar = this.f31389c.f31391b;
            Iterator it2 = this.f31387a.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                }
                if (!vVar.f31396a.a(((Intent) it2.next()).getStringExtra("split_id")).exists()) {
                    z = false;
                    break;
                }
            }
            if (z) {
                t tVar = this.f31389c;
                com.google.android.play.core.splitinstall.s sVar = this.f31388b;
                try {
                    if (!a.c(q.a(tVar.f31390a))) {
                        Log.e("SplitCompat", "Emulating splits failed.");
                        sVar.a(-12);
                        return;
                    }
                    sVar.a();
                } catch (Exception e) {
                    Log.e("SplitCompat", "Error emulating splits.", e);
                    sVar.a(-12);
                }
            } else {
                t tVar2 = this.f31389c;
                List<Intent> list = this.f31387a;
                com.google.android.play.core.splitinstall.s sVar2 = this.f31388b;
                Integer a2 = tVar2.a(list);
                if (a2 == null) {
                    return;
                }
                if (a2.intValue() == 0) {
                    sVar2.b();
                } else {
                    sVar2.a(a2.intValue());
                }
            }
        } catch (Exception e2) {
            Log.e("SplitCompat", "Error checking verified files.", e2);
            this.f31388b.a(-11);
        }
    }
}
