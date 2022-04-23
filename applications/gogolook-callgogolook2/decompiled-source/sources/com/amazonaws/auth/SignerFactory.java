package com.amazonaws.auth;

import com.amazonaws.internal.config.InternalConfig;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/SignerFactory.class */
public final class SignerFactory {
    public static final Map<String, Class<? extends Signer>> SIGNERS = new ConcurrentHashMap();

    static {
        SIGNERS.put("QueryStringSignerType", QueryStringSigner.class);
        SIGNERS.put("AWS3SignerType", AWS3Signer.class);
        SIGNERS.put("AWS4SignerType", AWS4Signer.class);
        SIGNERS.put("NoOpSignerType", NoOpSigner.class);
    }

    public static Signer createSigner(String str, String str2) {
        Class<? extends Signer> cls = SIGNERS.get(str);
        if (cls != null) {
            try {
                Signer signer = (Signer) cls.newInstance();
                if (signer instanceof ServiceAwareSigner) {
                    ((ServiceAwareSigner) signer).setServiceName(str2);
                }
                return signer;
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e);
            } catch (InstantiationException e2) {
                throw new IllegalStateException("Cannot create an instance of " + cls.getName(), e2);
            }
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static Signer getSigner(String str, String str2) {
        return lookupAndCreateSigner(str, str2);
    }

    public static Signer getSignerByTypeAndService(String str, String str2) {
        return createSigner(str, str2);
    }

    public static Signer lookupAndCreateSigner(String str, String str2) {
        return createSigner(InternalConfig.Factory.getInternalConfig().getSignerConfig(str, str2).getSignerType(), str);
    }

    public static void registerSigner(String str, Class<? extends Signer> cls) {
        if (str == null) {
            throw new IllegalArgumentException("signerType cannot be null");
        } else if (cls != null) {
            SIGNERS.put(str, cls);
        } else {
            throw new IllegalArgumentException("signerClass cannot be null");
        }
    }
}
