package com.bumptech.glide.load.c.b;

import android.content.Context;
import com.bumptech.glide.i.e;
import com.bumptech.glide.load.a.f;
import com.bumptech.glide.load.c.c;
import com.bumptech.glide.load.c.d;
import com.bumptech.glide.load.c.i;
import com.bumptech.glide.load.c.j;
import com.bumptech.glide.load.c.k;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/a.class */
public final class a implements j<d, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final i<d, d> f3559a;

    /* renamed from: com.bumptech.glide.load.c.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/a$a.class */
    public static final class C0102a implements k<d, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final i<d, d> f3560a = new i<>(500);

        @Override // com.bumptech.glide.load.c.k
        public final j<d, InputStream> a(Context context, c cVar) {
            return new a(this.f3560a);
        }
    }

    public a() {
        this(null);
    }

    public a(i<d, d> iVar) {
        this.f3559a = iVar;
    }

    @Override // com.bumptech.glide.load.c.j
    public final /* synthetic */ com.bumptech.glide.load.a.c<InputStream> a(d dVar, int i, int i2) {
        d dVar2 = dVar;
        d dVar3 = dVar2;
        if (this.f3559a != null) {
            i<d, d> iVar = this.f3559a;
            i.a<d> a2 = i.a.a(dVar2);
            d b2 = iVar.f3575a.b((e<i.a<d>, d>) a2);
            a2.a();
            dVar3 = b2;
            if (dVar3 == null) {
                i<d, d> iVar2 = this.f3559a;
                iVar2.f3575a.b(i.a.a(dVar2), dVar2);
                dVar3 = dVar2;
            }
        }
        return new f(dVar3);
    }
}
