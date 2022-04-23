package com.callapp.contacts.framework.dao;

import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/BaseWhereSupport.class */
public abstract class BaseWhereSupport<E> extends BaseStatement<E> {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f14382a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final StringBuilder f14383b = new StringBuilder();

    /* renamed from: c  reason: collision with root package name */
    private boolean f14384c = true;

    private void d() {
        if (!this.f14384c) {
            this.f14383b.append(" AND ");
        }
        this.f14384c = false;
    }

    @Override // com.callapp.contacts.framework.dao.BaseStatement
    protected final E a() {
        String sb = this.f14383b.toString();
        if (StringUtils.a((CharSequence) sb)) {
            return c(null, null);
        }
        if (this.f14382a.isEmpty()) {
            return c(sb, null);
        }
        List<String> list = this.f14382a;
        return c(sb, (String[]) list.toArray(new String[list.size()]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Column column, String str, Object obj) {
        a(column.f14402a, str, obj == null ? null : column.a(obj));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2, String str3) {
        d();
        this.f14383b.append(str);
        if (str3 != null) {
            this.f14382a.add(str3);
            StringBuilder sb = this.f14383b;
            sb.append(org.apache.commons.lang3.StringUtils.SPACE);
            sb.append(str2);
            sb.append(" ?");
        } else if ("=".equals(str2)) {
            this.f14383b.append(" IS NULL");
        } else {
            this.f14383b.append(" IS NOT NULL");
        }
    }

    public final void a(String str, String... strArr) {
        d();
        StringBuilder sb = this.f14383b;
        sb.append("(");
        sb.append(str);
        sb.append(")");
        Collections.addAll(this.f14382a, strArr);
    }

    public final void a(boolean z, Column column, Collection collection) {
        if (!CollectionUtils.a(collection)) {
            d();
            this.f14383b.append(column.f14402a);
            if (!z) {
                this.f14383b.append(" NOT");
            }
            this.f14383b.append(" IN (");
            boolean z2 = false;
            for (E e : collection) {
                if (e instanceof Number) {
                    if (z2) {
                        this.f14383b.append(", ");
                    } else {
                        z2 = true;
                    }
                    this.f14383b.append(e);
                } else {
                    String a2 = column.a(e);
                    if (StringUtils.b((CharSequence) a2)) {
                        if (z2) {
                            this.f14383b.append(", ");
                        } else {
                            z2 = true;
                        }
                        this.f14383b.append('?');
                        this.f14382a.add(a2);
                    }
                }
            }
            this.f14383b.append(")");
        } else if (z) {
            d();
            this.f14383b.append("1=0");
        }
    }

    public final void b(String str, String... strArr) {
        if (strArr.length == 0) {
            d();
            this.f14383b.append("1=0");
            return;
        }
        d();
        this.f14383b.append(str);
        this.f14383b.append(" IN (");
        boolean z = false;
        for (String str2 : strArr) {
            z = z;
            if (StringUtils.b((CharSequence) str2)) {
                if (z) {
                    this.f14383b.append(", ");
                } else {
                    z = true;
                }
                this.f14383b.append('?');
                this.f14382a.add(str2);
            }
        }
        this.f14383b.append(")");
    }

    abstract E c(String str, String[] strArr);
}
