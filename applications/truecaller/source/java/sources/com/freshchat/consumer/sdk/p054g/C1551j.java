package com.freshchat.consumer.sdk.p054g;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Article;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.p049c.C1513i;
import com.freshchat.consumer.sdk.p057j.C1626as;
/* renamed from: com.freshchat.consumer.sdk.g.j */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/j.class */
public class C1551j extends AbstractC1544d<Article> {

    /* renamed from: eY */
    private C1513i f4199eY;

    /* renamed from: eZ */
    private boolean f4200eZ;

    /* renamed from: fa */
    private Category f4201fa;

    /* renamed from: v */
    private String f4202v;

    public C1551j(Context context, String str, boolean z) {
        super(context);
        this.f4202v = null;
        this.f4200eZ = false;
        if (!C1626as.isEmpty(str)) {
            this.f4202v = str;
        }
        this.f4200eZ = z;
        this.f4199eY = new C1513i(context);
    }

    /* renamed from: dj */
    public Article getData() {
        Article m40701ab = C1626as.m40233a(this.f4202v) ? this.f4199eY.m40701ab(this.f4202v) : null;
        if (this.f4200eZ && m40701ab != null) {
            this.f4201fa = this.f4199eY.m40703Y(m40701ab.getCategoryId());
        }
        return m40701ab;
    }

    /* renamed from: dk */
    public Category m40558dk() {
        return this.f4201fa;
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1544d, p1727n3.p1869w.p1871b.C27051b
    public void onReset() {
        super.onReset();
        this.f4201fa = null;
    }
}
