package com.hiya.stingray.p000ui.p002w;

import com.hiya.stingray.s.h1.d;
import com.hiya.stingray.s.h1.i;
import java.util.List;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.w.l$a */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/w/l$a.class */
public final class l$a {

    /* renamed from: a */
    private final List<d> f176a;

    /* renamed from: b */
    private final boolean f177b;

    /* renamed from: c */
    private final i f178c;

    public l$a(List<d> list, boolean z, i iVar) {
        k.g(iVar, "place");
        this.f176a = list;
        this.f177b = z;
        this.f178c = iVar;
    }

    /* renamed from: a */
    public final List<d> m1074a() {
        return this.f176a;
    }

    /* renamed from: b */
    public final i m1073b() {
        return this.f178c;
    }

    /* renamed from: c */
    public final boolean m1072c() {
        return this.f177b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l$a)) {
            return false;
        }
        l$a l_a = (l$a) obj;
        return k.b(this.f176a, l_a.f176a) && this.f177b == l_a.f177b && k.b(this.f178c, l_a.f178c);
    }

    public int hashCode() {
        List<d> list = this.f176a;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        boolean z = this.f177b;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        i iVar = this.f178c;
        if (iVar != null) {
            i = iVar.hashCode();
        }
        return (((hashCode * 31) + i2) * 31) + i;
    }

    public String toString() {
        return "BusinessesQueryResult(businesses=" + this.f176a + ", queryChanged=" + this.f177b + ", place=" + this.f178c + ")";
    }
}
