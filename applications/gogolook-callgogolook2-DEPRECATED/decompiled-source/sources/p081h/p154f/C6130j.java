package p081h.p154f;

import androidx.media2.exoplayer.external.text.webvtt.CssParser;
/* renamed from: h.f.j */
/* loaded from: classes-dex2jar.jar:h/f/j.class */
public class C6130j extends C6131k {

    /* renamed from: a */
    public int f15239a;

    /* renamed from: b */
    public String f15240b;

    public C6130j(String str, int i, String str2) {
        super(str);
        this.f15239a = i;
        this.f15240b = str2;
    }

    /* renamed from: a */
    public int m23763a() {
        return this.f15239a;
    }

    /* renamed from: b */
    public String m23762b() {
        return this.f15240b;
    }

    @Override // p081h.p154f.C6131k, java.lang.Throwable
    public final String toString() {
        return "{FacebookDialogException: errorCode: " + m23763a() + ", message: " + getMessage() + ", url: " + m23762b() + CssParser.BLOCK_END;
    }
}
