package p033i.p034a.p046d.p050e.p054e0;

import java.util.regex.Pattern;
import p033i.p034a.p046d.p050e.p052b0.EnumC0372d;
/* renamed from: i.a.d.e.e0.f */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/e0/f.class */
public abstract class AbstractC0388f {
    /* renamed from: a */
    public boolean m268a() {
        return m265d() != null;
    }

    /* renamed from: b */
    public boolean m267b() {
        return m264e() != null;
    }

    /* renamed from: c */
    public Pattern m266c() {
        return m265d() == null ? null : Pattern.compile(m265d());
    }

    /* renamed from: d */
    public abstract String m265d();

    /* renamed from: e */
    public abstract EnumC0372d m264e();
}
