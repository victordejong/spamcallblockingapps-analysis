package p1727n3.p1751c0;

import android.content.Context;
import java.io.File;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import p1727n3.p1751c0.AbstractC25677q;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
/* renamed from: n3.c0.h */
/* loaded from: classes-dex2jar.jar:n3/c0/h.class */
public class C25651h {

    /* renamed from: a */
    public final AbstractC26148c.AbstractC26151c f71845a;

    /* renamed from: b */
    public final Context f71846b;

    /* renamed from: c */
    public final String f71847c;

    /* renamed from: d */
    public final AbstractC25677q.C25681d f71848d;

    /* renamed from: e */
    public final List<AbstractC25677q.AbstractC25679b> f71849e;

    /* renamed from: f */
    public final List<Object> f71850f = Collections.emptyList();

    /* renamed from: g */
    public final boolean f71851g;

    /* renamed from: h */
    public final AbstractC25677q.EnumC25680c f71852h;

    /* renamed from: i */
    public final Executor f71853i;

    /* renamed from: j */
    public final Executor f71854j;

    /* renamed from: k */
    public final boolean f71855k;

    /* renamed from: l */
    public final boolean f71856l;

    public C25651h(Context context, String str, AbstractC26148c.AbstractC26151c abstractC26151c, AbstractC25677q.C25681d c25681d, List list, boolean z, AbstractC25677q.EnumC25680c enumC25680c, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set set, String str2, File file, Callable callable, List list2) {
        this.f71845a = abstractC26151c;
        this.f71846b = context;
        this.f71847c = str;
        this.f71848d = c25681d;
        this.f71849e = list;
        this.f71851g = z;
        this.f71852h = enumC25680c;
        this.f71853i = executor;
        this.f71854j = executor2;
        this.f71855k = z3;
        this.f71856l = z4;
    }

    /* renamed from: a */
    public boolean m3093a(int i, int i2) {
        boolean z = true;
        if (!(i > i2) || !this.f71856l) {
            if (!this.f71855k) {
                z = false;
            }
            return z;
        }
        return false;
    }
}
