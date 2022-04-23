package com.criteo.publisher.logging;

import android.util.Log;
import com.criteo.publisher.m0.g;
import kotlin.a.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/c.class */
public class c implements d {

    /* renamed from: a  reason: collision with root package name */
    public int f17445a = -1;

    /* renamed from: b  reason: collision with root package name */
    private final g f17446b;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/c$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new a(null);
    }

    public c(g buildConfigWrapper) {
        p.c(buildConfigWrapper, "buildConfigWrapper");
        this.f17446b = buildConfigWrapper;
    }

    @Override // com.criteo.publisher.logging.d
    public final void a(String tag, e logMessage) {
        p.c(tag, "tag");
        p.c(logMessage, "logMessage");
        int i = logMessage.f17447a;
        Integer valueOf = Integer.valueOf(this.f17445a);
        boolean z = true;
        String str = null;
        if (!(valueOf.intValue() != -1)) {
            valueOf = null;
        }
        if (i >= (valueOf != null ? valueOf.intValue() : 5)) {
            String str2 = logMessage.f17448b;
            Throwable throwable = logMessage.f17449c;
            if (throwable != null) {
                p.c(throwable, "throwable");
                str = Log.getStackTraceString(throwable);
            }
            String message = n.a(n.e(str2, str), StringUtils.LF, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 62);
            if (message.length() <= 0) {
                z = false;
            }
            if (z) {
                p.c(tag, "tag");
                p.c(message, "message");
                Log.println(i, f.a(tag), message);
            }
        }
    }
}
