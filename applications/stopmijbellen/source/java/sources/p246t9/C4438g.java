package p246t9;

import java.util.regex.Pattern;
import javax.annotation.Nullable;
import p011aa.AbstractC0055h;
import p204p9.AbstractC4096d0;
import p204p9.C4127u;
/* renamed from: t9.g */
/* loaded from: classes2-dex2jar.jar:t9/g.class */
public final class C4438g extends AbstractC4096d0 {
    @Nullable

    /* renamed from: a */
    public final String f13800a;

    /* renamed from: b */
    public final long f13801b;

    /* renamed from: c */
    public final AbstractC0055h f13802c;

    public C4438g(@Nullable String str, long j, AbstractC0055h abstractC0055h) {
        this.f13800a = str;
        this.f13801b = j;
        this.f13802c = abstractC0055h;
    }

    @Override // p204p9.AbstractC4096d0
    /* renamed from: d */
    public long mo925d() {
        return this.f13801b;
    }

    @Override // p204p9.AbstractC4096d0
    /* renamed from: k */
    public C4127u mo924k() {
        C4127u c4127u;
        String str = this.f13800a;
        if (str != null) {
            Pattern pattern = C4127u.f12972b;
            try {
                c4127u = C4127u.m1369a(str);
            } catch (IllegalArgumentException e) {
            }
            return c4127u;
        }
        c4127u = null;
        return c4127u;
    }

    @Override // p204p9.AbstractC4096d0
    /* renamed from: l */
    public AbstractC0055h mo923l() {
        return this.f13802c;
    }
}
