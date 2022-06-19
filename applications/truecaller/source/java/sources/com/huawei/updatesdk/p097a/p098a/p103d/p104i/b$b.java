package com.huawei.updatesdk.p097a.p098a.p103d.p104i;

import android.content.Context;
import com.huawei.updatesdk.p097a.p098a.p103d.C2521f;
import java.util.ArrayList;
import java.util.Set;
/* renamed from: com.huawei.updatesdk.a.a.d.i.b$b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/i/b$b.class */
public class b$b {

    /* renamed from: a */
    private final Context f8195a;

    /* renamed from: b */
    private boolean f8196b;

    /* renamed from: c */
    private Set<String> f8197c;

    /* renamed from: d */
    private String[] f8198d;

    /* renamed from: e */
    private boolean f8199e;

    public b$b(Context context) {
        this.f8195a = context;
    }

    /* renamed from: b */
    private String m36801b() {
        ArrayList arrayList = new ArrayList(C2526c.m36783c(this.f8195a));
        Set<String> set = this.f8197c;
        if (set != null) {
            for (String str : set) {
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        return this.f8199e ? C2521f.m36825a(C2526c.m36789a(arrayList, this.f8198d), ",") : C2521f.m36825a(arrayList, ",");
    }

    /* renamed from: a */
    public b$b m36802a(boolean z) {
        this.f8196b = z;
        return this;
    }

    /* renamed from: a */
    public b m36803a() {
        b bVar = new b((b$a) null);
        b.a(bVar, C2521f.m36823a(C2526c.m36774h(), ","));
        b.a(bVar, Integer.parseInt(C2526c.m36779e(this.f8195a)));
        b.b(bVar, m36801b());
        if (this.f8196b) {
            b.c(bVar, C2526c.m36799a(this.f8195a));
        }
        return bVar;
    }
}
