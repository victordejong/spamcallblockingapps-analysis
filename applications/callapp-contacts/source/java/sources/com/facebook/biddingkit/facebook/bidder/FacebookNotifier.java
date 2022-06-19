package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import com.facebook.biddingkit.facebook.bidder.C10148b;
import com.facebook.biddingkit.http.client.C10157a;
import com.facebook.biddingkit.http.client.C10158b;
import com.facebook.biddingkit.http.client.C10162f;
import com.facebook.biddingkit.http.p296a.C10155b;
import com.facebook.biddingkit.http.p296a.EnumC10153a;
import com.facebook.biddingkit.p290a.EnumC10114b;
import com.facebook.biddingkit.p291b.C10115a;
import com.facebook.biddingkit.p292c.C10121e;
import com.facebook.biddingkit.p293d.C10123b;
import com.facebook.biddingkit.p294e.C10142b;
import com.facebook.biddingkit.p295f.AbstractC10143a;
import com.facebook.biddingkit.p295f.AbstractC10144b;
import io.bidmachine.BidMachineFetcher;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/FacebookNotifier.class */
public class FacebookNotifier {
    private static final String AB_TEST_SEGMENT = "${AB_TEST_SEGMENT}";
    private static final String APP_FBID = "${APP_FBID}";
    private static final String AUCTION_ID = "${AUCTION_ID}";
    private static final String AUCTION_LOSS_CODE = "${AUCTION_LOSS}";
    private static final String AUCTION_PRICE = "${AUCTION_PRICE}";
    private static final String BUNDLE = "${BUNDLE}";
    private static final String IDFA = "${IDFA}";
    private static final String PARTNER_FBID = "${PARTNER_FBID}";
    private static final String PHASE = "${PHASE}";
    private static final String PLACEMENT_FBID = "${PLACEMENT_FBID}";
    private static final String TAG = "FacebookNotifier";
    private static final String WINNER_NAME = "${WINNER_NAME}";
    private static final String WINNER_TYPE = "${WINNER_TYPE}";
    private final int DEFAULT_TIMEOUT_MS;
    private final C10148b.C10150a mBidderData;
    private final C10152d mConfiguration;
    private FacebookBid mFacebookBid;
    private String mIdfa;
    private boolean mIsDefault;
    private String mPackageName;

    /* renamed from: com.facebook.biddingkit.facebook.bidder.FacebookNotifier$2 */
    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/FacebookNotifier$2.class */
    public static final /* synthetic */ class C101462 {

        /* renamed from: a */
        static final /* synthetic */ int[] f33545a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC10153a.values().length];
            f33545a = iArr;
            try {
                iArr[EnumC10153a.NO_BID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33545a[EnumC10153a.BAD_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33545a[EnumC10153a.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public FacebookNotifier(C10148b.C10150a c10150a, C10152d c10152d) {
        this.DEFAULT_TIMEOUT_MS = 2000;
        this.mPackageName = "";
        this.mIdfa = "";
        this.mBidderData = c10150a;
        this.mConfiguration = c10152d;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected FacebookNotifier(java.lang.String r8, com.facebook.biddingkit.facebook.bidder.C10152d r9) {
        /*
            r7 = this;
            com.facebook.biddingkit.facebook.bidder.b$a r0 = new com.facebook.biddingkit.facebook.bidder.b$a
            r1 = r0
            java.lang.String r2 = ""
            java.lang.String r3 = ""
            r4 = 0
            java.lang.String r5 = ""
            r1.<init>(r2, r3, r4, r5)
            r10 = r0
            r0 = r10
            r1 = r8
            r0.f33555d = r1
            r0 = r7
            r1 = r10
            r2 = r9
            r0.<init>(r1, r2)
            r0 = r7
            r1 = 1
            r0.mIsDefault = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.biddingkit.facebook.bidder.FacebookNotifier.<init>(java.lang.String, com.facebook.biddingkit.facebook.bidder.d):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v14, types: [double] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    protected static Double getCPMCents(AbstractC10144b abstractC10144b, AbstractC10144b abstractC10144b2) {
        Double d;
        ?? r5 = false;
        if (abstractC10144b == null) {
            d = Double.valueOf(0.0d);
        } else if (C10148b.f33546a.equals(abstractC10144b.m23341b())) {
            if (abstractC10144b2 != null) {
                r5 = abstractC10144b2.m23342a();
            }
            d = Double.valueOf(r5 == true ? 1.0d : 0.0d);
        } else {
            d = Double.valueOf(abstractC10144b.m23342a());
        }
        return d;
    }

    private String getEndpoint() {
        FacebookBid facebookBid = this.mFacebookBid;
        return (facebookBid == null || TextUtils.isEmpty(facebookBid.getLurl())) ? this.mConfiguration.f33564b : this.mFacebookBid.getLurl();
    }

    protected static String getEntryName(AbstractC10144b abstractC10144b) {
        if (abstractC10144b == null) {
            return null;
        }
        return abstractC10144b.m23341b();
    }

    private int getTimeout() {
        return 2000;
    }

    protected String getIdfa() {
        return TextUtils.isEmpty(this.mIdfa) ? C10142b.m23344b(C10115a.m23377a()) : this.mIdfa;
    }

    protected EnumC10114b getLossCode(String str) {
        if (this.mIsDefault) {
            return EnumC10114b.DID_NOT_PARTICIPATE;
        }
        if (this.mFacebookBid != null) {
            int i = C101462.f33545a[this.mFacebookBid.getStatusCode().ordinal()];
            if (i == 1 || i == 2) {
                return EnumC10114b.NO_BID;
            }
            if (i == 3) {
                return EnumC10114b.TIMEOUT;
            }
        }
        return C10148b.f33546a.equals(str) ? EnumC10114b.WIN : this.mFacebookBid == null ? EnumC10114b.TIMEOUT : EnumC10114b.OUTBID;
    }

    protected String getPackageName() {
        return TextUtils.isEmpty(this.mPackageName) ? C10115a.m23377a().getPackageName() : this.mPackageName;
    }

    public void notifyBidderWinner(String str, AbstractC10143a abstractC10143a) {
        AbstractC10144b[] abstractC10144bArr = new AbstractC10144b[2];
        if (abstractC10143a != null) {
            for (AbstractC10144b abstractC10144b : abstractC10143a.m23343a()) {
                if (C10121e.m23373a(abstractC10144b.m23341b())) {
                    if (abstractC10144bArr[0] == null) {
                        abstractC10144bArr[0] = abstractC10144b;
                    } else if (abstractC10144bArr[0].m23342a() < abstractC10144b.m23342a()) {
                        abstractC10144bArr[1] = abstractC10144bArr[0];
                        abstractC10144bArr[0] = abstractC10144b;
                    } else if (abstractC10144bArr[1] == null) {
                        abstractC10144bArr[1] = abstractC10144b;
                    } else if (abstractC10144bArr[1].m23342a() < abstractC10144b.m23342a()) {
                        abstractC10144bArr[1] = abstractC10144b;
                    }
                }
            }
        }
        notifyWinner(str, getEntryName(abstractC10144bArr[0]), getCPMCents(abstractC10144bArr[0], abstractC10144bArr[1]), false);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [double] */
    public void notifyDisplayWinner(String str, AbstractC10144b abstractC10144b) {
        notifyWinner(str, getEntryName(abstractC10144b), Double.valueOf(abstractC10144b == null ? (char) 0 : abstractC10144b.m23342a()), true);
    }

    public void notifyWinner(String str, String str2, Double d, boolean z) {
        String processUrl = processUrl(z, str, str2, d);
        int timeout = getTimeout();
        C10157a m23336a = C10155b.m23336a();
        m23336a.m23334a(timeout);
        C10162f m23333a = m23336a.m23333a(new C10158b(processUrl, null));
        String str3 = JsonReaderKt.NULL;
        if (z) {
            StringBuilder sb = new StringBuilder("Facebook display winner notified with http status ");
            if (m23333a != null) {
                str3 = String.valueOf(m23333a.f33581a);
            }
            sb.append(str3);
            return;
        }
        StringBuilder sb2 = new StringBuilder("Facebook bidder winner notified with http status ");
        if (m23333a != null) {
            str3 = String.valueOf(m23333a.f33581a);
        }
        sb2.append(str3);
    }

    protected String processUrl(boolean z, String str, String str2, Double d) {
        String str3;
        String endpoint = getEndpoint();
        String str4 = endpoint;
        try {
            String[] split = this.mBidderData.f33553b.split("_", 2);
            Iterator<Map.Entry<String, String>> it2 = new HashMap<String, String>(split.length >= 2 ? split[1] : "", str, str2, d, z) { // from class: com.facebook.biddingkit.facebook.bidder.FacebookNotifier.1

                /* renamed from: a */
                final /* synthetic */ String f33539a;

                /* renamed from: b */
                final /* synthetic */ String f33540b;

                /* renamed from: c */
                final /* synthetic */ String f33541c;

                /* renamed from: d */
                final /* synthetic */ Double f33542d;

                /* renamed from: e */
                final /* synthetic */ boolean f33543e;

                {
                    FacebookNotifier.this = this;
                    this.f33539a = r9;
                    this.f33540b = str;
                    this.f33541c = str2;
                    this.f33542d = d;
                    this.f33543e = z;
                    put(FacebookNotifier.PARTNER_FBID, this.mBidderData.f33552a);
                    put(FacebookNotifier.APP_FBID, this.mBidderData.f33552a);
                    put(FacebookNotifier.PLACEMENT_FBID, r9);
                    put(FacebookNotifier.BUNDLE, this.getPackageName());
                    put(FacebookNotifier.IDFA, this.getIdfa());
                    put(FacebookNotifier.AUCTION_ID, this.mBidderData.f33555d);
                    put(FacebookNotifier.AB_TEST_SEGMENT, str);
                    put(FacebookNotifier.AUCTION_LOSS_CODE, this.getLossCode(str2).getStringValue());
                    put(FacebookNotifier.AUCTION_PRICE, Double.toString(d.doubleValue() / 100.0d));
                    put(FacebookNotifier.WINNER_NAME, str2 == null ? "" : str2);
                    put(FacebookNotifier.WINNER_TYPE, C10121e.m23373a(str2) ? "bidding" : "waterfall");
                    put(FacebookNotifier.PHASE, z ? BidMachineFetcher.AD_TYPE_DISPLAY : "auction");
                }
            }.entrySet().iterator();
            String str5 = endpoint;
            while (true) {
                str4 = str5;
                str3 = str5;
                if (!it2.hasNext()) {
                    break;
                }
                String str6 = str5;
                Map.Entry<String, String> next = it2.next();
                String str7 = str5;
                String value = next.getValue();
                String str8 = value;
                if (value == null) {
                    str8 = "";
                }
                str5 = str5.replace(next.getKey(), str8);
            }
        } catch (Throwable th) {
            C10123b.m23369a(TAG, "Failed processing the Url", th);
            str3 = str4;
        }
        return str3;
    }

    public void setFacebookBid(FacebookBid facebookBid) {
        this.mFacebookBid = facebookBid;
    }

    protected void setIdfa(String str) {
        this.mIdfa = str;
    }

    protected void setPackageName(String str) {
        this.mPackageName = str;
    }
}
