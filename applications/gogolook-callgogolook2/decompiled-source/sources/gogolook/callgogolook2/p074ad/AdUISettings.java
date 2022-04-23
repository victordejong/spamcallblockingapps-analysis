package gogolook.callgogolook2.p074ad;

import com.mopub.common.AdType;
import kotlin.Metadata;
import org.json.JSONObject;
import p081h.p160h.p161a.p170p.C6272d;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u00142\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0018\u0010\n\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\bH\u0002J\u0018\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R$\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR$\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\b@BX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\r¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdUISettings;", "", "adUnit", "Lgogolook/callgogolook2/ad/AdUnit;", "adNSourceName", "", "(Lgogolook/callgogolook2/ad/AdUnit;Ljava/lang/String;)V", "<set-?>", "", "closeButtonPaddingInPx", "getCloseButtonPaddingInPx", "()I", "setCloseButtonPaddingInPx", "(I)V", "closeButtonType", "getCloseButtonType", "setCloseButtonType", AdType.STATIC_NATIVE, "Lorg/json/JSONObject;", "default", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdUISettings */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdUISettings.class */
public final class AdUISettings {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_CLOSE_BUTTON_PADDING_IN_PX = "close_button_padding_in_px";
    public static final String KEY_CLOSE_BUTTON_TYPE = "close_button_type";
    public final String adNSourceName;
    public final AdUnit adUnit;
    public int closeButtonPaddingInPx;
    public int closeButtonType;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdUISettings$Companion;", "", "()V", "KEY_CLOSE_BUTTON_PADDING_IN_PX", "", "KEY_CLOSE_BUTTON_TYPE", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.AdUISettings$Companion */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdUISettings$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    public AdUISettings(AdUnit adUnit, String str) {
        C15149k.m377b(adUnit, "adUnit");
        C15149k.m377b(str, "adNSourceName");
        this.adUnit = adUnit;
        this.adNSourceName = str;
        this.closeButtonPaddingInPx = 5;
        this.closeButtonType = C6272d.f15547h;
        this.closeButtonPaddingInPx = C6272d.m23425a(this.adUnit.m28821a());
        this.closeButtonType = C6272d.m23421b(this.adUnit.m28821a());
        JSONObject a = AppAdsSettingsUtils.INSTANCE.m28791a(this.adUnit);
        if (a != null) {
            this.closeButtonPaddingInPx = m28824a(a, this.closeButtonPaddingInPx);
            this.closeButtonType = m28822b(a, this.closeButtonType);
            String str2 = this.adNSourceName;
            if (str2 != null) {
                String lowerCase = str2.toLowerCase();
                C15149k.m383a((Object) lowerCase, "(this as java.lang.String).toLowerCase()");
                JSONObject optJSONObject = a.optJSONObject(lowerCase);
                if (optJSONObject != null) {
                    this.closeButtonPaddingInPx = m28824a(optJSONObject, this.closeButtonPaddingInPx);
                    this.closeButtonType = m28822b(optJSONObject, this.closeButtonType);
                    return;
                }
                return;
            }
            throw new C14986p("null cannot be cast to non-null type java.lang.String");
        }
    }

    /* renamed from: a */
    public final int m28825a() {
        return this.closeButtonPaddingInPx;
    }

    /* renamed from: a */
    public final int m28824a(JSONObject jSONObject, int i) {
        return jSONObject.optInt(KEY_CLOSE_BUTTON_PADDING_IN_PX, i);
    }

    /* renamed from: b */
    public final int m28823b() {
        return this.closeButtonType;
    }

    /* renamed from: b */
    public final int m28822b(JSONObject jSONObject, int i) {
        return jSONObject.optInt(KEY_CLOSE_BUTTON_TYPE, i);
    }
}
