package com.dropbox.core.p265v2;

import com.dropbox.core.C8573e;
import com.dropbox.core.C8577h;
import com.dropbox.core.C8600i;
import com.dropbox.core.DbxException;
import com.dropbox.core.http.AbstractC8582a;
import com.dropbox.core.oauth.C8624a;
import com.dropbox.core.oauth.C8627c;
import com.dropbox.core.p265v2.p268c.C8688a;
import java.util.List;
import java.util.Objects;
/* renamed from: com.dropbox.core.v2.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/a.class */
public final class C8656a extends C8683b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/a$a.class */
    public static final class C8657a extends AbstractC8685c {

        /* renamed from: c */
        private final C8624a f30741c;

        C8657a(C8577h c8577h, C8624a c8624a, C8573e c8573e, String str, C8688a c8688a) {
            super(c8577h, c8573e, str, c8688a);
            Objects.requireNonNull(c8624a, "credential");
            this.f30741c = c8624a;
        }

        @Override // com.dropbox.core.p265v2.AbstractC8685c
        /* renamed from: a */
        public final C8627c mo25180a() throws DbxException {
            this.f30741c.m25253a(m25169d(), C8573e.f30530a);
            return new C8627c(this.f30741c.f30624a, this.f30741c.f30625b.longValue());
        }

        @Override // com.dropbox.core.p265v2.AbstractC8685c
        /* renamed from: a */
        protected final void mo25174a(List<AbstractC8582a.C8583a> list) {
            C8600i.m25270a(list);
            C8600i.m25266a(list, this.f30741c.f30624a);
        }

        @Override // com.dropbox.core.p265v2.AbstractC8685c
        /* renamed from: b */
        final boolean mo25173b() {
            return this.f30741c.f30626c != null;
        }

        @Override // com.dropbox.core.p265v2.AbstractC8685c
        /* renamed from: c */
        final boolean mo25170c() {
            if (mo25173b()) {
                C8624a c8624a = this.f30741c;
                return c8624a.f30625b != null && ((System.currentTimeMillis() + 300000) > c8624a.f30625b.longValue() ? 1 : ((System.currentTimeMillis() + 300000) == c8624a.f30625b.longValue() ? 0 : -1)) > 0;
            }
            return false;
        }
    }

    public C8656a(C8577h c8577h, C8624a c8624a) {
        this(c8577h, c8624a, C8573e.f30530a, null, null);
    }

    private C8656a(C8577h c8577h, C8624a c8624a, C8573e c8573e, String str, C8688a c8688a) {
        super(new C8657a(c8577h, c8624a, c8573e, str, c8688a));
    }

    public C8656a(C8577h c8577h, String str) {
        this(c8577h, str, C8573e.f30530a, null);
    }

    public C8656a(C8577h c8577h, String str, C8573e c8573e) {
        this(c8577h, str, c8573e, null);
    }

    public C8656a(C8577h c8577h, String str, C8573e c8573e, String str2) {
        this(c8577h, new C8624a(str), c8573e, str2, null);
    }

    public C8656a(C8577h c8577h, String str, String str2) {
        this(c8577h, str, C8573e.f30530a, str2);
    }

    C8656a(AbstractC8685c abstractC8685c) {
        super(abstractC8685c);
    }
}
