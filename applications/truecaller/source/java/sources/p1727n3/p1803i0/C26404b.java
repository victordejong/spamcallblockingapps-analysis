package p1727n3.p1803i0;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
/* renamed from: n3.i0.b */
/* loaded from: classes-dex2jar.jar:n3/i0/b.class */
public class C26404b extends ObjectInputStream {
    public C26404b(AbstractC26405c abstractC26405c, InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.ObjectInputStream
    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
        Class<?> cls = Class.forName(objectStreamClass.getName(), false, C26404b.class.getClassLoader());
        return cls != null ? cls : super.resolveClass(objectStreamClass);
    }
}
