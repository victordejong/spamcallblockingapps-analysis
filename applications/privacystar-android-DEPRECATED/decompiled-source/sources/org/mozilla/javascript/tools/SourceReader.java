package org.mozilla.javascript.tools;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import org.mozilla.javascript.Kit;
import org.mozilla.javascript.commonjs.module.provider.ParsedContentType;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/SourceReader.class */
public class SourceReader {
    public static Object readFileOrUrl(String str, boolean z, String str2) throws IOException {
        InputStream inputStream;
        Throwable th;
        int i;
        String str3;
        InputStream inputStream2;
        String str4;
        String str5;
        URL url = toUrl(str);
        String str6 = null;
        try {
            if (url == null) {
                File file = new File(str);
                i = (int) file.length();
                inputStream2 = new FileInputStream(file);
                str6 = null;
                str3 = null;
            } else {
                URLConnection openConnection = url.openConnection();
                InputStream inputStream3 = openConnection.getInputStream();
                if (z) {
                    try {
                        ParsedContentType parsedContentType = new ParsedContentType(openConnection.getContentType());
                        str3 = parsedContentType.getContentType();
                        str6 = parsedContentType.getEncoding();
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = inputStream3;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        throw th;
                    }
                } else {
                    str3 = null;
                }
                int contentLength = openConnection.getContentLength();
                i = contentLength;
                if (contentLength > 1048576) {
                    i = -1;
                }
                inputStream2 = inputStream3;
            }
            int i2 = i;
            if (i <= 0) {
                i2 = 4096;
            }
            inputStream = inputStream2;
            byte[] readStream = Kit.readStream(inputStream2, i2);
            if (inputStream2 != null) {
                inputStream2.close();
            }
            if (!z) {
                str4 = readStream;
            } else {
                if (str6 != null) {
                    str5 = str6;
                } else if (readStream.length > 3 && readStream[0] == -1 && readStream[1] == -2 && readStream[2] == 0 && readStream[3] == 0) {
                    str5 = "UTF-32LE";
                } else if (readStream.length > 3 && readStream[0] == 0 && readStream[1] == 0 && readStream[2] == -2 && readStream[3] == -1) {
                    str5 = "UTF-32BE";
                } else if (readStream.length > 2 && readStream[0] == -17 && readStream[1] == -69 && readStream[2] == -65) {
                    str5 = "UTF-8";
                } else if (readStream.length > 1 && readStream[0] == -1 && readStream[1] == -2) {
                    str5 = "UTF-16LE";
                } else if (readStream.length > 1 && readStream[0] == -2 && readStream[1] == -1) {
                    str5 = "UTF-16BE";
                } else {
                    str5 = str2;
                    if (str2 == null) {
                        str5 = url == null ? System.getProperty("file.encoding") : (str3 == null || !str3.startsWith("application/")) ? "US-ASCII" : "UTF-8";
                    }
                }
                String str7 = new String(readStream, str5);
                int length = str7.length();
                str4 = str7;
                if (length > 0) {
                    char charAt = str7.charAt(0);
                    str4 = str7;
                    if (charAt == 65279) {
                        str4 = str7.substring(1);
                    }
                }
            }
            return str4;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static URL toUrl(String str) {
        if (str.indexOf(58) < 2) {
            return null;
        }
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            return null;
        }
    }
}
