package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/l.class */
public class l {

    /* renamed from: a  reason: collision with root package name */
    protected volatile p f38159a;

    /* renamed from: b  reason: collision with root package name */
    private d f38160b;

    /* renamed from: c  reason: collision with root package name */
    private f f38161c;

    /* renamed from: d  reason: collision with root package name */
    private volatile boolean f38162d;

    public final p a(p pVar) {
        if (this.f38159a == null) {
            synchronized (this) {
                if (this.f38159a == null) {
                    try {
                        if (this.f38160b != null) {
                            this.f38159a = (p) pVar.b().a(this.f38160b, this.f38161c);
                        } else {
                            this.f38159a = pVar;
                        }
                    } catch (IOException e) {
                    }
                }
            }
        }
        return this.f38159a;
    }

    public final int b() {
        return this.f38162d ? this.f38159a.f() : this.f38160b.a();
    }

    public final p b(p pVar) {
        p pVar2 = this.f38159a;
        this.f38159a = pVar;
        this.f38160b = null;
        this.f38162d = true;
        return pVar2;
    }
}
