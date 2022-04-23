package com.bumptech.glide;

import com.bumptech.glide.e.b.c;
import com.bumptech.glide.e.b.e;
import com.bumptech.glide.g.j;
import com.bumptech.glide.l;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/l.class */
public abstract class l<CHILD extends l<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    e<? super TranscodeType> f7379a = c.a();

    /* renamed from: a */
    public final CHILD clone() {
        try {
            return (CHILD) ((l) super.clone());
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public final CHILD a(e<? super TranscodeType> eVar) {
        this.f7379a = (e) j.a(eVar, "Argument must not be null");
        return this;
    }
}
