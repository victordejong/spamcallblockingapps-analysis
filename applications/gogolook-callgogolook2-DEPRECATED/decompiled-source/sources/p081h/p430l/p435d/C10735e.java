package p081h.p430l.p435d;

import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.nativeads.RequestParameters;
/* renamed from: h.l.d.e */
/* loaded from: classes2-dex2jar.jar:h/l/d/e.class */
public class C10735e extends AdUrlGenerator {
    @Nullable

    /* renamed from: n */
    public String f24470n;
    @Nullable

    /* renamed from: o */
    public String f24471o;

    public C10735e(Context context) {
        super(context);
    }

    @NonNull
    /* renamed from: a */
    public C10735e m10782a(int i) {
        this.f24471o = String.valueOf(i);
        return this;
    }

    @NonNull
    /* renamed from: a */
    public C10735e m10781a(@Nullable RequestParameters requestParameters) {
        if (requestParameters != null) {
            boolean canCollectPersonalInformation = MoPub.canCollectPersonalInformation();
            Location location = null;
            this.f7978h = canCollectPersonalInformation ? requestParameters.getUserDataKeywords() : null;
            if (canCollectPersonalInformation) {
                location = requestParameters.getLocation();
            }
            this.f7979i = location;
            this.f7977g = requestParameters.getKeywords();
            this.f24470n = requestParameters.getDesiredAssets();
        }
        return this;
    }

    @Override // com.mopub.common.BaseUrlGenerator
    public String generateUrlString(String str) {
        m30863b(str, Constants.AD_HANDLER);
        m30900a(ClientMetadata.getInstance(this.f7975e));
        m10780m();
        m10779n();
        return m30861d();
    }

    /* renamed from: m */
    public final void m10780m() {
        if (!TextUtils.isEmpty(this.f24470n)) {
            m30868a("assets", this.f24470n);
        }
    }

    /* renamed from: n */
    public final void m10779n() {
        if (!TextUtils.isEmpty(this.f24471o)) {
            m30868a("MAGIC_NO", this.f24471o);
        }
    }

    @Override // com.mopub.common.AdUrlGenerator
    @NonNull
    public C10735e withAdUnitId(String str) {
        this.f7976f = str;
        return this;
    }
}
