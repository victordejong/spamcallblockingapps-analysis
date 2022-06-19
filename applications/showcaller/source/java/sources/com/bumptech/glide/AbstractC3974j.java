package com.bumptech.glide;

import com.bumptech.glide.AbstractC3974j;
import com.bumptech.glide.request.p226i.AbstractC4419c;
import com.bumptech.glide.request.p226i.C4415a;
/* renamed from: com.bumptech.glide.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/j.class */
public abstract class AbstractC3974j<CHILD extends AbstractC3974j<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: d */
    private AbstractC4419c<? super TranscodeType> f12518d = C4415a.m22537b();

    /* renamed from: a */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    public final AbstractC4419c<? super TranscodeType> m23620b() {
        return this.f12518d;
    }
}
