package com.bytedance.sdk.openadsdk.preload.geckox.c;

import com.bytedance.sdk.openadsdk.preload.a.d.b;
import com.bytedance.sdk.openadsdk.preload.a.d.c;
import com.bytedance.sdk.openadsdk.preload.a.p;
import com.bytedance.sdk.openadsdk.preload.a.v;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/c/a.class */
public class a extends v<Boolean> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.c.a$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/c/a$1.class */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10178a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f10178a = iArr;
            try {
                iArr[b.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10178a[b.NULL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f10178a[b.NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: a */
    public Boolean b(com.bytedance.sdk.openadsdk.preload.a.d.a aVar) throws IOException {
        b f = aVar.f();
        int i = AnonymousClass1.f10178a[f.ordinal()];
        boolean z = true;
        if (i == 1) {
            return Boolean.valueOf(aVar.i());
        }
        if (i == 2) {
            aVar.j();
            return null;
        } else if (i == 3) {
            if (aVar.m() == 0) {
                z = false;
            }
            return Boolean.valueOf(z);
        } else {
            throw new p("Expected BOOLEAN or NUMBER but was ".concat(String.valueOf(f)));
        }
    }

    public void a(c cVar, Boolean bool) throws IOException {
        if (bool == null) {
            cVar.f();
        } else {
            cVar.a(bool);
        }
    }
}
