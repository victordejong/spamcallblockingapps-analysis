package p1727n3.p1874y.p1876b.p1877a.p1891r0;

import java.util.regex.Pattern;
import p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.r0.e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/r0/e.class */
public final /* synthetic */ class C27306e implements C27309h.AbstractC27316g {

    /* renamed from: a */
    public static final C27309h.AbstractC27316g f76822a = new C27306e();

    @Override // p1727n3.p1874y.p1876b.p1877a.p1891r0.C27309h.AbstractC27316g
    /* renamed from: a */
    public int mo573a(Object obj) {
        Pattern pattern = C27309h.f76825a;
        String str = ((C27302a) obj).f76808a;
        return (str.startsWith("OMX.google") || str.startsWith("c2.android")) ? 1 : (C27445x.f77229a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }
}
