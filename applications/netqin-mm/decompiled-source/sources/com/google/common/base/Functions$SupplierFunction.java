package com.google.common.base;

import java.io.Serializable;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Functions$SupplierFunction.class */
public class Functions$SupplierFunction<T> implements AbstractC4920g<Object, T>, Serializable {
    public static final long serialVersionUID = 0;
    public final AbstractC4941s<T> supplier;

    public Functions$SupplierFunction(AbstractC4941s<T> sVar) {
        C4933n.m24795a(sVar);
        this.supplier = sVar;
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public T apply(Object obj) {
        return this.supplier.get();
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public boolean equals(Object obj) {
        if (obj instanceof Functions$SupplierFunction) {
            return this.supplier.equals(((Functions$SupplierFunction) obj).supplier);
        }
        return false;
    }

    public int hashCode() {
        return this.supplier.hashCode();
    }

    public String toString() {
        return "Functions.forSupplier(" + this.supplier + ")";
    }
}
