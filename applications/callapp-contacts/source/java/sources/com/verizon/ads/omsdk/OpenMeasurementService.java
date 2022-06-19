package com.verizon.ads.omsdk;

import android.content.Context;
import com.iab.omid.library.verizonmedia.C16473a;
import com.iab.omid.library.verizonmedia.C16509d;
import com.iab.omid.library.verizonmedia.adsession.C16490i;
import com.iab.omid.library.verizonmedia.p450d.C16514d;
import com.verizon.ads.Logger;
import com.verizon.ads.VASAds;
import com.verizon.ads.utils.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/omsdk/OpenMeasurementService.class */
public class OpenMeasurementService {

    /* renamed from: a */
    private static final Logger f61648a = Logger.getInstance(OpenMeasurementService.class);

    /* renamed from: b */
    private static OpenMeasurementService f61649b;

    /* renamed from: c */
    private WeakReference<Context> f61650c;

    private OpenMeasurementService(Context context) {
        this.f61650c = new WeakReference<>(context);
        if (context != null) {
            C16473a.m7180a(context);
        } else {
            f61648a.m5565e("context is null.");
            throw new IllegalArgumentException("context cannot be null");
        }
    }

    /* renamed from: a */
    public static OpenMeasurementService m5364a() {
        return f61649b;
    }

    /* renamed from: a */
    public static void m5363a(Context context) {
        if (f61649b == null) {
            f61649b = new OpenMeasurementService(context);
        }
    }

    public String enhanceHTML(String str) throws IOException {
        if (this.f61650c.get() == null) {
            f61648a.m5565e("context is null. Cannot enhance HTML with omsdk js.");
            return str;
        }
        return C16509d.m7119a(getOMSDKJS(), str);
    }

    public String getOMSDKJS() throws IOException {
        Context context = this.f61650c.get();
        if (context == null) {
            f61648a.m5565e("context is null. Cannot load omsdk js");
            return null;
        }
        InputStream open = context.getAssets().open("omsdk/omsdk-v1.js");
        String convertStreamToString = IOUtils.convertStreamToString(open);
        IOUtils.closeStream(open);
        return convertStreamToString;
    }

    public C16490i getPartner() {
        try {
            String str = VASAds.getSDKInfo().version;
            C16514d.m7101a("Verizonmedia", "Name is null or empty");
            C16514d.m7101a(str, "Version is null or empty");
            return new C16490i("Verizonmedia", str);
        } catch (Exception e) {
            f61648a.m5564e("Error creating partner", e);
            return null;
        }
    }
}
