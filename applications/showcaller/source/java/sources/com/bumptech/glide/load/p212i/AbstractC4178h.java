package com.bumptech.glide.load.p212i;

import com.bumptech.glide.load.p212i.C4181j;
import java.util.Collections;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.i.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/h.class */
public interface AbstractC4178h {
    @Deprecated

    /* renamed from: a */
    public static final AbstractC4178h f13038a = new C4179a();

    /* renamed from: b */
    public static final AbstractC4178h f13039b = new C4181j.C4182a().m23147a();

    /* renamed from: com.bumptech.glide.load.i.h$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/h$a.class */
    class C4179a implements AbstractC4178h {
        C4179a() {
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4178h
        public Map<String, String> getHeaders() {
            return Collections.emptyMap();
        }
    }

    Map<String, String> getHeaders();
}
