package com.dropbox.core;

import com.dropbox.core.http.a;
import com.dropbox.core.i;
import com.dropbox.core.util.f;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth.class */
public final class DbxWebAuth {

    /* renamed from: d  reason: collision with root package name */
    private static final SecureRandom f17681d = new SecureRandom();
    private static final int e = f.c(new byte[16]).length();

    /* renamed from: a  reason: collision with root package name */
    final h f17682a;

    /* renamed from: b  reason: collision with root package name */
    final b f17683b;

    /* renamed from: c  reason: collision with root package name */
    final a f17684c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.DbxWebAuth$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$1.class */
    public final class AnonymousClass1 extends i.b<c> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17685a;

        AnonymousClass1(String str) {
            this.f17685a = str;
        }

        @Override // com.dropbox.core.i.b
        public final /* synthetic */ c a(a.b bVar) throws DbxException {
            if (bVar.f17782a == 200) {
                c cVar = (c) i.a(c.j, bVar);
                String str = this.f17685a;
                if (cVar.g == null) {
                    c cVar2 = new c(cVar.f17744a, cVar.f17745b, cVar.f17746c, cVar.f17747d, cVar.f, cVar.e, str, cVar.i);
                    cVar2.h = cVar.h;
                    return cVar2;
                }
                throw new IllegalStateException("Already have URL state.");
            }
            throw i.a(bVar);
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

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final Charset f17687a = Charset.forName("UTF-8");

        /* renamed from: b  reason: collision with root package name */
        private final String f17688b;

        /* renamed from: c  reason: collision with root package name */
        private final String f17689c;

        /* renamed from: d  reason: collision with root package name */
        private final String f17690d;
        private final Boolean e;
        private final Boolean f;
        private final k g;
        private final o h;
        private final String i;
        private final m j;

        /* renamed from: com.dropbox.core.DbxWebAuth$a$a  reason: collision with other inner class name */
        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/DbxWebAuth$a$a.class */
        public static final class C0350a {

            /* renamed from: a  reason: collision with root package name */
            String f17691a;

            /* renamed from: b  reason: collision with root package name */
            String f17692b;

            /* renamed from: c  reason: collision with root package name */
            String f17693c;

            /* renamed from: d  reason: collision with root package name */
            Boolean f17694d;
            Boolean e;
            k f;
            o g;
            String h;
            m i;

            private C0350a() {
                this(null, null, null, null, null, null, null, null, null);
            }

            /* synthetic */ C0350a(AnonymousClass1 r3) {
                this();
            }

            private C0350a(String str, String str2, String str3, Boolean bool, Boolean bool2, k kVar, o oVar, String str4, m mVar) {
                this.f17691a = str;
                this.f17692b = str2;
                this.f17693c = str3;
                this.f17694d = bool;
                this.e = bool2;
                this.f = kVar;
                this.g = oVar;
                this.h = str4;
                this.i = mVar;
            }

            /* synthetic */ C0350a(String str, String str2, String str3, Boolean bool, Boolean bool2, k kVar, o oVar, String str4, m mVar, AnonymousClass1 r21) {
                this(str, str2, str3, bool, bool2, kVar, oVar, str4, mVar);
            }
        }

        private a(String str, String str2, String str3, Boolean bool, Boolean bool2, k kVar, o oVar, String str4, m mVar) {
            this.f17688b = str;
            this.f17689c = str2;
            this.f17690d = str3;
            this.e = bool;
            this.f = bool2;
            this.g = kVar;
            this.h = oVar;
            this.i = str4;
            this.j = mVar;
        }

        /* synthetic */ a(String str, String str2, String str3, Boolean bool, Boolean bool2, k kVar, o oVar, String str4, m mVar, AnonymousClass1 r21) {
            this(str, str2, str3, bool, bool2, kVar, oVar, str4, mVar);
        }

        public static C0350a a() {
            return new C0350a(null);
        }
    }

    public DbxWebAuth(h hVar, b bVar) {
        Objects.requireNonNull(hVar, "requestConfig");
        Objects.requireNonNull(bVar, "appInfo");
        this.f17682a = hVar;
        this.f17683b = bVar;
        this.f17684c = null;
    }

    @Deprecated
    public DbxWebAuth(h hVar, b bVar, String str, k kVar) {
        Objects.requireNonNull(hVar, "requestConfig");
        Objects.requireNonNull(bVar, "appInfo");
        this.f17682a = hVar;
        this.f17683b = bVar;
        a.C0350a a2 = a.a();
        Objects.requireNonNull(str, "redirectUri");
        Objects.requireNonNull(kVar, "sessionStore");
        a2.f17691a = str;
        a2.f = kVar;
        if (a2.f17691a == null && a2.f17692b != null) {
            throw new IllegalStateException("Cannot specify a state without a redirect URI.");
        } else if (a2.i == null || a2.h != null) {
            this.f17684c = new a(a2.f17691a, a2.f17692b, a2.f17693c, a2.f17694d, a2.e, a2.f, a2.g, a2.h, a2.i, null);
        } else {
            throw new IllegalArgumentException("If you are using includeGrantedScopes, you must ask for specific new scopes");
        }
    }
}
