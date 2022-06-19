package p193e.p194a.p294b.p295a.p312c.p313a.p314a;

import androidx.appcompat.widget.SearchView;
import p193e.p194a.p294b.p295a.p312c.p313a.AbstractC7695b;
import p193e.p194a.p294b.p355m.C8057d0;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.b.a.c.a.a.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/a/g.class */
public final class C7681g extends m implements l<String, s> {

    /* renamed from: b */
    public final /* synthetic */ C8057d0 f24071b;

    /* renamed from: c */
    public final /* synthetic */ C7676e f24072c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7681g(C8057d0 c8057d0, C7676e c7676e, SearchView searchView) {
        super(1);
        this.f24071b = c8057d0;
        this.f24072c = c7676e;
    }

    /* renamed from: d */
    public Object m29447d(Object obj) {
        String str = (String) obj;
        this.f24071b.f24835c.setOnTouchListener(new View$OnTouchListenerC7680f(this));
        AbstractC7695b abstractC7695b = this.f24072c.f24061b;
        if (abstractC7695b != null) {
            abstractC7695b.mo29424Dj(str);
            return s.a;
        }
        s1.z.c.l.l("categoryPresenter");
        throw null;
    }
}
