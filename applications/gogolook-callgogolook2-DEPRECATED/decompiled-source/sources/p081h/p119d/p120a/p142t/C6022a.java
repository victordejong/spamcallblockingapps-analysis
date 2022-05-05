package p081h.p119d.p120a.p142t;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.t.a */
/* loaded from: classes-dex2jar.jar:h/d/a/t/a.class */
public class C6022a implements AbstractC6030g {

    /* renamed from: a */
    public final Set<AbstractC6031h> f15013a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    public boolean f15014b;

    /* renamed from: c */
    public boolean f15015c;

    /* renamed from: a */
    public void m24020a() {
        this.f15015c = true;
        for (AbstractC6031h hVar : C6096h.m23859a(this.f15013a)) {
            hVar.onDestroy();
        }
    }

    @Override // p081h.p119d.p120a.p142t.AbstractC6030g
    /* renamed from: a */
    public void mo24008a(AbstractC6031h hVar) {
        this.f15013a.add(hVar);
        if (this.f15015c) {
            hVar.onDestroy();
        } else if (this.f15014b) {
            hVar.onStart();
        } else {
            hVar.onStop();
        }
    }

    /* renamed from: b */
    public void m24019b() {
        this.f15014b = true;
        for (AbstractC6031h hVar : C6096h.m23859a(this.f15013a)) {
            hVar.onStart();
        }
    }

    /* renamed from: c */
    public void m24018c() {
        this.f15014b = false;
        for (AbstractC6031h hVar : C6096h.m23859a(this.f15013a)) {
            hVar.onStop();
        }
    }
}
