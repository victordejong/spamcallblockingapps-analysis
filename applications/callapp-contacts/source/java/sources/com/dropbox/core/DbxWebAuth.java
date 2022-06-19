package com.dropbox.core;

import com.dropbox.core.C8600i;
import com.dropbox.core.http.AbstractC8582a;
import com.dropbox.core.util.C8638f;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth.class */
public final class DbxWebAuth {

    /* renamed from: d */
    private static final SecureRandom f30411d = new SecureRandom();

    /* renamed from: e */
    private static final int f30412e = C8638f.m25212c(new byte[16]).length();

    /* renamed from: a */
    final C8577h f30413a;

    /* renamed from: b */
    final C8570b f30414b;

    /* renamed from: c */
    final C8541a f30415c;

    /* renamed from: com.dropbox.core.DbxWebAuth$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$1.class */
    public final class C85401 extends C8600i.AbstractC8603b<C8571c> {

        /* renamed from: a */
        final /* synthetic */ String f30416a;

        C85401(String str) {
            DbxWebAuth.this = r4;
            this.f30416a = str;
        }

        @Override // com.dropbox.core.C8600i.AbstractC8603b
        /* renamed from: a */
        public final /* synthetic */ C8571c mo25211a(AbstractC8582a.C8584b c8584b) throws DbxException {
            if (c8584b.f30566a == 200) {
                C8571c c8571c = (C8571c) C8600i.m25276a(C8571c.f30512j, c8584b);
                String str = this.f30416a;
                if (c8571c.f30521g != null) {
                    throw new IllegalStateException("Already have URL state.");
                }
                C8571c c8571c2 = new C8571c(c8571c.f30515a, c8571c.f30516b, c8571c.f30517c, c8571c.f30518d, c8571c.f30520f, c8571c.f30519e, str, c8571c.f30523i);
                c8571c2.f30522h = c8571c.f30522h;
                return c8571c2;
            }
            throw C8600i.m25279a(c8584b);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$BadRequestException.class */
    public static final class BadRequestException extends Exception {
        public BadRequestException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$BadStateException.class */
    public static final class BadStateException extends Exception {
        public BadStateException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$CsrfException.class */
    public static final class CsrfException extends Exception {
        public CsrfException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$Exception.class */
    public static abstract class Exception extends Exception {
        public Exception(String str) {
            super(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$NotApprovedException.class */
    public static final class NotApprovedException extends Exception {
        public NotApprovedException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$ProviderException.class */
    public static final class ProviderException extends Exception {
        public ProviderException(String str) {
            super(str);
        }
    }

    /* renamed from: com.dropbox.core.DbxWebAuth$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$a.class */
    public static final class C8541a {

        /* renamed from: a */
        private static final Charset f30418a = Charset.forName("UTF-8");

        /* renamed from: b */
        private final String f30419b;

        /* renamed from: c */
        private final String f30420c;

        /* renamed from: d */
        private final String f30421d;

        /* renamed from: e */
        private final Boolean f30422e;

        /* renamed from: f */
        private final Boolean f30423f;

        /* renamed from: g */
        private final AbstractC8618k f30424g;

        /* renamed from: h */
        private final EnumC8623o f30425h;

        /* renamed from: i */
        private final String f30426i;

        /* renamed from: j */
        private final EnumC8620m f30427j;

        /* renamed from: com.dropbox.core.DbxWebAuth$a$a */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$a$a.class */
        public static final class C8542a {

            /* renamed from: a */
            String f30428a;

            /* renamed from: b */
            String f30429b;

            /* renamed from: c */
            String f30430c;

            /* renamed from: d */
            Boolean f30431d;

            /* renamed from: e */
            Boolean f30432e;

            /* renamed from: f */
            AbstractC8618k f30433f;

            /* renamed from: g */
            EnumC8623o f30434g;

            /* renamed from: h */
            String f30435h;

            /* renamed from: i */
            EnumC8620m f30436i;

            private C8542a() {
                this(null, null, null, null, null, null, null, null, null);
            }

            /* synthetic */ C8542a(C85401 c85401) {
                this();
            }

            private C8542a(String str, String str2, String str3, Boolean bool, Boolean bool2, AbstractC8618k abstractC8618k, EnumC8623o enumC8623o, String str4, EnumC8620m enumC8620m) {
                this.f30428a = str;
                this.f30429b = str2;
                this.f30430c = str3;
                this.f30431d = bool;
                this.f30432e = bool2;
                this.f30433f = abstractC8618k;
                this.f30434g = enumC8623o;
                this.f30435h = str4;
                this.f30436i = enumC8620m;
            }

            /* synthetic */ C8542a(String str, String str2, String str3, Boolean bool, Boolean bool2, AbstractC8618k abstractC8618k, EnumC8623o enumC8623o, String str4, EnumC8620m enumC8620m, C85401 c85401) {
                this(str, str2, str3, bool, bool2, abstractC8618k, enumC8623o, str4, enumC8620m);
            }
        }

        private C8541a(String str, String str2, String str3, Boolean bool, Boolean bool2, AbstractC8618k abstractC8618k, EnumC8623o enumC8623o, String str4, EnumC8620m enumC8620m) {
            this.f30419b = str;
            this.f30420c = str2;
            this.f30421d = str3;
            this.f30422e = bool;
            this.f30423f = bool2;
            this.f30424g = abstractC8618k;
            this.f30425h = enumC8623o;
            this.f30426i = str4;
            this.f30427j = enumC8620m;
        }

        /* synthetic */ C8541a(String str, String str2, String str3, Boolean bool, Boolean bool2, AbstractC8618k abstractC8618k, EnumC8623o enumC8623o, String str4, EnumC8620m enumC8620m, C85401 c85401) {
            this(str, str2, str3, bool, bool2, abstractC8618k, enumC8623o, str4, enumC8620m);
        }

        /* renamed from: a */
        public static C8542a m25358a() {
            return new C8542a(null);
        }
    }

    public DbxWebAuth(C8577h c8577h, C8570b c8570b) {
        Objects.requireNonNull(c8577h, "requestConfig");
        Objects.requireNonNull(c8570b, "appInfo");
        this.f30413a = c8577h;
        this.f30414b = c8570b;
        this.f30415c = null;
    }

    @Deprecated
    public DbxWebAuth(C8577h c8577h, C8570b c8570b, String str, AbstractC8618k abstractC8618k) {
        Objects.requireNonNull(c8577h, "requestConfig");
        Objects.requireNonNull(c8570b, "appInfo");
        this.f30413a = c8577h;
        this.f30414b = c8570b;
        C8541a.C8542a m25358a = C8541a.m25358a();
        Objects.requireNonNull(str, "redirectUri");
        Objects.requireNonNull(abstractC8618k, "sessionStore");
        m25358a.f30428a = str;
        m25358a.f30433f = abstractC8618k;
        if (m25358a.f30428a != null || m25358a.f30429b == null) {
            if (m25358a.f30436i != null && m25358a.f30435h == null) {
                throw new IllegalArgumentException("If you are using includeGrantedScopes, you must ask for specific new scopes");
            }
            this.f30415c = new C8541a(m25358a.f30428a, m25358a.f30429b, m25358a.f30430c, m25358a.f30431d, m25358a.f30432e, m25358a.f30433f, m25358a.f30434g, m25358a.f30435h, m25358a.f30436i, null);
            return;
        }
        throw new IllegalStateException("Cannot specify a state without a redirect URI.");
    }
}
