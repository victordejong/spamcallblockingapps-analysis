package com.facebook.share.p048f;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.internal.AbstractC2414h;
import com.facebook.share.AbstractC2568c;
import com.facebook.share.model.ShareContent;
import p081h.p154f.AbstractC6126g;
/* renamed from: com.facebook.share.f.b */
/* loaded from: classes-dex2jar.jar:com/facebook/share/f/b.class */
public abstract class AbstractC2653b extends AbstractC6126g {

    /* renamed from: i */
    public ShareContent f3584i;

    /* renamed from: j */
    public int f3585j;

    /* renamed from: com.facebook.share.f.b$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/f/b$a.class */
    public class View$OnClickListenerC2654a implements View.OnClickListener {
        public View$OnClickListenerC2654a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC2653b.this.m23778a(view);
            AbstractC2653b.this.mo33769g().mo34178a(AbstractC2653b.this.m34004i());
        }
    }

    public AbstractC2653b(Context context, AttributeSet attributeSet, int i, String str, String str2) {
        super(context, attributeSet, i, 0, str, str2);
        this.f3585j = 0;
        this.f3585j = isInEditMode() ? 0 : mo23774b();
        m34006a(false);
    }

    @Override // p081h.p154f.AbstractC6126g
    /* renamed from: a */
    public void mo23780a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo23780a(context, attributeSet, i, i2);
        m23779a(m34003j());
    }

    /* renamed from: a */
    public final void m34006a(boolean z) {
        setEnabled(z);
    }

    /* renamed from: g */
    public abstract AbstractC2414h<ShareContent, AbstractC2568c.C2569a> mo33769g();

    /* renamed from: h */
    public int m34005h() {
        return this.f3585j;
    }

    /* renamed from: i */
    public ShareContent m34004i() {
        return this.f3584i;
    }

    /* renamed from: j */
    public View.OnClickListener m34003j() {
        return new View$OnClickListenerC2654a();
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
    }
}
