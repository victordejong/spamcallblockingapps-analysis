package com.bytedance.sdk.openadsdk.preload.geckox.p210c;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.C5266p;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.c.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/c/a.class */
public class C5333a extends AbstractC5274v<Boolean> {

    /* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.c.a$1 */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/c/a$1.class */
    public static /* synthetic */ class C53341 {

        /* renamed from: a */
        static final /* synthetic */ int[] f18828a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC5246b.values().length];
            f18828a = iArr;
            try {
                iArr[EnumC5246b.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18828a[EnumC5246b.NULL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18828a[EnumC5246b.NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: a */
    public Boolean mo32517b(C5244a c5244a) throws IOException {
        EnumC5246b mo32787f = c5244a.mo32787f();
        int i = C53341.f18828a[mo32787f.ordinal()];
        boolean z = true;
        if (i != 1) {
            if (i == 2) {
                c5244a.mo32783j();
                return null;
            } else if (i != 3) {
                throw new C5266p("Expected BOOLEAN or NUMBER but was ".concat(String.valueOf(mo32787f)));
            } else {
                if (c5244a.mo32780m() == 0) {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        }
        return Boolean.valueOf(c5244a.mo32784i());
    }

    /* renamed from: a */
    public void mo32518a(C5247c c5247c, Boolean bool) throws IOException {
        if (bool == null) {
            c5247c.mo32745f();
        } else {
            c5247c.mo32760a(bool);
        }
    }
}
