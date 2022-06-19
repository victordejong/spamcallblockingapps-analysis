package com.callerid.block.fragment;

import android.os.Handler;
import android.os.Message;
import android.widget.ListAdapter;
import com.callerid.block.p034b.C0901h;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/callerid/block/fragment/a$j.class */
class a$j extends Handler {

    /* renamed from: a */
    private WeakReference<a> f4371a;

    private a$j(a aVar) {
        this.f4371a = new WeakReference<>(aVar);
    }

    /* synthetic */ a$j(a aVar, a$a a_a) {
        this(aVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        a aVar = this.f4371a.get();
        if (aVar != null) {
            int i = message.what;
            try {
                if (i == 666) {
                    a.E1(aVar);
                    a.R1(aVar).setVisibility(8);
                } else if (i != 777) {
                    if (i != 999 || a.h2(aVar) == null || a.h2(aVar).size() <= 0) {
                        return;
                    }
                    a.F1(aVar).clear();
                    a.F1(aVar).addAll(a.h2(aVar));
                    if (a.G1(aVar) != null) {
                        a.G1(aVar).m10597b(a.F1(aVar));
                        return;
                    }
                    a.H1(aVar, new C0901h(a.I1(aVar), a.F1(aVar)));
                    a.J1(aVar).setAdapter((ListAdapter) a.G1(aVar));
                } else {
                    if (a.a2(aVar) != null && a.a2(aVar).size() > 0) {
                        a.c2(aVar).setVisibility(8);
                        a.R1(aVar).setVisibility(0);
                        a.d2(aVar).clear();
                        a.d2(aVar).addAll(a.a2(aVar));
                    }
                    a.e2(aVar).m10607b(a.d2(aVar));
                    if (a.f2(aVar).getVisibility() != 8) {
                        return;
                    }
                    a.g2(aVar).setVisibility(0);
                    a.f2(aVar).setVisibility(0);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
