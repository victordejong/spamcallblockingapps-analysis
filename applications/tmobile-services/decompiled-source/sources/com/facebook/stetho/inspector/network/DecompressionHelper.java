package com.facebook.stetho.inspector.network;

import com.facebook.stetho.inspector.console.CLog;
import com.facebook.stetho.inspector.protocol.module.Console;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.InflaterOutputStream;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/DecompressionHelper.class */
public class DecompressionHelper {
    static final String DEFLATE_ENCODING = "deflate";
    static final String GZIP_ENCODING = "gzip";

    public static InputStream teeInputWithDecompression(NetworkPeerManager networkPeerManager, String str, InputStream inputStream, OutputStream outputStream, @Nullable String str2, ResponseHandler responseHandler) throws IOException {
        CountingOutputStream countingOutputStream;
        if (str2 != null) {
            boolean equals = GZIP_ENCODING.equals(str2);
            boolean equals2 = DEFLATE_ENCODING.equals(str2);
            if (equals || equals2) {
                CountingOutputStream countingOutputStream2 = new CountingOutputStream(outputStream);
                if (equals) {
                    outputStream = GunzippingOutputStream.create(countingOutputStream2);
                    countingOutputStream = countingOutputStream2;
                } else {
                    countingOutputStream = countingOutputStream2;
                    if (equals2) {
                        outputStream = new InflaterOutputStream(countingOutputStream2);
                        countingOutputStream = countingOutputStream2;
                    }
                }
                return new ResponseHandlingInputStream(inputStream, str, outputStream, countingOutputStream, networkPeerManager, responseHandler);
            }
            Console.MessageLevel messageLevel = Console.MessageLevel.WARNING;
            Console.MessageSource messageSource = Console.MessageSource.NETWORK;
            CLog.writeToConsole(networkPeerManager, messageLevel, messageSource, "Unsupported Content-Encoding in response for request #" + str + ": " + str2);
        }
        countingOutputStream = null;
        return new ResponseHandlingInputStream(inputStream, str, outputStream, countingOutputStream, networkPeerManager, responseHandler);
    }
}
