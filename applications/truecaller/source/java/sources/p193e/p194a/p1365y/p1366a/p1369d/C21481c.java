package p193e.p194a.p1365y.p1366a.p1369d;

import android.os.Bundle;
import p193e.p194a.p1365y.p1366a.p1369d.AbstractC21484e;
import p193e.p194a.p1365y.p1389g.C21744b;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.y.a.d.c */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/d/c.class */
public final class C21481c implements AbstractC21480b {

    /* renamed from: a */
    public AbstractC21484e.AbstractC21485a f59990a;

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21480b
    /* renamed from: a */
    public void mo9685a(AbstractC21484e abstractC21484e) {
        l.e(abstractC21484e, "headerItemView");
        abstractC21484e.mo9675c3();
    }

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21480b
    /* renamed from: b */
    public void mo9684b(AbstractC21484e abstractC21484e, C21744b c21744b) {
        AbstractC21484e.AbstractC21485a abstractC21485a;
        l.e(abstractC21484e, "headerItemView");
        l.e(c21744b, "flashPopupHeaderItem");
        Bundle bundle = c21744b.f60560a;
        if (bundle != null) {
            String string = bundle.getString("image");
            if (string != null) {
                l.d(string, "it");
                if (!(!r.p(string))) {
                    string = null;
                }
                if (string != null) {
                    l.d(string, "imageUrl");
                    abstractC21484e.mo9673m2(string);
                }
            }
            String string2 = bundle.getString("video");
            if (string2 != null) {
                l.d(string2, "it");
                if (!(!r.p(string2))) {
                    string2 = null;
                }
                if (string2 != null && (abstractC21485a = this.f59990a) != null) {
                    l.d(string2, "videoUrl");
                    abstractC21484e.mo9672r1(string2, abstractC21485a);
                }
            }
            String string3 = bundle.getString("promo");
            if (string3 == null) {
                return;
            }
            l.d(string3, "it");
            String str = null;
            if (!r.p(string3)) {
                str = string3;
            }
            if (str == null) {
                return;
            }
            l.d(str, "it");
            abstractC21484e.mo9679B1(str);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21480b
    /* renamed from: c */
    public void mo9683c(AbstractC21484e abstractC21484e) {
        l.e(abstractC21484e, "headerItemView");
        AbstractC21484e.AbstractC21485a abstractC21485a = this.f59990a;
        if (abstractC21485a != null) {
            abstractC21484e.mo9678E2(abstractC21485a);
        }
    }

    @Override // p193e.p194a.p1365y.p1366a.p1369d.AbstractC21480b
    /* renamed from: d */
    public void mo9682d(AbstractC21484e.AbstractC21485a abstractC21485a) {
        this.f59990a = abstractC21485a;
    }
}
