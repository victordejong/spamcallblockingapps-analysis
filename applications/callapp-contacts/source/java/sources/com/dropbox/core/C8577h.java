package com.dropbox.core;

import com.dropbox.core.http.AbstractC8582a;
import com.dropbox.core.http.C8595d;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.Locale;
import java.util.Objects;
/* renamed from: com.dropbox.core.h */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/h.class */
public final class C8577h {

    /* renamed from: a */
    final String f30544a;

    /* renamed from: b */
    public final String f30545b;

    /* renamed from: c */
    public final AbstractC8582a f30546c;

    /* renamed from: d */
    public final int f30547d;

    /* renamed from: com.dropbox.core.h$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/h$a.class */
    public static final class C8579a {

        /* renamed from: a */
        public final String f30548a;

        /* renamed from: b */
        public String f30549b;

        /* renamed from: c */
        public AbstractC8582a f30550c;

        /* renamed from: d */
        public int f30551d;

        /* JADX INFO: Access modifiers changed from: private */
        public C8579a(String str) {
            this.f30548a = str;
            this.f30549b = null;
            this.f30550c = C8595d.f30588c;
            this.f30551d = 0;
        }

        private C8579a(String str, String str2, AbstractC8582a abstractC8582a, int i) {
            this.f30548a = str;
            this.f30549b = str2;
            this.f30550c = abstractC8582a;
            this.f30551d = i;
        }
    }

    public C8577h(String str) {
        this(str, null);
    }

    @Deprecated
    public C8577h(String str, String str2) {
        this(str, str2, C8595d.f30588c);
    }

    @Deprecated
    public C8577h(String str, String str2, AbstractC8582a abstractC8582a) {
        this(str, str2, abstractC8582a, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C8577h(String str, String str2, AbstractC8582a abstractC8582a, int i) {
        Objects.requireNonNull(str, "clientIdentifier");
        Objects.requireNonNull(abstractC8582a, "httpRequestor");
        if (i >= 0) {
            this.f30544a = str;
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
            this.f30545b = str2;
            this.f30546c = abstractC8582a;
            this.f30547d = i;
            return;
        }
        throw new IllegalArgumentException("maxRetries");
    }
}
