package net.pubnative.lite.sdk.vpaid.utils;

import android.content.Context;
import android.content.res.AssetManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import net.pubnative.lite.sdk.utils.Logger;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/utils/Utils.class */
public class Utils {
    private static final String TAG = "Utils";
    private static boolean debugMode = true;
    private static Context sContext;

    /* renamed from: net.pubnative.lite.sdk.vpaid.utils.Utils$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/utils/Utils$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$pubnative$lite$sdk$vpaid$utils$Utils$StretchOption;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[StretchOption.values().length];
            $SwitchMap$net$pubnative$lite$sdk$vpaid$utils$Utils$StretchOption = iArr;
            try {
                iArr[StretchOption.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$net$pubnative$lite$sdk$vpaid$utils$Utils$StretchOption[StretchOption.STRETCH.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$net$pubnative$lite$sdk$vpaid$utils$Utils$StretchOption[StretchOption.NO_STRETCH.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/utils/Utils$StretchOption.class */
    public enum StretchOption {
        NONE,
        STRETCH,
        NO_STRETCH
    }

    public static FrameLayout.LayoutParams calculateNewLayoutParams(FrameLayout.LayoutParams layoutParams, int i, int i2, int i3, int i4, StretchOption stretchOption) {
        float f;
        int i5;
        layoutParams.gravity = 17;
        if (i > i2) {
            layoutParams.width = i3;
            layoutParams.height = (int) ((i2 / i) * i3);
            int i6 = layoutParams.height;
            if (layoutParams.height != 0) {
                i5 = ((i4 - i6) * 100) / layoutParams.height;
                f = i5;
            }
            f = BitmapDescriptorFactory.HUE_RED;
        } else {
            layoutParams.height = i4;
            layoutParams.width = (int) ((i / i2) * i4);
            int i7 = layoutParams.width;
            if (layoutParams.width != 0) {
                i5 = ((i3 - i7) * 100) / layoutParams.width;
                f = i5;
            }
            f = BitmapDescriptorFactory.HUE_RED;
        }
        int i8 = AnonymousClass1.$SwitchMap$net$pubnative$lite$sdk$vpaid$utils$Utils$StretchOption[stretchOption.ordinal()];
        if (i8 == 1 ? f < 11.0f : i8 == 2) {
            layoutParams.width = i3;
            layoutParams.height = i4;
        }
        return layoutParams;
    }

    public static String getStringFromStream(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4096);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toString("UTF-8");
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static float getSystemVolume() {
        AudioManager audioManager;
        Context context = sContext;
        if (context == null || (audioManager = (AudioManager) context.getSystemService("audio")) == null) {
            return 1.0f;
        }
        return Math.round((audioManager.getStreamVolume(3) * 100) / audioManager.getStreamMaxVolume(3)) / 100.0f;
    }

    public static void init(Context context) {
        sContext = context;
    }

    public static boolean isDebug() {
        return debugMode;
    }

    public static boolean isEmulator() {
        return Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK") || Build.MANUFACTURER.contains("Genymotion");
    }

    public static boolean isOnline() {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) sContext.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            boolean z = false;
            if (activeNetworkInfo != null) {
                z = false;
                if (activeNetworkInfo.isConnected()) {
                    z = false;
                    if (activeNetworkInfo.isAvailable()) {
                        z = true;
                    }
                }
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean isPhoneMuted() {
        AudioManager audioManager;
        Context context = sContext;
        return (context == null || (audioManager = (AudioManager) context.getSystemService("audio")) == null || audioManager.getRingerMode() != 0) ? false : true;
    }

    public static int parseDuration(String str) {
        try {
            String[] split = str.split(":");
            int parseInt = Integer.parseInt(split[0]);
            return Double.valueOf(split[2]).intValue() + (Integer.parseInt(split[1]) * 60) + (parseInt * 3600);
        } catch (RuntimeException e) {
            Logger.e(TAG, "Error while parsing ad duration");
            return 10;
        }
    }

    public static int parsePercent(String str) {
        return Integer.parseInt(str.replace("%", "").trim());
    }

    public static String readAssets(AssetManager assetManager, String str) throws IOException {
        return getStringFromStream(assetManager.open(str));
    }

    public static void setDebugMode(boolean z) {
        debugMode = z;
    }
}
