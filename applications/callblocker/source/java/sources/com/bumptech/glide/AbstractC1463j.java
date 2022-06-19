package com.bumptech.glide;

import com.bumptech.glide.AbstractC1463j;
import com.bumptech.glide.p073f.p075b.AbstractC1419c;
import com.bumptech.glide.p073f.p075b.C1415a;
/* renamed from: com.bumptech.glide.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/j.class */
public abstract class AbstractC1463j<CHILD extends AbstractC1463j<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a */
    private AbstractC1419c<? super TranscodeType> f4789a = C1415a.m17165a();

    /* renamed from: a */
    public final CHILD clone() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    public final AbstractC1419c<? super TranscodeType> m16946b() {
        return this.f4789a;
    }
}
