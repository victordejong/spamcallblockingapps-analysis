package com.bumptech.glide.load.engine.p120b;

import com.bumptech.glide.load.engine.p120b.AbstractC3731a;
import java.io.File;
/* renamed from: com.bumptech.glide.load.engine.b.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/d.class */
public class C3738d implements AbstractC3731a.AbstractC3732a {

    /* renamed from: a */
    private final long f13924a;

    /* renamed from: b */
    private final AbstractC3741a f13925b;

    /* renamed from: com.bumptech.glide.load.engine.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/d$a.class */
    public interface AbstractC3741a {
        /* renamed from: a */
        File mo37432a();
    }

    public C3738d(AbstractC3741a abstractC3741a, long j) {
        this.f13924a = j;
        this.f13925b = abstractC3741a;
    }

    public C3738d(final String str, long j) {
        this(new AbstractC3741a() { // from class: com.bumptech.glide.load.engine.b.d.1
            @Override // com.bumptech.glide.load.engine.p120b.C3738d.AbstractC3741a
            /* renamed from: a */
            public final File mo37432a() {
                return new File(str);
            }
        }, j);
    }

    public C3738d(final String str, final String str2, long j) {
        this(new AbstractC3741a() { // from class: com.bumptech.glide.load.engine.b.d.2
            @Override // com.bumptech.glide.load.engine.p120b.C3738d.AbstractC3741a
            /* renamed from: a */
            public final File mo37432a() {
                return new File(str, str2);
            }
        }, j);
    }

    @Override // com.bumptech.glide.load.engine.p120b.AbstractC3731a.AbstractC3732a
    /* renamed from: a */
    public final AbstractC3731a mo37437a() {
        File mo37432a = this.f13925b.mo37432a();
        if (mo37432a == null) {
            return null;
        }
        if (!mo37432a.isDirectory() && !mo37432a.mkdirs()) {
            return null;
        }
        return C3742e.m37433a(mo37432a, this.f13924a);
    }
}
