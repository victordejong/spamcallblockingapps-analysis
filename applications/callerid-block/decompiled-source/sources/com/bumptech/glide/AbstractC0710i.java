package com.bumptech.glide;

import com.bumptech.glide.AbstractC0710i;
import com.bumptech.glide.request.i.a;
import com.bumptech.glide.request.p032i.AbstractC0875c;
/* renamed from: com.bumptech.glide.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i.class */
public abstract class AbstractC0710i<CHILD extends AbstractC0710i<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: b */
    private AbstractC0875c<? super TranscodeType> f3423b = a.b();

    /* renamed from: b */
    public final CHILD clone() {
        try {
            return (CHILD) ((AbstractC0710i) super.clone());
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: c */
    final AbstractC0875c<? super TranscodeType> m11312c() {
        return this.f3423b;
    }
}
