package com.mopub.network;

import com.mopub.common.Preconditions;
import com.mopub.common.util.ResponseHeader;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/MultiAdResponse.class */
public class MultiAdResponse implements Iterator<AdResponse> {

    /* renamed from: c */
    public static ServerOverrideListener f9239c;

    /* renamed from: a */
    public final Iterator<AdResponse> f9240a;

    /* renamed from: b */
    public String f9241b;

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/MultiAdResponse$ServerOverrideListener.class */
    public interface ServerOverrideListener {
        void onForceExplicitNo(String str);

        void onForceGdprApplies();

        void onInvalidateConsent(String str);

        void onReacquireConsent(String str);

        void onRequestSuccess(String str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0298, code lost:
        r0 = r0.iterator();
        r8.f9240a = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x02a9, code lost:
        if (r0.hasNext() != false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02ac, code lost:
        r9 = 30000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02b5, code lost:
        if (r18 == null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02b8, code lost:
        r9 = r18.getRefreshTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x02cc, code lost:
        throw new com.mopub.network.MoPubNetworkError("No ads found for ad unit.", com.mopub.network.MoPubNetworkError$Reason.NO_FILL, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x02cd, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MultiAdResponse(android.content.Context r9, com.mopub.volley.NetworkResponse r10, com.mopub.common.AdFormat r11, java.lang.String r12) throws org.json.JSONException, com.mopub.network.MoPubNetworkError {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.network.MultiAdResponse.<init>(android.content.Context, com.mopub.volley.NetworkResponse, com.mopub.common.AdFormat, java.lang.String):void");
    }

    /* renamed from: a */
    public static boolean m36173a(JSONObject jSONObject) {
        Preconditions.checkNotNull(jSONObject);
        return HeaderUtils.extractBooleanHeader(jSONObject.optJSONObject(ResponseHeader.METADATA.getKey()), ResponseHeader.WARMUP, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x041c  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0501 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x035e A[Catch: JSONException -> 0x058f, TryCatch #3 {JSONException -> 0x058f, blocks: (B:69:0x0352, B:71:0x035e), top: B:143:0x0352 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0386  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mopub.network.AdResponse m36172b(android.content.Context r6, com.mopub.volley.NetworkResponse r7, org.json.JSONObject r8, java.lang.String r9, com.mopub.common.AdFormat r10, java.lang.String r11, java.lang.String r12) throws org.json.JSONException, com.mopub.network.MoPubNetworkError {
        /*
            Method dump skipped, instructions count: 1455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.network.MultiAdResponse.m36172b(android.content.Context, com.mopub.volley.NetworkResponse, org.json.JSONObject, java.lang.String, com.mopub.common.AdFormat, java.lang.String, java.lang.String):com.mopub.network.AdResponse");
    }

    public static void setServerOverrideListener(ServerOverrideListener serverOverrideListener) {
        f9239c = serverOverrideListener;
    }

    public String getFailURL() {
        return this.f9241b;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f9240a.hasNext();
    }

    @Override // java.util.Iterator
    public AdResponse next() {
        return this.f9240a.next();
    }
}
