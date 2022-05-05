package com.uservoice.uservoicesdk.b;

import android.content.Context;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/b/a.class */
public final class a {
    public static String a(Context context, String str) {
        FileInputStream fileInputStream = new FileInputStream(new File(context.getCacheDir(), str));
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine);
            } else {
                fileInputStream.close();
                return sb.toString();
            }
        }
    }
}
