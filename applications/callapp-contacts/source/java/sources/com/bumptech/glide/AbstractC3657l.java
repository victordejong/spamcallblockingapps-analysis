package com.bumptech.glide;

import com.bumptech.glide.AbstractC3657l;
import com.bumptech.glide.p112e.p114b.AbstractC3597e;
import com.bumptech.glide.p112e.p114b.C3593c;
import com.bumptech.glide.p116g.C3643j;
/* renamed from: com.bumptech.glide.l */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/l.class */
public abstract class AbstractC3657l<CHILD extends AbstractC3657l<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a */
    AbstractC3597e<? super TranscodeType> f13799a = C3593c.m37666a();

    /* renamed from: a */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public final CHILD m37538a(AbstractC3597e<? super TranscodeType> abstractC3597e) {
        this.f13799a = (AbstractC3597e) C3643j.m37588a(abstractC3597e, "Argument must not be null");
        return this;
    }
}
