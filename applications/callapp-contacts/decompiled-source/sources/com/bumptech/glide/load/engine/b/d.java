package com.bumptech.glide.load.engine.b;

import com.bumptech.glide.load.engine.b.a;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/d.class */
public class d implements a.AbstractC0146a {

    /* renamed from: a  reason: collision with root package name */
    private final long f7479a;

    /* renamed from: b  reason: collision with root package name */
    private final a f7480b;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/d$a.class */
    public interface a {
        File a();
    }

    public d(a aVar, long j) {
        this.f7479a = j;
        this.f7480b = aVar;
    }

    public d(final String str, long j) {
        this(new a() { // from class: com.bumptech.glide.load.engine.b.d.1
            @Override // com.bumptech.glide.load.engine.b.d.a
            public final File a() {
                return new File(str);
            }
        }, j);
    }

    public d(final String str, final String str2, long j) {
        this(new a() { // from class: com.bumptech.glide.load.engine.b.d.2
            @Override // com.bumptech.glide.load.engine.b.d.a
            public final File a() {
                return new File(str, str2);
            }
        }, j);
    }

    @Override // com.bumptech.glide.load.engine.b.a.AbstractC0146a
    public final com.bumptech.glide.load.engine.b.a a() {
        File a2 = this.f7480b.a();
        if (a2 == null) {
            return null;
        }
        if (a2.isDirectory() || a2.mkdirs()) {
            return e.a(a2, this.f7479a);
        }
        return null;
    }
}
