package p193e.p194a.p1114o5;

import android.content.Context;
import com.huawei.agconnect.config.LazyInputStream;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import java.io.InputStream;
import s1.z.c.l;
/* renamed from: e.a.o5.l0 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/l0.class */
public final class C19055l0 extends LazyInputStream {
    public C19055l0(Context context, Context context2) {
        super(context2);
    }

    @Override // com.huawei.agconnect.config.LazyInputStream
    public InputStream get(Context context) {
        InputStream inputStream;
        l.e(context, AnalyticsConstants.CONTEXT);
        try {
            inputStream = context.getAssets().open("agconnect-services.json");
        } catch (IOException e) {
            inputStream = null;
        }
        return inputStream;
    }
}
