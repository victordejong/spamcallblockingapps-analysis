package com.verizon.ads.omsdk;

import android.content.Context;
import com.iab.omid.library.verizonmedia.a;
import com.iab.omid.library.verizonmedia.adsession.i;
import com.iab.omid.library.verizonmedia.d;
import com.verizon.ads.Logger;
import com.verizon.ads.VASAds;
import com.verizon.ads.utils.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/omsdk/OpenMeasurementService.class */
public class OpenMeasurementService {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35583a = Logger.getInstance(OpenMeasurementService.class);

    /* renamed from: b  reason: collision with root package name */
    private static OpenMeasurementService f35584b;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<Context> f35585c;

    private OpenMeasurementService(Context context) {
        this.f35585c = new WeakReference<>(context);
        if (context != null) {
            a.a(context);
        } else {
            f35583a.e("context is null.");
            throw new IllegalArgumentException("context cannot be null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static OpenMeasurementService a() {
        return f35584b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context) {
        if (f35584b == null) {
            f35584b = new OpenMeasurementService(context);
        }
    }

    public String enhanceHTML(String str) throws IOException {
        if (this.f35585c.get() != null) {
            return d.a(getOMSDKJS(), str);
        }
        f35583a.e("context is null. Cannot enhance HTML with omsdk js.");
        return str;
    }

    public String getOMSDKJS() throws IOException {
        Context context = this.f35585c.get();
        if (context == null) {
            f35583a.e("context is null. Cannot load omsdk js");
            return null;
        }
        InputStream open = context.getAssets().open("omsdk/omsdk-v1.js");
        String convertStreamToString = IOUtils.convertStreamToString(open);
        IOUtils.closeStream(open);
        return convertStreamToString;
    }

    public i getPartner() {
        try {
            String str = VASAds.getSDKInfo().version;
            com.iab.omid.library.verizonmedia.d.d.a("Verizonmedia", "Name is null or empty");
            com.iab.omid.library.verizonmedia.d.d.a(str, "Version is null or empty");
            return new i("Verizonmedia", str);
        } catch (Exception e) {
            f35583a.e("Error creating partner", e);
            return null;
        }
    }
}
