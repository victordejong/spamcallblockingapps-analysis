package com.bumptech.glide.load.c;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.a.c;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/n.class */
public class n<T> implements j<String, T> {

    /* renamed from: a  reason: collision with root package name */
    private final j<Uri, T> f3581a;

    public n(j<Uri, T> jVar) {
        this.f3581a = jVar;
    }

    private static Uri a(String str) {
        return Uri.fromFile(new File(str));
    }

    @Override // com.bumptech.glide.load.c.j
    public final /* synthetic */ c a(String str, int i, int i2) {
        Uri uri;
        c<T> a2;
        String str2 = str;
        if (TextUtils.isEmpty(str2)) {
            a2 = null;
        } else {
            if (str2.startsWith("/")) {
                uri = a(str2);
            } else {
                Uri parse = Uri.parse(str2);
                uri = parse;
                if (parse.getScheme() == null) {
                    uri = a(str2);
                }
            }
            a2 = this.f3581a.a(uri, i, i2);
        }
        return a2;
    }
}
