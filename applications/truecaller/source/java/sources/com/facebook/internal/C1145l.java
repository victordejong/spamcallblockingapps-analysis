package com.facebook.internal;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* renamed from: com.facebook.internal.l */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/l.class */
public final /* synthetic */ class C1145l implements FilenameFilter {

    /* renamed from: a */
    public static final /* synthetic */ C1145l f3145a = new C1145l();

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return Pattern.matches("cpu[0-9]+", str);
    }
}
