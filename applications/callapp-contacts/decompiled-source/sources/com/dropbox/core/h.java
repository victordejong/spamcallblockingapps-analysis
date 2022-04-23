package com.dropbox.core;

import com.dropbox.core.http.d;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Locale;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    final String f17763a;

    /* renamed from: b  reason: collision with root package name */
    public final String f17764b;

    /* renamed from: c  reason: collision with root package name */
    public final com.dropbox.core.http.a f17765c;

    /* renamed from: d  reason: collision with root package name */
    public final int f17766d;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f17767a;

        /* renamed from: b  reason: collision with root package name */
        public String f17768b;

        /* renamed from: c  reason: collision with root package name */
        public com.dropbox.core.http.a f17769c;

        /* renamed from: d  reason: collision with root package name */
        public int f17770d;

        private a(String str) {
            this.f17767a = str;
            this.f17768b = null;
            this.f17769c = d.f17799c;
            this.f17770d = 0;
        }

        private a(String str, String str2, com.dropbox.core.http.a aVar, int i) {
            this.f17767a = str;
            this.f17768b = str2;
            this.f17769c = aVar;
            this.f17770d = i;
        }
    }

    public h(String str) {
        this(str, null);
    }

    @Deprecated
    public h(String str, String str2) {
        this(str, str2, d.f17799c);
    }

    @Deprecated
    public h(String str, String str2, com.dropbox.core.http.a aVar) {
        this(str, str2, aVar, 0);
    }

    private h(String str, String str2, com.dropbox.core.http.a aVar, int i) {
        Objects.requireNonNull(str, "clientIdentifier");
        Objects.requireNonNull(aVar, "httpRequestor");
        if (i >= 0) {
            this.f17763a = str;
            if (str2 == null) {
                str2 = null;
            } else if (str2.contains("_") && !str2.startsWith("_")) {
                String[] split = str2.split("_", 3);
                Locale locale = new Locale(split[0], split[1], split.length == 3 ? split[2] : "");
                StringBuilder sb = new StringBuilder();
                sb.append(locale.getLanguage().toLowerCase());
                if (!locale.getCountry().isEmpty()) {
                    sb.append(VerificationLanguage.REGION_PREFIX);
                    sb.append(locale.getCountry().toUpperCase());
                }
                str2 = sb.toString();
            }
            this.f17764b = str2;
            this.f17765c = aVar;
            this.f17766d = i;
            return;
        }
        throw new IllegalArgumentException("maxRetries");
    }
}
