package com.apptentive.android.sdk.comm;

import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.Util;
import com.facebook.stetho.common.Utf8Charset;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.zip.GZIPInputStream;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/comm/ApptentiveClient.class */
public class ApptentiveClient {
    public static String getErrorResponse(HttpURLConnection httpURLConnection, boolean z) throws IOException {
        InputStream inputStream = null;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            InputStream errorStream = httpURLConnection.getErrorStream();
            InputStream inputStream2 = errorStream;
            if (errorStream != null) {
                inputStream2 = errorStream;
                if (z) {
                    inputStream2 = new GZIPInputStream(errorStream);
                }
            }
            inputStream = inputStream;
            return Util.readStringFromInputStream(inputStream, Utf8Charset.NAME);
        } finally {
            Util.ensureClosed(inputStream);
        }
    }

    public static String getUserAgentString() {
        return String.format("Apptentive/%s (Android)", Constants.getApptentiveSdkVersion());
    }
}
