package com.mglab.scm.visual;

import android.content.Context;
import android.widget.ListView;
import ba.C0748b;
import java.util.Date;
import java.util.Objects;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2779g;
import p117h8.C3026c;
import p117h8.C3036l;
import p117h8.C3043q;
import p117h8.C3050w;
import p149k8.C3382a;
import p149k8.C3387c0;
import p182n8.C3795d;
/* renamed from: com.mglab.scm.visual.b */
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/b.class */
public final /* synthetic */ class C2106b implements View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ int f7642a;

    /* renamed from: b */
    public final /* synthetic */ C2107c f7643b;

    /* renamed from: c */
    public final /* synthetic */ int f7644c;

    public /* synthetic */ C2106b(C2107c c2107c, int i, int i2) {
        this.f7642a = i2;
        this.f7643b = c2107c;
        this.f7644c = i;
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public final void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        switch (this.f7642a) {
            case 0:
                C2107c c2107c = this.f7643b;
                int i = this.f7644c;
                Objects.requireNonNull(c2107c);
                ListView listView = (ListView) view$OnClickListenerC2530g.findViewById(2131296733);
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                while (i2 < listView.getCount()) {
                    int i5 = i3;
                    if (((ContactItem) listView.getItemAtPosition(i2)).f7359e) {
                        i5 = i3 + 1;
                        i4 = i2;
                    }
                    i2++;
                    i3 = i5;
                }
                if (i3 == 1) {
                    new C2107c(c2107c.f7646a, c2107c.f7647b).m3928d(i, new CallItem(C3043q.m2710l(((ContactItem) listView.getItemAtPosition(i4)).f7356b), ((ContactItem) listView.getItemAtPosition(i4)).f7357c, new Date(), 0, ((ContactItem) listView.getItemAtPosition(i4)).f7358d));
                    return;
                }
                int i6 = 0;
                int i7 = 0;
                while (true) {
                    int i8 = i7;
                    if (i6 >= listView.getCount()) {
                        Context context = c2107c.f7646a;
                        C2779g.m3121L(context, null, context.getString(2131820741, String.valueOf(i8)));
                        C0748b.m7409b().m7404g(new C3382a(1));
                        C0748b.m7409b().m7404g(new C3387c0(1));
                        return;
                    }
                    int i9 = i8;
                    if (((ContactItem) listView.getItemAtPosition(i6)).f7359e) {
                        String str = ((ContactItem) listView.getItemAtPosition(i6)).f7357c;
                        String str2 = ((ContactItem) listView.getItemAtPosition(i6)).f7356b;
                        String str3 = ((ContactItem) listView.getItemAtPosition(i6)).f7358d;
                        int i10 = i8;
                        if (i == 2) {
                            i10 = i8;
                            if (!C3043q.m2719c(str2)) {
                                i10 = i8;
                                if (!C3795d.m1789d(str2)) {
                                    C3026c c3026c = new C3026c();
                                    c3026c.f10151d = str;
                                    c3026c.f10150c = C3043q.m2710l(str2);
                                    c3026c.f10152e = str3;
                                    c3026c.f10153f = 0;
                                    c3026c.mo7416a();
                                    i10 = i8 + 1;
                                }
                            }
                        }
                        i9 = i10;
                        if (i == 1) {
                            i9 = i10;
                            if (!C3043q.m2713i(str2)) {
                                i9 = i10;
                                if (!C3795d.m1789d(str2)) {
                                    C3050w c3050w = new C3050w();
                                    c3050w.f10376d = str;
                                    c3050w.f10375c = C3043q.m2710l(str2);
                                    c3050w.f10377e = str3;
                                    c3050w.f10378f = 0;
                                    c3050w.mo7416a();
                                    i9 = i10 + 1;
                                }
                            }
                        }
                    }
                    i6++;
                    i7 = i9;
                }
            default:
                C2107c c2107c2 = this.f7643b;
                int i11 = this.f7644c;
                Objects.requireNonNull(c2107c2);
                ListView listView2 = (ListView) view$OnClickListenerC2530g.findViewById(2131296733);
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                while (true) {
                    int i15 = i14;
                    if (i12 < listView2.getCount()) {
                        int i16 = i13;
                        int i17 = i15;
                        if (listView2.getItemAtPosition(i12).getClass().getName().equals(CallItem.class.getName())) {
                            i16 = i13;
                            i17 = i15;
                            if (((CallItem) listView2.getItemAtPosition(i12)).f7344e) {
                                i16 = i13 + 1;
                                i17 = i12;
                            }
                        }
                        i12++;
                        i13 = i16;
                        i14 = i17;
                    } else if (i13 == 1) {
                        new C2107c(c2107c2.f7646a, c2107c2.f7647b).m3928d(i11, (CallItem) listView2.getItemAtPosition(i15));
                        return;
                    } else {
                        int i18 = 0;
                        int i19 = 0;
                        while (true) {
                            int i20 = i19;
                            if (i18 >= listView2.getCount()) {
                                Context context2 = c2107c2.f7646a;
                                C2779g.m3121L(context2, null, context2.getString(2131820741, String.valueOf(i20)));
                                C0748b.m7409b().m7404g(new C3382a(1));
                                C0748b.m7409b().m7404g(new C3387c0(1));
                                return;
                            }
                            int i21 = i20;
                            if (listView2.getItemAtPosition(i18).getClass().getName().equals(CallItem.class.getName())) {
                                i21 = i20;
                                if (((CallItem) listView2.getItemAtPosition(i18)).f7344e) {
                                    String m3955d = ((CallItem) listView2.getItemAtPosition(i18)).m3955d();
                                    String m3954e = ((CallItem) listView2.getItemAtPosition(i18)).m3954e();
                                    CallItem callItem = (CallItem) listView2.getItemAtPosition(i18);
                                    C3036l c3036l = callItem.f7343d;
                                    String str4 = c3036l == null ? callItem.f7350k : c3036l.f10280v;
                                    int i22 = i20;
                                    if (i11 == 2) {
                                        i22 = i20;
                                        if (!C3043q.m2719c(m3954e)) {
                                            i22 = i20;
                                            if (!C3795d.m1789d(m3954e)) {
                                                C3026c c3026c2 = new C3026c();
                                                c3026c2.f10151d = m3955d;
                                                c3026c2.f10150c = m3954e;
                                                c3026c2.f10152e = str4;
                                                c3026c2.f10153f = 0;
                                                c3026c2.mo7416a();
                                                i22 = i20 + 1;
                                            }
                                        }
                                    }
                                    i21 = i22;
                                    if (i11 == 1) {
                                        i21 = i22;
                                        if (!C3043q.m2713i(m3954e)) {
                                            i21 = i22;
                                            if (!C3795d.m1789d(m3954e)) {
                                                C3050w c3050w2 = new C3050w();
                                                c3050w2.f10376d = m3955d;
                                                c3050w2.f10375c = m3954e;
                                                c3050w2.f10377e = str4;
                                                c3050w2.f10378f = 0;
                                                c3050w2.mo7416a();
                                                i21 = i22 + 1;
                                            }
                                        }
                                    }
                                }
                            }
                            i18++;
                            i19 = i21;
                        }
                    }
                }
        }
    }
}
