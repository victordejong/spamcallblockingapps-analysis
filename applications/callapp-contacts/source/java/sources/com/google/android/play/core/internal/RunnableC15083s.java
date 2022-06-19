package com.google.android.play.core.internal;

import android.content.Intent;
import android.util.Log;
import com.google.android.play.core.splitcompat.C15105a;
import com.google.android.play.core.splitcompat.C15121q;
import com.google.android.play.core.splitinstall.AbstractC15169s;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.s */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/s.class */
final class RunnableC15083s implements Runnable {

    /* renamed from: a */
    final /* synthetic */ List f54799a;

    /* renamed from: b */
    final /* synthetic */ AbstractC15169s f54800b;

    /* renamed from: c */
    final /* synthetic */ C15084t f54801c;

    public RunnableC15083s(C15084t c15084t, List list, AbstractC15169s abstractC15169s) {
        this.f54801c = c15084t;
        this.f54799a = list;
        this.f54800b = abstractC15169s;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            C15086v c15086v = this.f54801c.f54803b;
            Iterator it2 = this.f54799a.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                }
                if (!c15086v.f54809a.m9445a(((Intent) it2.next()).getStringExtra("split_id")).exists()) {
                    z = false;
                    break;
                }
            }
            if (!z) {
                C15084t c15084t = this.f54801c;
                List<Intent> list = this.f54799a;
                AbstractC15169s abstractC15169s = this.f54800b;
                Integer m9489a = c15084t.m9489a(list);
                if (m9489a == null) {
                    return;
                }
                if (m9489a.intValue() == 0) {
                    abstractC15169s.mo9345b();
                    return;
                } else {
                    abstractC15169s.mo9346a(m9489a.intValue());
                    return;
                }
            }
            C15084t c15084t2 = this.f54801c;
            AbstractC15169s abstractC15169s2 = this.f54800b;
            try {
                if (C15105a.m9452c(C15121q.m9423a(c15084t2.f54802a))) {
                    abstractC15169s2.mo9347a();
                    return;
                }
                Log.e("SplitCompat", "Emulating splits failed.");
                abstractC15169s2.mo9346a(-12);
            } catch (Exception e) {
                Log.e("SplitCompat", "Error emulating splits.", e);
                abstractC15169s2.mo9346a(-12);
            }
        } catch (Exception e2) {
            Log.e("SplitCompat", "Error checking verified files.", e2);
            this.f54800b.mo9346a(-11);
        }
    }
}
