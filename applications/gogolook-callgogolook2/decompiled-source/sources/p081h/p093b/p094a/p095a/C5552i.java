package p081h.p093b.p094a.p095a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: h.b.a.a.i */
/* loaded from: classes-dex2jar.jar:h/b/a/a/i.class */
public class C5552i {

    /* renamed from: a */
    public final String f13864a;

    /* renamed from: b */
    public final JSONObject f13865b;

    /* renamed from: h.b.a.a.i$a */
    /* loaded from: classes-dex2jar.jar:h/b/a/a/i$a.class */
    public static final class C5553a {
        @Nullable

        /* renamed from: a */
        public final List<C5552i> f13866a;

        /* renamed from: b */
        public final int f13867b;

        /* renamed from: c */
        public final String f13868c;

        public C5553a(int i, String str, @Nullable List<C5552i> list) {
            this.f13867b = i;
            this.f13868c = str;
            this.f13866a = list;
        }

        @Nullable
        /* renamed from: a */
        public final List<C5552i> m25139a() {
            return this.f13866a;
        }

        /* renamed from: b */
        public final int m25138b() {
            return this.f13867b;
        }

        /* renamed from: c */
        public final String m25137c() {
            return this.f13868c;
        }
    }

    public C5552i(@NonNull String str) throws JSONException {
        this.f13864a = str;
        this.f13865b = new JSONObject(this.f13864a);
        if (TextUtils.isEmpty(this.f13865b.optString("productId"))) {
            throw new IllegalArgumentException("SKU cannot be empty.");
        } else if (TextUtils.isEmpty(this.f13865b.optString("type"))) {
            throw new IllegalArgumentException("SkuType cannot be empty.");
        }
    }

    @NonNull
    /* renamed from: a */
    public String m25155a() {
        return this.f13865b.optString("freeTrialPeriod");
    }

    @NonNull
    /* renamed from: b */
    public String m25154b() {
        return this.f13865b.optString("introductoryPrice");
    }

    /* renamed from: c */
    public long m25153c() {
        return this.f13865b.optLong("introductoryPriceAmountMicros");
    }

    @NonNull
    /* renamed from: d */
    public String m25152d() {
        return this.f13865b.optString("introductoryPricePeriod");
    }

    @NonNull
    /* renamed from: e */
    public String m25151e() {
        return this.f13864a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5552i)) {
            return false;
        }
        return TextUtils.equals(this.f13864a, ((C5552i) obj).f13864a);
    }

    @NonNull
    /* renamed from: f */
    public String m25150f() {
        return this.f13865b.has("original_price") ? this.f13865b.optString("original_price") : m25148h();
    }

    /* renamed from: g */
    public long m25149g() {
        return this.f13865b.has("original_price_micros") ? this.f13865b.optLong("original_price_micros") : m25147i();
    }

    @NonNull
    /* renamed from: h */
    public String m25148h() {
        return this.f13865b.optString("price");
    }

    public int hashCode() {
        return this.f13864a.hashCode();
    }

    /* renamed from: i */
    public long m25147i() {
        return this.f13865b.optLong("price_amount_micros");
    }

    @NonNull
    /* renamed from: j */
    public String m25146j() {
        return this.f13865b.optString("price_currency_code");
    }

    @NonNull
    /* renamed from: k */
    public String m25145k() {
        return this.f13865b.optString("productId");
    }

    @NonNull
    /* renamed from: l */
    public String m25144l() {
        return this.f13865b.optString(IapProductRealmObject.SUBSCRIPTION_PERIOD);
    }

    @NonNull
    /* renamed from: m */
    public String m25143m() {
        return this.f13865b.optString("title");
    }

    @NonNull
    /* renamed from: n */
    public String m25142n() {
        return this.f13865b.optString("type");
    }

    @NonNull
    /* renamed from: o */
    public final String m25141o() {
        return this.f13865b.optString("packageName");
    }

    /* renamed from: p */
    public final String m25140p() {
        return this.f13865b.optString("skuDetailsToken");
    }

    @NonNull
    public String toString() {
        String valueOf = String.valueOf(this.f13864a);
        return valueOf.length() != 0 ? "SkuDetails: ".concat(valueOf) : new String("SkuDetails: ");
    }
}
