package com.android.mms.transaction;

import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.android.mms.transaction.g */
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/g.class */
public abstract class AbstractC0694g {

    /* renamed from: b */
    private final ArrayList<AbstractC0695h> f3350b = new ArrayList<>();

    /* renamed from: c */
    private Iterator<AbstractC0695h> f3351c;

    /* renamed from: a */
    public void m11387a(AbstractC0695h abstractC0695h) {
        this.f3350b.add(abstractC0695h);
    }

    /* renamed from: b */
    public void m11386b(AbstractC0695h abstractC0695h) {
        Iterator<AbstractC0695h> it = this.f3351c;
        if (it != null) {
            it.remove();
        } else {
            this.f3350b.remove(abstractC0695h);
        }
    }

    /* renamed from: c */
    public void m11385c() {
        this.f3351c = this.f3350b.iterator();
        while (this.f3351c.hasNext()) {
            try {
                this.f3351c.next().m11384a(this);
            } catch (Throwable th) {
                this.f3351c = null;
                throw th;
            }
        }
        this.f3351c = null;
    }
}
