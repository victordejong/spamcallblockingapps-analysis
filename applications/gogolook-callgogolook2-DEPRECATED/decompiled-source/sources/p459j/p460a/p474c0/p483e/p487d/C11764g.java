package p459j.p460a.p474c0.p483e.p487d;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import gogolook.callgogolook2.p074ad.AdRequestingRepo;
import p459j.p460a.p474c0.p483e.p485b.C11731b;
import p459j.p460a.p474c0.p483e.p485b.C11740f;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.e.d.g */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/g.class */
public final class C11764g extends ViewModelProvider.NewInstanceFactory {

    /* renamed from: a */
    public final C11740f f26400a;

    /* renamed from: b */
    public final C11731b f26401b;

    /* renamed from: c */
    public final AdRequestingRepo f26402c;

    public C11764g(C11740f fVar, C11731b bVar, AdRequestingRepo adRequestingRepo) {
        C15149k.m377b(fVar, "scanSmsUrlUseCase");
        C15149k.m377b(bVar, "getSmsUrlScanHistoryByDayUseCase");
        C15149k.m377b(adRequestingRepo, "adRepo");
        this.f26400a = fVar;
        this.f26401b = bVar;
        this.f26402c = adRequestingRepo;
    }

    @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
    public <T extends ViewModel> T create(Class<T> cls) {
        C15149k.m377b(cls, "modelClass");
        if (cls.isAssignableFrom(C11757e.class)) {
            return new C11757e(this.f26400a, this.f26401b, this.f26402c);
        }
        throw new IllegalArgumentException("Unknown ViewModel (" + cls.getName() + ") class");
    }
}
