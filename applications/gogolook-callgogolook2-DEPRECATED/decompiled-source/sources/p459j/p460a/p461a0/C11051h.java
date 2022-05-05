package p459j.p460a.p461a0;

import gogolook.callgogolook2.gson.NumberInfo;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.a0.h */
/* loaded from: classes2-dex2jar.jar:j/a/a0/h.class */
public final class C11051h implements AbstractC11045d {

    /* renamed from: a */
    public final AbstractC11045d[] f24868a;

    public C11051h(AbstractC11045d... dVarArr) {
        C15149k.m377b(dVarArr, "observers");
        this.f24868a = dVarArr;
    }

    @Override // p459j.p460a.p461a0.AbstractC11045d
    /* renamed from: a */
    public void mo10358a(String str) {
        C15149k.m377b(str, "number");
        for (AbstractC11045d dVar : this.f24868a) {
            dVar.mo10358a(str);
        }
    }

    @Override // p459j.p460a.p461a0.AbstractC11045d
    /* renamed from: a */
    public void mo10357a(String str, NumberInfo.ErrorReason errorReason) {
        C15149k.m377b(str, "number");
        C15149k.m377b(errorReason, "reason");
        for (AbstractC11045d dVar : this.f24868a) {
            dVar.mo10357a(str, errorReason);
        }
    }

    @Override // p459j.p460a.p461a0.AbstractC11045d
    /* renamed from: a */
    public void mo5580a(String str, NumberInfo.InfoSource infoSource, boolean z) {
        for (AbstractC11045d dVar : this.f24868a) {
            dVar.mo5580a(str, infoSource, z);
        }
    }

    @Override // p459j.p460a.p461a0.AbstractC11045d
    /* renamed from: a */
    public void mo10356a(String str, NumberInfo numberInfo) {
        C15149k.m377b(str, "number");
        C15149k.m377b(numberInfo, "numberInfo");
        for (AbstractC11045d dVar : this.f24868a) {
            dVar.mo10356a(str, numberInfo);
        }
    }

    @Override // p459j.p460a.p461a0.AbstractC11045d
    /* renamed from: b */
    public void mo10355b(String str) {
        C15149k.m377b(str, "number");
        for (AbstractC11045d dVar : this.f24868a) {
            dVar.mo10355b(str);
        }
    }
}
