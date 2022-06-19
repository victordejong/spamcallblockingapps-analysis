package com.truecaller.premium.provider;

import com.truecaller.BuildConfig;
import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/premium/provider/Store;", "", "", "providerName", "Ljava/lang/String;", "getProviderName", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", BuildConfig.BUILD_NAME, "WEB", "NONE", "premium_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/provider/Store.class */
public enum Store {
    GOOGLE_PLAY("googleplay"),
    WEB("web"),
    NONE("none");
    
    public static final C4354a Companion = new C4354a(null);
    private final String providerName;

    /* renamed from: com.truecaller.premium.provider.Store$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/provider/Store$a.class */
    public static final class C4354a {
        public C4354a(f fVar) {
        }
    }

    Store(String str) {
        this.providerName = str;
    }

    public final String getProviderName() {
        return this.providerName;
    }
}
