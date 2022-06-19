package p193e.p1538j;

import com.facebook.GraphRequest;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��\u0019\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001��\b\n\u0018��2\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"com/facebook/GraphRequest$serializeToBatch$1", "Lcom/facebook/GraphRequest$KeyValueSerializer;", "writeString", "", AnalyticsConstants.KEY, "", "value", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: e.j.i0 */
/* loaded from: classes2-dex2jar.jar:e/j/i0.class */
public final class C23236i0 implements GraphRequest.AbstractC0925e {

    /* renamed from: a */
    public final /* synthetic */ ArrayList<String> f64316a;

    public C23236i0(ArrayList<String> arrayList) {
        this.f64316a = arrayList;
    }

    @Override // com.facebook.GraphRequest.AbstractC0925e
    /* renamed from: a */
    public void mo7336a(String str, String str2) throws IOException {
        l.e(str, AnalyticsConstants.KEY);
        l.e(str2, "value");
        ArrayList<String> arrayList = this.f64316a;
        String format = String.format(Locale.US, "%s=%s", Arrays.copyOf(new Object[]{str, URLEncoder.encode(str2, StringConstant.UTF8)}, 2));
        l.d(format, "java.lang.String.format(locale, format, *args)");
        arrayList.add(format);
    }
}
