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

    /* renamed from: a */
    private final List<String> f25152a = new ArrayList();

    /* renamed from: b */
    private final StringBuilder f25153b = new StringBuilder();

    /* renamed from: c */
    private boolean f25154c = true;

    /* renamed from: d */
    private void m29032d() {
        if (!this.f25154c) {
            this.f25153b.append(" AND ");
        }
        this.f25154c = false;
    }

    @Override // com.callapp.contacts.framework.dao.BaseStatement
    /* renamed from: a */
    protected final E mo29031a() {
        String sb = this.f25153b.toString();
        if (StringUtils.m26059a((CharSequence) sb)) {
            return mo29004c(null, null);
        }
        if (this.f25152a.isEmpty()) {
            return mo29004c(sb, null);
        }
        List<String> list = this.f25152a;
        return mo29004c(sb, (String[]) list.toArray(new String[list.size()]));
    }

    /* renamed from: a */
    public final void m29037a(Column column, String str, Object obj) {
        m29036a(column.f25180a, str, obj == null ? null : column.mo28988a(obj));
    }

    /* renamed from: a */
    public final void m29036a(String str, String str2, String str3) {
        m29032d();
        this.f25153b.append(str);
        if (str3 == null) {
            if ("=".equals(str2)) {
                this.f25153b.append(" IS NULL");
                return;
            } else {
                this.f25153b.append(" IS NOT NULL");
                return;
            }
        }
        this.f25152a.add(str3);
        StringBuilder sb = this.f25153b;
        sb.append(org.apache.commons.lang3.StringUtils.SPACE);
        sb.append(str2);
        sb.append(" ?");
    }

    /* renamed from: a */
    public final void m29035a(String str, String... strArr) {
        m29032d();
        StringBuilder sb = this.f25153b;
        sb.append("(");
        sb.append(str);
        sb.append(")");
        Collections.addAll(this.f25152a, strArr);
    }

    /* renamed from: a */
    public final void m29034a(boolean z, Column column, Collection collection) {
        if (CollectionUtils.m26076a(collection)) {
            if (!z) {
                return;
            }
            m29032d();
            this.f25153b.append("1=0");
            return;
        }
        m29032d();
        this.f25153b.append(column.f25180a);
        if (!z) {
            this.f25153b.append(" NOT");
        }
        this.f25153b.append(" IN (");
        boolean z2 = false;
        for (E e : collection) {
            if (e instanceof Number) {
                if (z2) {
                    this.f25153b.append(", ");
                } else {
                    z2 = true;
                }
                this.f25153b.append(e);
            } else {
                String mo28988a = column.mo28988a(e);
                if (StringUtils.m26045b((CharSequence) mo28988a)) {
                    if (z2) {
                        this.f25153b.append(", ");
                    } else {
                        z2 = true;
                    }
                    this.f25153b.append('?');
                    this.f25152a.add(mo28988a);
                }
            }
        }
        this.f25153b.append(")");
    }

    /* renamed from: b */
    public final void m29033b(String str, String... strArr) {
        if (strArr.length == 0) {
            m29032d();
            this.f25153b.append("1=0");
            return;
        }
        m29032d();
        this.f25153b.append(str);
        this.f25153b.append(" IN (");
        int length = strArr.length;
        int i = 0;
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (i >= length) {
                this.f25153b.append(")");
                return;
            }
            String str2 = strArr[i];
            boolean z3 = z2;
            if (StringUtils.m26045b((CharSequence) str2)) {
                if (z2) {
                    this.f25153b.append(", ");
                } else {
                    z2 = true;
                }
                this.f25153b.append('?');
                this.f25152a.add(str2);
                z3 = z2;
            }
            i++;
            z = z3;
        }
    }

    /* renamed from: c */
    abstract E mo29004c(String str, String[] strArr);
}
