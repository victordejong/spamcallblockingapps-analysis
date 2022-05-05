package p459j.p618b.p619a.p620a.p621a;

import android.content.Context;
@Deprecated
/* renamed from: j.b.a.a.a.a */
/* loaded from: classes3-dex2jar.jar:j/b/a/a/a/a.class */
public abstract class AbstractC14689a extends AbstractC14693c<C14690b> {

    /* renamed from: d */
    public Context f32804d;

    /* renamed from: e */
    public int f32805e = -1710619;

    /* renamed from: f */
    public float f32806f = 0.5f;

    public AbstractC14689a(Context context) {
        this.f32804d = context;
    }

    /* renamed from: a */
    public Context m856a() {
        return this.f32804d;
    }

    /* renamed from: a */
    public void m855a(float f) {
        this.f32806f = f;
    }

    /* renamed from: a */
    public void onBindViewHolder(C14690b bVar, int i) {
        bVar.m846b(this.f32805e);
        bVar.m850a(this.f32806f);
        mo852b(bVar, i);
    }

    /* renamed from: b */
    public void m853b(int i) {
        this.f32805e = i;
    }

    /* renamed from: b */
    public abstract void mo852b(C14690b bVar, int i);
}
