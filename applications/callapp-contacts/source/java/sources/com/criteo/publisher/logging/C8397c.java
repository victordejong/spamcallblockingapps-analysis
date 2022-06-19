package com.criteo.publisher.logging;

import android.util.Log;
import com.criteo.publisher.p256m0.C8433g;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.criteo.publisher.logging.c */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/c.class */
public class C8397c implements AbstractC8399d {

    /* renamed from: a */
    public int f30120a = -1;

    /* renamed from: b */
    private final C8433g f30121b;

    /* renamed from: com.criteo.publisher.logging.c$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/c$a.class */
    public static final class C8398a {
        private C8398a() {
        }

        public /* synthetic */ C8398a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new C8398a(null);
    }

    public C8397c(C8433g buildConfigWrapper) {
        C18524p.m3841c(buildConfigWrapper, "buildConfigWrapper");
        this.f30121b = buildConfigWrapper;
    }

    @Override // com.criteo.publisher.logging.AbstractC8399d
    /* renamed from: a */
    public final void mo25725a(String tag, C8400e logMessage) {
        C18524p.m3841c(tag, "tag");
        C18524p.m3841c(logMessage, "logMessage");
        int i = logMessage.f30122a;
        Integer valueOf = Integer.valueOf(this.f30120a);
        if (!(valueOf.intValue() != -1)) {
            valueOf = null;
        }
        if (!(i >= (valueOf != null ? valueOf.intValue() : 5))) {
            return;
        }
        String str = logMessage.f30123b;
        Throwable throwable = logMessage.f30124c;
        String str2 = null;
        if (throwable != null) {
            C18524p.m3841c(throwable, "throwable");
            str2 = Log.getStackTraceString(throwable);
        }
        String message = C18282n.m4148a(C18282n.m4164e(str, str2), StringUtils.f67179LF, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
        if (!(message.length() > 0)) {
            return;
        }
        C18524p.m3841c(tag, "tag");
        C18524p.m3841c(message, "message");
        Log.println(i, C8401f.m25745a(tag), message);
    }
}
