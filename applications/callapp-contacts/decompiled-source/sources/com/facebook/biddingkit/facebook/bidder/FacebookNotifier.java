package com.facebook.biddingkit.facebook.bidder;

import android.text.TextUtils;
import com.facebook.biddingkit.c.e;
import com.facebook.biddingkit.facebook.bidder.b;
import com.facebook.biddingkit.http.a.a;
import com.facebook.biddingkit.http.client.f;
import io.bidmachine.BidMachineFetcher;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/FacebookNotifier.class */
class FacebookNotifier {
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
    private final b.a mBidderData;
    private final d mConfiguration;
    private FacebookBid mFacebookBid;
    private String mIdfa;
    private boolean mIsDefault;
    private String mPackageName;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.biddingkit.facebook.bidder.FacebookNotifier$2  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/facebook/bidder/FacebookNotifier$2.class */
    public static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f19739a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.values().length];
            f19739a = iArr;
            try {
                iArr[a.NO_BID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f19739a[a.BAD_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f19739a[a.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public FacebookNotifier(b.a aVar, d dVar) {
        this.DEFAULT_TIMEOUT_MS = 2000;
        this.mPackageName = "";
        this.mIdfa = "";
        this.mBidderData = aVar;
        this.mConfiguration = dVar;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected FacebookNotifier(java.lang.String r8, com.facebook.biddingkit.facebook.bidder.d r9) {
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
            r0.f19749d = r1
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

    protected static Double getCPMCents(com.facebook.biddingkit.f.b bVar, com.facebook.biddingkit.f.b bVar2) {
        Double d2;
        double d3 = 0.0d;
        if (bVar == null) {
            d2 = Double.valueOf(0.0d);
        } else if (b.f19740a.equals(bVar.b())) {
            if (bVar2 != null) {
                d3 = bVar2.a();
            }
            d2 = Double.valueOf(d3);
        } else {
            d2 = Double.valueOf(bVar.a());
        }
        return d2;
    }

    private String getEndpoint() {
        FacebookBid facebookBid = this.mFacebookBid;
        return (facebookBid == null || TextUtils.isEmpty(facebookBid.getLurl())) ? this.mConfiguration.f19752b : this.mFacebookBid.getLurl();
    }

    protected static String getEntryName(com.facebook.biddingkit.f.b bVar) {
        if (bVar == null) {
            return null;
        }
        return bVar.b();
    }

    private int getTimeout() {
        return 2000;
    }

    protected String getIdfa() {
        return TextUtils.isEmpty(this.mIdfa) ? com.facebook.biddingkit.e.b.b(com.facebook.biddingkit.b.a.a()) : this.mIdfa;
    }

    protected com.facebook.biddingkit.a.b getLossCode(String str) {
        if (this.mIsDefault) {
            return com.facebook.biddingkit.a.b.DID_NOT_PARTICIPATE;
        }
        if (this.mFacebookBid != null) {
            int i = AnonymousClass2.f19739a[this.mFacebookBid.getStatusCode().ordinal()];
            if (i == 1 || i == 2) {
                return com.facebook.biddingkit.a.b.NO_BID;
            }
            if (i == 3) {
                return com.facebook.biddingkit.a.b.TIMEOUT;
            }
        }
        return b.f19740a.equals(str) ? com.facebook.biddingkit.a.b.WIN : this.mFacebookBid == null ? com.facebook.biddingkit.a.b.TIMEOUT : com.facebook.biddingkit.a.b.OUTBID;
    }

    protected String getPackageName() {
        return TextUtils.isEmpty(this.mPackageName) ? com.facebook.biddingkit.b.a.a().getPackageName() : this.mPackageName;
    }

    public void notifyBidderWinner(String str, com.facebook.biddingkit.f.a aVar) {
        com.facebook.biddingkit.f.b[] bVarArr = new com.facebook.biddingkit.f.b[2];
        if (aVar != null) {
            for (com.facebook.biddingkit.f.b bVar : aVar.a()) {
                if (e.a(bVar.b())) {
                    if (bVarArr[0] == null) {
                        bVarArr[0] = bVar;
                    } else if (bVarArr[0].a() < bVar.a()) {
                        bVarArr[1] = bVarArr[0];
                        bVarArr[0] = bVar;
                    } else if (bVarArr[1] == null) {
                        bVarArr[1] = bVar;
                    } else if (bVarArr[1].a() < bVar.a()) {
                        bVarArr[1] = bVar;
                    }
                }
            }
        }
        notifyWinner(str, getEntryName(bVarArr[0]), getCPMCents(bVarArr[0], bVarArr[1]), false);
    }

    public void notifyDisplayWinner(String str, com.facebook.biddingkit.f.b bVar) {
        notifyWinner(str, getEntryName(bVar), Double.valueOf(bVar == null ? 0.0d : bVar.a()), true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifyWinner(String str, String str2, Double d2, boolean z) {
        String processUrl = processUrl(z, str, str2, d2);
        int timeout = getTimeout();
        com.facebook.biddingkit.http.client.a a2 = com.facebook.biddingkit.http.a.b.a();
        a2.a(timeout);
        f a3 = a2.a(new com.facebook.biddingkit.http.client.b(processUrl, null));
        String str3 = JsonReaderKt.NULL;
        if (z) {
            StringBuilder sb = new StringBuilder("Facebook display winner notified with http status ");
            if (a3 != null) {
                str3 = String.valueOf(a3.f19765a);
            }
            sb.append(str3);
            return;
        }
        StringBuilder sb2 = new StringBuilder("Facebook bidder winner notified with http status ");
        if (a3 != null) {
            str3 = String.valueOf(a3.f19765a);
        }
        sb2.append(str3);
    }

    protected String processUrl(boolean z, String str, String str2, Double d2) {
        String endpoint = getEndpoint();
        String str3 = endpoint;
        try {
            String[] split = this.mBidderData.f19747b.split("_", 2);
            Iterator<Map.Entry<String, String>> it2 = new HashMap<String, String>(split.length >= 2 ? split[1] : "", str, str2, d2, z) { // from class: com.facebook.biddingkit.facebook.bidder.FacebookNotifier.1

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ String f19735a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ String f19736b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ String f19737c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ Double f19738d;
                final /* synthetic */ boolean e;

                {
                    this.f19735a = r9;
                    this.f19736b = str;
                    this.f19737c = str2;
                    this.f19738d = d2;
                    this.e = z;
                    put(FacebookNotifier.PARTNER_FBID, FacebookNotifier.this.mBidderData.f19746a);
                    put(FacebookNotifier.APP_FBID, FacebookNotifier.this.mBidderData.f19746a);
                    put(FacebookNotifier.PLACEMENT_FBID, r9);
                    put(FacebookNotifier.BUNDLE, FacebookNotifier.this.getPackageName());
                    put(FacebookNotifier.IDFA, FacebookNotifier.this.getIdfa());
                    put(FacebookNotifier.AUCTION_ID, FacebookNotifier.this.mBidderData.f19749d);
                    put(FacebookNotifier.AB_TEST_SEGMENT, str);
                    put(FacebookNotifier.AUCTION_LOSS_CODE, FacebookNotifier.this.getLossCode(str2).getStringValue());
                    put(FacebookNotifier.AUCTION_PRICE, Double.toString(d2.doubleValue() / 100.0d));
                    put(FacebookNotifier.WINNER_NAME, str2 == null ? "" : str2);
                    put(FacebookNotifier.WINNER_TYPE, e.a(str2) ? "bidding" : "waterfall");
                    put(FacebookNotifier.PHASE, z ? BidMachineFetcher.AD_TYPE_DISPLAY : "auction");
                }
            }.entrySet().iterator();
            String str4 = endpoint;
            while (true) {
                str3 = str4;
                str3 = str4;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it2.next();
                String value = next.getValue();
                String str5 = value;
                if (value == null) {
                    str5 = "";
                }
                str4 = str4.replace(next.getKey(), str5);
            }
        } catch (Throwable th) {
            com.facebook.biddingkit.d.b.a(TAG, "Failed processing the Url", th);
        }
        return str3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
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
