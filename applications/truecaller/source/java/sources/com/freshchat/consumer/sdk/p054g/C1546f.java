package com.freshchat.consumer.sdk.p054g;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.p049c.C1513i;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.g.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/f.class */
public class C1546f extends AbstractC1543c<Category> {
    private final Context context;

    /* renamed from: eL */
    private C1513i f4177eL;
    private List<String> tags;

    public C1546f(Context context) {
        super(context);
        this.context = context;
        this.f4177eL = new C1513i(context);
    }

    public C1546f(Context context, List<String> list) {
        this(context);
        if (C1716k.m39902a(list)) {
            this.tags = list;
        }
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1543c
    /* renamed from: dd */
    public List<Category> mo40564dd() {
        return C1716k.m39902a(this.tags) ? this.f4177eL.m40683l(this.tags) : this.f4177eL.m40699cJ();
    }

    @Override // p1727n3.p1869w.p1871b.AbstractC27049a, p1727n3.p1869w.p1871b.C27051b
    public void onForceLoad() {
        super.onForceLoad();
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1543c, p1727n3.p1869w.p1871b.C27051b
    public void onReset() {
        super.onReset();
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1543c, p1727n3.p1869w.p1871b.C27051b
    public void onStartLoading() {
        super.onStartLoading();
    }
}
