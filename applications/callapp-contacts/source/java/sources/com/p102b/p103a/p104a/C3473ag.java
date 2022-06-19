package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.C16246b;
import java.util.List;
/* renamed from: com.b.a.a.ag */
/* loaded from: classes-dex2jar.jar:com/b/a/a/ag.class */
public class C3473ag extends C16246b {

    /* renamed from: a */
    private C3508x f13153a;

    public C3473ag() {
        super("trak");
    }

    /* renamed from: a */
    public final C3474ah m37908a() {
        for (AbstractC3476b abstractC3476b : mo7491b()) {
            if (abstractC3476b instanceof C3474ah) {
                return (C3474ah) abstractC3476b;
            }
        }
        return null;
    }

    @Override // com.googlecode.mp4parser.C16292d
    /* renamed from: a */
    public final void mo7492a(List<AbstractC3476b> list) {
        super.mo7492a(list);
        this.f13153a = null;
    }

    /* renamed from: c */
    public final C3508x m37907c() {
        C3500q m37885a;
        C3508x c3508x = this.f13153a;
        if (c3508x != null) {
            return c3508x;
        }
        C3498o m37906d = m37906d();
        if (m37906d == null || (m37885a = m37906d.m37885a()) == null) {
            return null;
        }
        C3508x m37878a = m37885a.m37878a();
        this.f13153a = m37878a;
        return m37878a;
    }

    /* renamed from: d */
    public final C3498o m37906d() {
        for (AbstractC3476b abstractC3476b : mo7491b()) {
            if (abstractC3476b instanceof C3498o) {
                return (C3498o) abstractC3476b;
            }
        }
        return null;
    }
}
