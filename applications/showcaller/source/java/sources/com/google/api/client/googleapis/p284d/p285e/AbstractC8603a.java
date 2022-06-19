package com.google.api.client.googleapis.p284d.p285e;

import com.google.api.client.googleapis.p284d.AbstractC8595a;
import com.google.api.client.googleapis.p284d.AbstractC8602d;
import com.google.api.client.http.AbstractC8657s;
import com.google.api.client.http.AbstractC8661w;
import com.google.api.client.json.AbstractC8667c;
import com.google.api.client.json.C8669e;
import java.util.Arrays;
import java.util.Collections;
/* renamed from: com.google.api.client.googleapis.d.e.a */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/d/e/a.class */
public abstract class AbstractC8603a extends AbstractC8595a {

    /* renamed from: com.google.api.client.googleapis.d.e.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/d/e/a$a.class */
    public static abstract class AbstractC8604a extends AbstractC8595a.AbstractC8596a {
        public AbstractC8604a(AbstractC8661w abstractC8661w, AbstractC8667c abstractC8667c, String str, String str2, AbstractC8657s abstractC8657s, boolean z) {
            super(abstractC8661w, str, str2, new C8669e.C8670a(abstractC8667c).m3016b(z ? Arrays.asList("data", "error") : Collections.emptySet()).m3017a(), abstractC8657s);
        }

        @Override // com.google.api.client.googleapis.p284d.AbstractC8595a.AbstractC8596a
        public abstract AbstractC8603a build();

        public final AbstractC8667c getJsonFactory() {
            return getObjectParser().m3021b();
        }

        @Override // com.google.api.client.googleapis.p284d.AbstractC8595a.AbstractC8596a
        public final C8669e getObjectParser() {
            return (C8669e) super.getObjectParser();
        }

        @Override // com.google.api.client.googleapis.p284d.AbstractC8595a.AbstractC8596a
        public AbstractC8604a setApplicationName(String str) {
            return (AbstractC8604a) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.p284d.AbstractC8595a.AbstractC8596a
        public AbstractC8604a setGoogleClientRequestInitializer(AbstractC8602d abstractC8602d) {
            return (AbstractC8604a) super.setGoogleClientRequestInitializer(abstractC8602d);
        }

        @Override // com.google.api.client.googleapis.p284d.AbstractC8595a.AbstractC8596a
        public AbstractC8604a setHttpRequestInitializer(AbstractC8657s abstractC8657s) {
            return (AbstractC8604a) super.setHttpRequestInitializer(abstractC8657s);
        }

        @Override // com.google.api.client.googleapis.p284d.AbstractC8595a.AbstractC8596a
        public AbstractC8604a setRootUrl(String str) {
            return (AbstractC8604a) super.setRootUrl(str);
        }

        @Override // com.google.api.client.googleapis.p284d.AbstractC8595a.AbstractC8596a
        public AbstractC8604a setServicePath(String str) {
            return (AbstractC8604a) super.setServicePath(str);
        }

        @Override // com.google.api.client.googleapis.p284d.AbstractC8595a.AbstractC8596a
        public AbstractC8604a setSuppressAllChecks(boolean z) {
            return (AbstractC8604a) super.setSuppressAllChecks(z);
        }

        @Override // com.google.api.client.googleapis.p284d.AbstractC8595a.AbstractC8596a
        public AbstractC8604a setSuppressPatternChecks(boolean z) {
            return (AbstractC8604a) super.setSuppressPatternChecks(z);
        }

        @Override // com.google.api.client.googleapis.p284d.AbstractC8595a.AbstractC8596a
        public AbstractC8604a setSuppressRequiredParameterChecks(boolean z) {
            return (AbstractC8604a) super.setSuppressRequiredParameterChecks(z);
        }
    }

    public AbstractC8603a(AbstractC8604a abstractC8604a) {
        super(abstractC8604a);
    }

    public final AbstractC8667c getJsonFactory() {
        return getObjectParser().m3021b();
    }

    @Override // com.google.api.client.googleapis.p284d.AbstractC8595a
    public C8669e getObjectParser() {
        return (C8669e) super.getObjectParser();
    }
}
