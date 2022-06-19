package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.manager.AbstractC3943l;
import com.bumptech.glide.manager.AbstractC3949p;
import com.bumptech.glide.manager.C3946o;
import com.callapp.contacts.util.glide.GlideRequests;
/* renamed from: com.bumptech.glide.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a.class */
final class C3531a implements C3946o.AbstractC3948a {
    @Override // com.bumptech.glide.manager.C3946o.AbstractC3948a
    /* renamed from: a */
    public final ComponentCallbacks2C3653k mo37161a(ComponentCallbacks2C3548c componentCallbacks2C3548c, AbstractC3943l abstractC3943l, AbstractC3949p abstractC3949p, Context context) {
        return new GlideRequests(componentCallbacks2C3548c, abstractC3943l, abstractC3949p, context);
    }
}
