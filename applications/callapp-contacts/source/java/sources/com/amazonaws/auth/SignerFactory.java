package com.amazonaws.auth;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/SignerFactory.class */
public final class SignerFactory {

    /* renamed from: a */
    private static final Map<String, Class<? extends Signer>> f12020a;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f12020a = concurrentHashMap;
        concurrentHashMap.put("QueryStringSignerType", QueryStringSigner.class);
        concurrentHashMap.put("AWS3SignerType", AWS3Signer.class);
        concurrentHashMap.put("AWS4SignerType", AWS4Signer.class);
        concurrentHashMap.put("NoOpSignerType", NoOpSigner.class);
    }

    private SignerFactory() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0054, code lost:
        if (r0 == null) goto L10;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.amazonaws.auth.Signer m38653a(java.lang.String r3, java.lang.String r4) {
        /*
            com.amazonaws.internal.config.InternalConfig r0 = com.amazonaws.internal.config.InternalConfig.Factory.m38603a()
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L7c
            r0 = r4
            if (r0 == 0) goto L57
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r3
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = "/"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            java.lang.String r0 = r0.toString()
            r6 = r0
            r0 = r5
            java.util.Map<java.lang.String, com.amazonaws.internal.config.SignerConfig> r0 = r0.f12098b
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            com.amazonaws.internal.config.SignerConfig r0 = (com.amazonaws.internal.config.SignerConfig) r0
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            if (r0 != 0) goto L73
            r0 = r5
            java.util.Map<java.lang.String, com.amazonaws.internal.config.SignerConfig> r0 = r0.f12099c
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            com.amazonaws.internal.config.SignerConfig r0 = (com.amazonaws.internal.config.SignerConfig) r0
            r4 = r0
            r0 = r4
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L73
        L57:
            r0 = r5
            java.util.Map<java.lang.String, com.amazonaws.internal.config.SignerConfig> r0 = r0.f12100d
            r1 = r3
            java.lang.Object r0 = r0.get(r1)
            com.amazonaws.internal.config.SignerConfig r0 = (com.amazonaws.internal.config.SignerConfig) r0
            r4 = r0
            r0 = r4
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L73
            r0 = r5
            com.amazonaws.internal.config.SignerConfig r0 = r0.f12097a
            r6 = r0
            goto L73
        L73:
            r0 = r6
            java.lang.String r0 = r0.f12104a
            r1 = r3
            com.amazonaws.auth.Signer r0 = m38651c(r0, r1)
            return r0
        L7c:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.auth.SignerFactory.m38653a(java.lang.String, java.lang.String):com.amazonaws.auth.Signer");
    }

    /* renamed from: a */
    public static void m38654a(String str, Class<? extends Signer> cls) {
        f12020a.put(str, cls);
    }

    /* renamed from: b */
    public static Signer m38652b(String str, String str2) {
        return m38651c(str, str2);
    }

    /* renamed from: c */
    private static Signer m38651c(String str, String str2) {
        Class<? extends Signer> cls = f12020a.get(str);
        if (cls != null) {
            try {
                Signer newInstance = cls.newInstance();
                if (newInstance instanceof ServiceAwareSigner) {
                    ((ServiceAwareSigner) newInstance).mo38655a(str2);
                }
                return newInstance;
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e);
            } catch (InstantiationException e2) {
                throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e2);
            }
        }
        throw new IllegalArgumentException();
    }
}
