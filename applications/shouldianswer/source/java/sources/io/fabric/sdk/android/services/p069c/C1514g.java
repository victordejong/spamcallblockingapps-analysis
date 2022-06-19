package io.fabric.sdk.android.services.p069c;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: io.fabric.sdk.android.services.c.g */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/c/g.class */
public class C1514g extends C1515h {
    public C1514g(Context context, File file, String str, String str2) {
        super(context, file, str, str2);
    }

    @Override // io.fabric.sdk.android.services.p069c.C1515h
    /* renamed from: a */
    public OutputStream mo3391a(File file) {
        return new GZIPOutputStream(new FileOutputStream(file));
    }
}
