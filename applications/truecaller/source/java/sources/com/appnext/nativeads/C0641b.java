package com.appnext.nativeads;

import android.content.Context;
import android.net.Uri;
import android.util.Pair;
import com.appnext.base.C0472a;
import com.appnext.core.AbstractC0501Ad;
import com.appnext.core.AbstractC0533d;
import com.appnext.core.AppnextAd;
import com.appnext.core.C0519a;
import com.appnext.core.C0551g;
import com.appnext.core.C0554h;
import com.appnext.core.SettingsManager;
import com.appnext.nativeads.NativeAdRequest;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.appnext.nativeads.b */
/* loaded from: classes-dex2jar.jar:com/appnext/nativeads/b.class */
public class C0641b extends AbstractC0533d {

    /* renamed from: fZ */
    private static C0641b f1981fZ;

    /* renamed from: r */
    private final int f1982r = 50;

    /* renamed from: a */
    private static int m42207a(Context context, NativeAdData nativeAdData) {
        try {
            if (nativeAdData.getCptList().equals("") || nativeAdData.getCptList().equals("[]")) {
                return 0;
            }
            try {
                JSONArray jSONArray = new JSONArray(nativeAdData.getCptList());
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (C0551g.m42381b(context, jSONArray.getString(i))) {
                        return 0;
                    }
                }
                return 3;
            } catch (JSONException e) {
                C0472a.m42577a("NativeAdsManager$checkCPT", e);
                return 0;
            }
        } catch (Throwable th) {
            C0472a.m42577a("NativeAdsManager$checkCPT", th);
            return 3;
        }
    }

    /* renamed from: a */
    public static String m42205a(NativeAdRequest nativeAdRequest, AppnextAd appnextAd) {
        String str;
        String str2;
        Throwable th;
        NativeAdRequest.VideoQuality videoQuality;
        NativeAdRequest.VideoQuality videoQuality2;
        try {
            videoQuality = nativeAdRequest.getVideoQuality();
            videoQuality2 = NativeAdRequest.VideoQuality.HIGH;
        } catch (Throwable th2) {
            th = th2;
            str2 = "";
        }
        try {
        } catch (Throwable th3) {
            th = th3;
            str2 = nativeAdRequest;
            C0472a.m42577a("NativeAdsManager$getVideoUrl", th);
            str = str2;
            return str;
        }
        if (videoQuality == videoQuality2 && nativeAdRequest.getVideoLength() == NativeAdRequest.VideoLength.LONG) {
            String videoUrlHigh30Sec = appnextAd.getVideoUrlHigh30Sec();
            str2 = videoUrlHigh30Sec;
            if (videoUrlHigh30Sec.equals("")) {
                str = appnextAd.getVideoUrl30Sec();
            }
            str = str2;
        } else {
            NativeAdRequest.VideoQuality videoQuality3 = nativeAdRequest.getVideoQuality();
            NativeAdRequest.VideoQuality videoQuality4 = NativeAdRequest.VideoQuality.LOW;
            if (videoQuality3 == videoQuality4 && nativeAdRequest.getVideoLength() == NativeAdRequest.VideoLength.LONG) {
                String videoUrl30Sec = appnextAd.getVideoUrl30Sec();
                str2 = videoUrl30Sec;
                if (videoUrl30Sec.equals("")) {
                    str = appnextAd.getVideoUrlHigh30Sec();
                }
                str = str2;
            } else {
                if (nativeAdRequest.getVideoQuality() == videoQuality2 && nativeAdRequest.getVideoLength() == NativeAdRequest.VideoLength.SHORT) {
                    String videoUrlHigh = appnextAd.getVideoUrlHigh();
                    str2 = videoUrlHigh;
                    if (videoUrlHigh.equals("")) {
                        str = appnextAd.getVideoUrl();
                    }
                } else {
                    str2 = "";
                    if (nativeAdRequest.getVideoQuality() == videoQuality4) {
                        str2 = "";
                        if (nativeAdRequest.getVideoLength() == NativeAdRequest.VideoLength.SHORT) {
                            String videoUrl = appnextAd.getVideoUrl();
                            str2 = videoUrl;
                            if (videoUrl.equals("")) {
                                str2 = appnextAd.getVideoUrlHigh();
                            }
                        }
                    }
                }
                str = str2;
            }
        }
        return str;
    }

    /* renamed from: a */
    private boolean m42206a(AppnextAd appnextAd, NativeAdRequest nativeAdRequest) {
        return nativeAdRequest.getCreativeType() == NativeAdRequest.CreativeType.ALL ? m42203b(appnextAd) || !m42205a(nativeAdRequest, appnextAd).equals("") : nativeAdRequest.getCreativeType() == NativeAdRequest.CreativeType.STATIC_ONLY ? m42203b(appnextAd) : nativeAdRequest.getCreativeType() == NativeAdRequest.CreativeType.VIDEO_ONLY && !m42205a(nativeAdRequest, appnextAd).equals("");
    }

    /* renamed from: b */
    public static String m42202b(String str) {
        String str2;
        String substring = str.substring(str.lastIndexOf(StringConstant.SLASH) + 1);
        String str3 = substring;
        if (substring.contains("?")) {
            str3 = substring.substring(0, substring.indexOf("?"));
        }
        try {
            String queryParameter = Uri.parse(str).getQueryParameter("rnd");
            str2 = str3;
            if (queryParameter != null) {
                str2 = str3;
                if (!queryParameter.equals("")) {
                    str2 = str3.substring(0, str3.lastIndexOf(46)) + AnalyticsConstants.DELIMITER_MAIN + queryParameter + str3.substring(str3.lastIndexOf(46));
                }
            }
        } catch (Throwable th) {
            C0472a.m42577a("NativeAdsManager$extractFileNameFromPath", th);
            str2 = str3;
        }
        return str2;
    }

    /* renamed from: b */
    public static boolean m42203b(AppnextAd appnextAd) {
        return !appnextAd.getWideImageURL().equals("");
    }

    /* renamed from: be */
    public static C0641b m42201be() {
        C0641b c0641b;
        synchronized (C0641b.class) {
            try {
                if (f1981fZ == null) {
                    f1981fZ = new C0641b();
                }
                c0641b = f1981fZ;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0641b;
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final int mo42119a(Context context, C0554h c0554h) {
        try {
            NativeAdData nativeAdData = new NativeAdData((AppnextAd) c0554h);
            int m42207a = m42207a(context, nativeAdData);
            if (m42207a != 0) {
                return m42207a;
            }
            if (nativeAdData.getCampaignGoal().equals("new") && C0551g.m42381b(context, nativeAdData.getAdPackage())) {
                return 1;
            }
            if (nativeAdData.getCampaignGoal().equals("existing") && !C0551g.m42381b(context, nativeAdData.getAdPackage())) {
                return 2;
            }
            if (m42203b((AppnextAd) c0554h)) {
                return 0;
            }
            AppnextAd appnextAd = (AppnextAd) c0554h;
            boolean z = true;
            if (appnextAd.getVideoUrl().equals("")) {
                z = true;
                if (appnextAd.getVideoUrlHigh().equals("")) {
                    z = true;
                    if (appnextAd.getVideoUrl30Sec().equals("")) {
                        z = !appnextAd.getVideoUrlHigh30Sec().equals("");
                    }
                }
            }
            return z ? 0 : 3;
        } catch (Throwable th) {
            C0472a.m42577a("NativeAdsManager$adFilter", th);
            return 3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final AppnextAd m42210a(Context context, AbstractC0501Ad abstractC0501Ad, NativeAdRequest nativeAdRequest) {
        ArrayList<?> ads;
        if (m42424j(abstractC0501Ad) == null || (ads = m42424j(abstractC0501Ad).getAds()) == null) {
            return null;
        }
        return m42208a(context, abstractC0501Ad, (ArrayList<AppnextAd>) ads, nativeAdRequest);
    }

    /* renamed from: a */
    public final AppnextAd m42208a(Context context, AbstractC0501Ad abstractC0501Ad, ArrayList<AppnextAd> arrayList, NativeAdRequest nativeAdRequest) {
        AppnextAd next;
        try {
            Iterator<AppnextAd> it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    return null;
                }
                next = it.next();
            } while (!m42206a(next, nativeAdRequest));
            next.getBannerID();
            abstractC0501Ad.getAUID();
            return next;
        } catch (Throwable th) {
            C0472a.m42577a("NativeAdsManager$getFirst", th);
            return null;
        }
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final String mo42120a(Context context, AbstractC0501Ad abstractC0501Ad, String str, ArrayList<Pair<String, String>> arrayList) {
        try {
            StringBuilder sb = new StringBuilder("&auid=");
            sb.append(abstractC0501Ad != null ? abstractC0501Ad.getAUID() : "1000");
            sb.append("&creative=");
            sb.append(abstractC0501Ad != null ? Integer.valueOf(((NativeAdRequest) ((NativeAdObject) abstractC0501Ad).getAdRequest()).getCreativeType().ordinal()) : NativeAdRequest.CreativeType.ALL);
            sb.append("&vidmin=");
            sb.append(abstractC0501Ad == null ? "" : Integer.valueOf(abstractC0501Ad.getMinVideoLength()));
            sb.append("&vidmax=");
            sb.append(abstractC0501Ad == null ? "" : Integer.valueOf(abstractC0501Ad.getMaxVideoLength()));
            return sb.toString();
        } catch (Throwable th) {
            C0472a.m42577a("NativeAdsManager$urlSuffix", th);
            return "";
        }
    }

    /* renamed from: a */
    public final ArrayList<AppnextAd> m42204a(String str, NativeAdRequest nativeAdRequest, ArrayList<AppnextAd> arrayList) {
        ArrayList<AppnextAd> arrayList2 = new ArrayList<>();
        Iterator<AppnextAd> it = arrayList.iterator();
        while (it.hasNext()) {
            AppnextAd next = it.next();
            if (m42206a(next, nativeAdRequest)) {
                arrayList2.add(next);
            }
        }
        return arrayList2;
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final void mo42121a(Context context, AbstractC0501Ad abstractC0501Ad, C0519a c0519a) throws Exception {
        try {
            File[] listFiles = new File(context.getFilesDir().getAbsolutePath() + "/data/appnext/videos/").listFiles();
            if (listFiles != null && listFiles.length != 0) {
                Arrays.sort(listFiles, new Comparator<File>() { // from class: com.appnext.nativeads.b.1
                    @Override // java.util.Comparator
                    public final /* synthetic */ int compare(File file, File file2) {
                        return Long.valueOf(file.lastModified()).compareTo(Long.valueOf(file2.lastModified()));
                    }
                });
                int parseInt = Integer.parseInt(C0640a.m42211bc().m42476y("num_saved_videos")) - 1;
                if (listFiles.length > parseInt) {
                    for (int i = 0; i < listFiles.length - parseInt; i++) {
                        listFiles[i].delete();
                    }
                }
            }
            NativeAdRequest nativeAdRequest = (NativeAdRequest) ((NativeAdObject) abstractC0501Ad).getAdRequest();
            if (nativeAdRequest.getVideoLength() == NativeAdRequest.VideoLength.DEFAULT) {
                ((NativeAdRequest) ((NativeAdObject) abstractC0501Ad).getAdRequest()).setVideoLength(NativeAdRequest.VideoLength.fromInt(Integer.parseInt(C0640a.m42211bc().m42476y("default_video_length"))));
            }
            if (nativeAdRequest.getVideoQuality() == NativeAdRequest.VideoQuality.DEFAULT) {
                nativeAdRequest.setVideoQuality(NativeAdRequest.VideoQuality.fromInt(Integer.parseInt(C0640a.m42211bc().m42476y("default_video_quality"))));
            }
            AppnextAd m42210a = m42201be().m42210a(context, abstractC0501Ad, nativeAdRequest);
            if (m42210a == null || nativeAdRequest.getCreativeType() == NativeAdRequest.CreativeType.STATIC_ONLY) {
                return;
            }
            if (nativeAdRequest.getCachingPolicy() != NativeAdRequest.CachingPolicy.ALL && nativeAdRequest.getCachingPolicy() != NativeAdRequest.CachingPolicy.VIDEO_ONLY) {
                return;
            }
            String m42205a = m42205a(nativeAdRequest, m42210a);
            if (m42205a.equals("")) {
                return;
            }
            String m42202b = m42202b(m42205a);
            String str = context.getFilesDir().getAbsolutePath() + "/data/appnext/videos/";
            File file = new File(str + m42202b);
            if (file.exists()) {
                file.setLastModified(System.currentTimeMillis());
                StringBuilder sb = new StringBuilder();
                sb.append(file.getPath());
                sb.append(" exists");
                return;
            }
            new File(str).mkdirs();
            URL url = new URL(m42205a);
            url.openConnection().connect();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream(), 1024);
            FileOutputStream fileOutputStream = new FileOutputStream(str + m42202b + ".tmp");
            byte[] bArr = new byte[1024];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    StringBuilder sb2 = new StringBuilder("downloaded ");
                    sb2.append(str);
                    sb2.append(m42202b);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    bufferedInputStream.close();
                    File file2 = new File(str + m42202b + ".tmp");
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(str);
                    sb3.append(m42202b);
                    file2.renameTo(new File(sb3.toString()));
                    file2.delete();
                    return;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        }
    }

    /* renamed from: a */
    public final void m42209a(Context context, AbstractC0501Ad abstractC0501Ad, String str, AbstractC0533d.AbstractC0538a abstractC0538a, NativeAdRequest nativeAdRequest) {
        ((NativeAdObject) abstractC0501Ad).setAdRequest(new NativeAdRequest(nativeAdRequest));
        super.m42445a(context, abstractC0501Ad, str, abstractC0538a, true);
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final void mo42116a(AbstractC0501Ad abstractC0501Ad, String str, String str2) {
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final <T> void mo42115a(String str, AbstractC0501Ad abstractC0501Ad, T t) {
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: a */
    public final boolean mo42117a(AbstractC0501Ad abstractC0501Ad) {
        return super.mo42117a(abstractC0501Ad);
    }

    @Override // com.appnext.core.AbstractC0533d
    /* renamed from: c */
    public SettingsManager mo42113c(AbstractC0501Ad abstractC0501Ad) {
        return C0640a.m42211bc();
    }

    /* renamed from: e */
    public final ArrayList<AppnextAd> m42200e(AbstractC0501Ad abstractC0501Ad) {
        return m42424j(abstractC0501Ad).getAds();
    }
}
