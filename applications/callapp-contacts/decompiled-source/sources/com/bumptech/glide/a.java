package com.bumptech.glide;

import android.content.Context;
import com.bumptech.glide.manager.l;
import com.bumptech.glide.manager.o;
import com.bumptech.glide.manager.p;
import com.callapp.contacts.util.glide.GlideRequests;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a.class */
final class a implements o.a {
    @Override // com.bumptech.glide.manager.o.a
    public final k a(c cVar, l lVar, p pVar, Context context) {
        return new GlideRequests(cVar, lVar, pVar, context);
    }
}
