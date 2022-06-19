package com.callapp.common.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/Files.class */
public class Files {
    /* renamed from: a */
    public static void m31922a(CharSequence charSequence, File file, Charset charset) throws IOException {
        OutputStreamWriter outputStreamWriter;
        Throwable th;
        OutputStreamWriter outputStreamWriter2;
        try {
            outputStreamWriter2 = new OutputStreamWriter(new FileOutputStream(file, true), charset.name());
        } catch (Throwable th2) {
            th = th2;
            outputStreamWriter = null;
        }
        try {
            outputStreamWriter2.append(charSequence);
            try {
                outputStreamWriter2.close();
            } catch (Exception e) {
            }
        } catch (Throwable th3) {
            th = th3;
            outputStreamWriter = outputStreamWriter2;
            if (outputStreamWriter != null) {
                try {
                    outputStreamWriter.close();
                } catch (Exception e2) {
                }
            }
            throw th;
        }
    }
}
