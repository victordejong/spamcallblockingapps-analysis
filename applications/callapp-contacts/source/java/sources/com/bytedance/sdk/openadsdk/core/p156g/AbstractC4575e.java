package com.bytedance.sdk.openadsdk.core.p156g;

import android.os.Handler;
import android.os.Looper;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.bytedance.sdk.openadsdk.core.g.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g/e.class */
public abstract class AbstractC4575e {

    /* renamed from: a */
    private static final String f16678a = "e";

    /* renamed from: b */
    private final Set<String> f16679b = new HashSet(1);

    /* renamed from: c */
    private Looper f16680c = Looper.getMainLooper();

    /* renamed from: com.bytedance.sdk.openadsdk.core.g.e$5 */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g/e$5.class */
    public static /* synthetic */ class C45805 {

        /* renamed from: a */
        static final /* synthetic */ int[] f16687a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC4573c.values().length];
            f16687a = iArr;
            try {
                iArr[EnumC4573c.GRANTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f16687a[EnumC4573c.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f16687a[EnumC4573c.NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: a */
    public abstract void mo34970a();

    /* renamed from: a */
    public abstract void mo34969a(String str);

    /* renamed from: a */
    public final void m34966a(String[] strArr) {
        synchronized (this) {
            Collections.addAll(this.f16679b, strArr);
        }
    }

    /* renamed from: a */
    public final boolean m34968a(String str, int i) {
        synchronized (this) {
            if (i == 0) {
                return m34967a(str, EnumC4573c.GRANTED);
            }
            return m34967a(str, EnumC4573c.DENIED);
        }
    }

    /* renamed from: a */
    public final boolean m34967a(final String str, EnumC4573c enumC4573c) {
        synchronized (this) {
            this.f16679b.remove(str);
            int i = C45805.f16687a[enumC4573c.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    new Handler(this.f16680c).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.e.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AbstractC4575e.this.mo34969a(str);
                        }
                    });
                    return true;
                } else if (i == 3) {
                    if (!m34965b(str)) {
                        new Handler(this.f16680c).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.e.4
                            @Override // java.lang.Runnable
                            public void run() {
                                AbstractC4575e.this.mo34969a(str);
                            }
                        });
                        return true;
                    } else if (this.f16679b.isEmpty()) {
                        new Handler(this.f16680c).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.e.3
                            @Override // java.lang.Runnable
                            public void run() {
                                AbstractC4575e.this.mo34970a();
                            }
                        });
                        return true;
                    }
                }
            } else if (this.f16679b.isEmpty()) {
                new Handler(this.f16680c).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.e.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AbstractC4575e.this.mo34970a();
                    }
                });
                return true;
            }
            return false;
        }
    }

    /* renamed from: b */
    public boolean m34965b(String str) {
        synchronized (this) {
        }
        return true;
    }
}
