package com.nineoldandroids.p064a;

import java.util.ArrayList;
/* renamed from: com.nineoldandroids.a.a */
/* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/a.class */
public abstract class AbstractC1403a implements Cloneable {

    /* renamed from: a */
    ArrayList<AbstractC1404a> f3890a = null;

    /* renamed from: com.nineoldandroids.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/nineoldandroids/a/a$a.class */
    public interface AbstractC1404a {
        /* renamed from: a */
        void m3745a(AbstractC1403a abstractC1403a);

        /* renamed from: b */
        void m3744b(AbstractC1403a abstractC1403a);

        /* renamed from: c */
        void m3743c(AbstractC1403a abstractC1403a);

        /* renamed from: d */
        void m3742d(AbstractC1403a abstractC1403a);
    }

    /* renamed from: a */
    public void mo3672a() {
    }

    /* renamed from: b */
    public void mo3663b() {
    }

    /* renamed from: c */
    public AbstractC1403a clone() {
        try {
            AbstractC1403a abstractC1403a = (AbstractC1403a) super.clone();
            if (this.f3890a != null) {
                ArrayList<AbstractC1404a> arrayList = this.f3890a;
                abstractC1403a.f3890a = new ArrayList<>();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    abstractC1403a.f3890a.add(arrayList.get(i));
                }
            }
            return abstractC1403a;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }
}
