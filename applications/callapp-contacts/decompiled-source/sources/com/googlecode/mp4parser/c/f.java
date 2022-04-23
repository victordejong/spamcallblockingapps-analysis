package com.googlecode.mp4parser.c;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/c/f.class */
public abstract class f {
    public static f a(Class cls) {
        return System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik") ? new a(cls.getSimpleName()) : new d(cls.getSimpleName());
    }

    public abstract void a(String str);

    public abstract void b(String str);

    public abstract void c(String str);
}
