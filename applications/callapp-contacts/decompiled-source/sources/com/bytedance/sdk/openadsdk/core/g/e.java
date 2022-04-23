package com.bytedance.sdk.openadsdk.core.g;

import android.os.Handler;
import android.os.Looper;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g/e.class */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8949a = "e";

    /* renamed from: b  reason: collision with root package name */
    private final Set<String> f8950b = new HashSet(1);

    /* renamed from: c  reason: collision with root package name */
    private Looper f8951c = Looper.getMainLooper();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.g.e$5  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/g/e$5.class */
    public static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8958a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[c.values().length];
            f8958a = iArr;
            try {
                iArr[c.GRANTED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8958a[c.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8958a[c.NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public abstract void a();

    public abstract void a(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(String[] strArr) {
        synchronized (this) {
            Collections.addAll(this.f8950b, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(String str, int i) {
        synchronized (this) {
            if (i == 0) {
                return a(str, c.GRANTED);
            }
            return a(str, c.DENIED);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(final String str, c cVar) {
        synchronized (this) {
            this.f8950b.remove(str);
            int i = AnonymousClass5.f8958a[cVar.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    new Handler(this.f8951c).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.e.2
                        @Override // java.lang.Runnable
                        public void run() {
                            e.this.a(str);
                        }
                    });
                    return true;
                } else if (i == 3) {
                    if (!b(str)) {
                        new Handler(this.f8951c).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.e.4
                            @Override // java.lang.Runnable
                            public void run() {
                                e.this.a(str);
                            }
                        });
                        return true;
                    } else if (this.f8950b.isEmpty()) {
                        new Handler(this.f8951c).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.e.3
                            @Override // java.lang.Runnable
                            public void run() {
                                e.this.a();
                            }
                        });
                        return true;
                    }
                }
            } else if (this.f8950b.isEmpty()) {
                new Handler(this.f8951c).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.g.e.1
                    @Override // java.lang.Runnable
                    public void run() {
                        e.this.a();
                    }
                });
                return true;
            }
            return false;
        }
    }

    public boolean b(String str) {
        synchronized (this) {
        }
        return true;
    }
}
