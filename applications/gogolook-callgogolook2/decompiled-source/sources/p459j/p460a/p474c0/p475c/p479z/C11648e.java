package p459j.p460a.p474c0.p475c.p479z;

import androidx.work.Data;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.c.z.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/e.class */
public class C11648e extends AbstractC11671q {
    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11671q
    /* renamed from: a */
    public C11670p<?> mo8666a(int i) {
        if (i == 1) {
            return new C11683x(Data.MAX_DATA_BYTES, i, "DefaultImageCache");
        }
        if (i == 2) {
            return new C11683x(i, "AvatarImageCache");
        }
        if (i == 3) {
            return new C11670p<>(5, i, "VCardCache");
        }
        C12151d.m7005a("BugleMediaCacheManager: unsupported cache id " + i);
        return null;
    }
}
