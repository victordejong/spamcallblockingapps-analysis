package p304z3;

import android.graphics.Typeface;
import android.support.p012v4.media.AbstractC0081a;
import android.text.TextPaint;
/* renamed from: z3.e */
/* loaded from: classes-dex2jar.jar:z3/e.class */
public class C5074e extends AbstractC0081a {

    /* renamed from: a */
    public final /* synthetic */ TextPaint f15396a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC0081a f15397b;

    /* renamed from: c */
    public final /* synthetic */ C5072d f15398c;

    public C5074e(C5072d c5072d, TextPaint textPaint, AbstractC0081a abstractC0081a) {
        this.f15398c = c5072d;
        this.f15396a = textPaint;
        this.f15397b = abstractC0081a;
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: A */
    public void mo58A(int i) {
        this.f15397b.mo58A(i);
    }

    @Override // android.support.p012v4.media.AbstractC0081a
    /* renamed from: B */
    public void mo57B(Typeface typeface, boolean z) {
        this.f15398c.m61g(this.f15396a, typeface);
        this.f15397b.mo57B(typeface, z);
    }
}
