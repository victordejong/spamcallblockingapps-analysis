package p193e.p1577m.p1578a.p1642f.p1653e.p1654a.p1655a;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Objects;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
/* renamed from: e.m.a.f.e.a.a.y */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/a/a/y.class */
public final class C24955y {

    /* renamed from: a */
    public final ApiKey<?> f69895a;

    /* renamed from: b */
    public final Feature f69896b;

    public /* synthetic */ C24955y(ApiKey apiKey, Feature feature) {
        this.f69895a = apiKey;
        this.f69896b = feature;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof C24955y)) {
            return false;
        }
        C24955y c24955y = (C24955y) obj;
        return Objects.m38910a(this.f69895a, c24955y.f69895a) && Objects.m38910a(this.f69896b, c24955y.f69896b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f69895a, this.f69896b});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.m38909a(AnalyticsConstants.KEY, this.f69895a);
        toStringHelper.m38909a("feature", this.f69896b);
        return toStringHelper.toString();
    }
}
