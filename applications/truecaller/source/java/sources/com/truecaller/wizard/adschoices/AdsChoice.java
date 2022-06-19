package com.truecaller.wizard.adschoices;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.common.network.optout.OptOutRestAdapter;
import com.truecaller.wizard.C4861R;
import e.a.r.b.b;
import e.a.r.b.c;
import kotlin.Metadata;
import p193e.p194a.p372b0.p394b.p403l.AbstractC8405a;
import s1.k;
import s1.z.b.l;
import s1.z.c.f;
import s1.z.c.m;
/* JADX WARN: Init of enum PERSONALIZED_ADS can be incorrect */
/* JADX WARN: Init of enum RESTRICTED_ADS can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B©\u0001\b\u0002\u0012\b\b\u0001\u0010\b\u001a\u00020\u0007\u0012\b\b\u0001\u0010\u0013\u001a\u00020\u0007\u0012\b\b\u0001\u0010\u001a\u001a\u00020\u0007\u0012\n\b\u0001\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\"\b\u0002\u0010\u000f\u001a\u001c\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\r\u0018\u00010\fj\u0004\u0018\u0001`\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0014\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001c\u0012\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00150\u001c\u0012\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00150\u001c\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b,\u0010-R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR3\u0010\u000f\u001a\u001c\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\r\u0018\u00010\fj\u0004\u0018\u0001`\u000e8\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0013\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0014\u0010\u000bR\u0019\u0010\u0016\u001a\u00020\u00158\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0019\u0010\u001a\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010\t\u001a\u0004\b\u001b\u0010\u000bR'\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u001e0\u001c8\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R%\u0010$\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00150\u001c8\u0006@\u0006¢\u0006\f\n\u0004\b$\u0010 \u001a\u0004\b%\u0010\"R%\u0010&\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00150\u001c8\u0006@\u0006¢\u0006\f\n\u0004\b&\u0010 \u001a\u0004\b'\u0010\"R\u001b\u0010(\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+j\u0002\b.j\u0002\b/j\u0002\b0¨\u00061"}, d2 = {"Lcom/truecaller/wizard/adschoices/AdsChoice;", "", "", "moreInfoUrl", "Ljava/lang/String;", "getMoreInfoUrl", "()Ljava/lang/String;", "", "id", "I", "getId", "()I", "Ls1/k;", "", "Lcom/truecaller/wizard/wizardprivacy/LegalArticleContent;", "htmlContent", "Ls1/k;", "getHtmlContent", "()Ls1/k;", RemoteMessageConst.Notification.ICON, "getIcon", "", "modifiable", "Z", "getModifiable", "()Z", "title", "getTitle", "Lkotlin/Function1;", "Lcom/truecaller/common/network/optout/OptOutRestAdapter$OptOutsDto;", "Lcom/truecaller/wizard/adschoices/AdsChoiceOptOutStatus;", "accessDto", "Ls1/z/b/l;", "getAccessDto", "()Ls1/z/b/l;", "Le/a/b0/b/l/a;", "optIn", "getOptIn", "optOut", "getOptOut", "text", "Ljava/lang/Integer;", "getText", "()Ljava/lang/Integer;", "<init>", "(Ljava/lang/String;IIIILjava/lang/Integer;Ls1/k;Ljava/lang/String;Ls1/z/b/l;Ls1/z/b/l;Ls1/z/b/l;Z)V", "PERSONALIZED_ADS", "RESTRICTED_ADS", "DIRECT_MARKETING", "wizard-tc_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes16-dex2jar.jar:com/truecaller/wizard/adschoices/AdsChoice.class */
public enum AdsChoice {
    PERSONALIZED_ADS(r0, r0, C4861R.string.AdsChoices_Ads_Title, Integer.valueOf(C4861R.string.AdsChoices_Ads_Text), null, "https://privacy.truecaller.com/ads", b.h, b.j, c.j, false, 528, null),
    RESTRICTED_ADS(C4861R.C4863id.restrictedAdsCard, r0, C4861R.string.AdsChoices_RestrictedAds_Title, null, new k(Integer.valueOf(C4861R.string.AdsChoices_RestrictedAds_Text), new String[]{"https://oag.ca.gov/privacy/ccpa", "https://support.google.com/google-ads/answer/9614122?hl=en"}), null, d.b, C4867a.f16541c, C4867a.f16542d, false),
    DIRECT_MARKETING(C4861R.C4863id.dmCard, C4861R.C4862drawable.ic_deals_and_promo, C4861R.string.AdsChoices_dm_title, Integer.valueOf(C4861R.string.AdsChoices_dm_text), null, null, c.h, e.j, f.j, false, 528, null);
    
    private final l<OptOutRestAdapter.OptOutsDto, AdsChoiceOptOutStatus> accessDto;
    private final k<Integer, String[]> htmlContent;
    private final int icon;

    /* renamed from: id */
    private final int f16540id;
    private final boolean modifiable;
    private final String moreInfoUrl;
    private final l<AbstractC8405a, Boolean> optIn;
    private final l<AbstractC8405a, Boolean> optOut;
    private final Integer text;
    private final int title;

    /* renamed from: com.truecaller.wizard.adschoices.AdsChoice$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/wizard/adschoices/AdsChoice$a.class */
    public static final class C4867a extends m implements l<AbstractC8405a, Boolean> {

        /* renamed from: c */
        public static final C4867a f16541c = new C4867a(0);

        /* renamed from: d */
        public static final C4867a f16542d = new C4867a(1);

        /* renamed from: b */
        public final /* synthetic */ int f16543b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4867a(int i) {
            super(1);
            this.f16543b = i;
        }

        /* renamed from: d */
        public final Object m34278d(Object obj) {
            int i = this.f16543b;
            if (i == 0) {
                s1.z.c.l.e((AbstractC8405a) obj, "$receiver");
                throw new UnsupportedOperationException("Opt-out not supprted for restricted ads");
            } else if (i != 1) {
                throw null;
            } else {
                s1.z.c.l.e((AbstractC8405a) obj, "$receiver");
                throw new UnsupportedOperationException("Opt-it not supprted for restricted ads");
            }
        }
    }

    static {
        int i = C4861R.C4863id.adsCard;
        int i2 = C4861R.C4862drawable.ic_show_ads;
    }

    AdsChoice(int i, int i2, int i3, Integer num, k kVar, String str, l lVar, l lVar2, l lVar3, boolean z) {
        this.f16540id = i;
        this.icon = i2;
        this.title = i3;
        this.text = num;
        this.htmlContent = kVar;
        this.moreInfoUrl = str;
        this.accessDto = lVar;
        this.optOut = lVar2;
        this.optIn = lVar3;
        this.modifiable = z;
    }

    /* synthetic */ AdsChoice(int i, int i2, int i3, Integer num, k kVar, String str, l lVar, l lVar2, l lVar3, boolean z, int i4, f fVar) {
        this(i, i2, i3, num, (i4 & 16) != 0 ? null : kVar, str, lVar, lVar2, lVar3, (i4 & 512) != 0 ? true : z);
    }

    public final l<OptOutRestAdapter.OptOutsDto, AdsChoiceOptOutStatus> getAccessDto() {
        return this.accessDto;
    }

    public final k<Integer, String[]> getHtmlContent() {
        return this.htmlContent;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getId() {
        return this.f16540id;
    }

    public final boolean getModifiable() {
        return this.modifiable;
    }

    public final String getMoreInfoUrl() {
        return this.moreInfoUrl;
    }

    public final l<AbstractC8405a, Boolean> getOptIn() {
        return this.optIn;
    }

    public final l<AbstractC8405a, Boolean> getOptOut() {
        return this.optOut;
    }

    public final Integer getText() {
        return this.text;
    }

    public final int getTitle() {
        return this.title;
    }
}
