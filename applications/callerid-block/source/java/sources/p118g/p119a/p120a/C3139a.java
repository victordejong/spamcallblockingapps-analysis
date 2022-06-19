package p118g.p119a.p120a;

import android.content.Context;
import android.graphics.Bitmap;
import java.io.File;
/* renamed from: g.a.a.a */
/* loaded from: classes2-dex2jar.jar:g/a/a/a.class */
public class C3139a {

    /* renamed from: a */
    private int f12943a = 612;

    /* renamed from: b */
    private int f12944b = 816;

    /* renamed from: c */
    private Bitmap.CompressFormat f12945c = Bitmap.CompressFormat.JPEG;

    /* renamed from: d */
    private int f12946d = 80;

    /* renamed from: e */
    private String f12947e;

    public C3139a(Context context) {
        this.f12947e = context.getCacheDir().getPath() + File.separator + "images";
    }

    /* renamed from: a */
    public Bitmap m62a(File file) {
        return C3140b.m55c(file, this.f12943a, this.f12944b);
    }

    /* renamed from: b */
    public File m61b(File file) {
        return m60c(file, file.getName());
    }

    /* renamed from: c */
    public File m60c(File file, String str) {
        int i = this.f12943a;
        int i2 = this.f12944b;
        Bitmap.CompressFormat compressFormat = this.f12945c;
        int i3 = this.f12946d;
        return C3140b.m56b(file, i, i2, compressFormat, i3, this.f12947e + File.separator + str);
    }

    /* renamed from: d */
    public C3139a m59d(int i) {
        this.f12944b = i;
        return this;
    }

    /* renamed from: e */
    public C3139a m58e(int i) {
        this.f12943a = i;
        return this;
    }
}
