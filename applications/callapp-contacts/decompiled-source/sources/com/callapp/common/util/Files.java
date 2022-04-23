package com.callapp.common.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/Files.class */
public class Files {
    public static void a(CharSequence charSequence, File file, Charset charset) throws IOException {
        Throwable th;
        OutputStreamWriter outputStreamWriter;
        OutputStreamWriter outputStreamWriter2 = null;
        try {
            outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file, true), charset.name());
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            outputStreamWriter.append(charSequence);
            try {
                outputStreamWriter.close();
            } catch (Exception e) {
            }
        } catch (Throwable th3) {
            th = th3;
            outputStreamWriter2 = outputStreamWriter;
            if (outputStreamWriter2 != null) {
                try {
                    outputStreamWriter2.close();
                } catch (Exception e2) {
                }
            }
            throw th;
        }
    }
}
