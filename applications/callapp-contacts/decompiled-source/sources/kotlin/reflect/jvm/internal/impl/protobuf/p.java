package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/p.class */
public interface p extends q {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/p$a.class */
    public interface a extends Cloneable, q {
        a b(e eVar, f fVar) throws IOException;

        p d();
    }

    void a(CodedOutputStream codedOutputStream) throws IOException;

    r<? extends p> b();

    int f();

    a h();

    a i();
}
