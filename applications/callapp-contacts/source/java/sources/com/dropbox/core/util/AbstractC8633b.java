package com.dropbox.core.util;

import com.dropbox.core.json.JsonDateReader;
import java.util.Date;
import java.util.GregorianCalendar;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.dropbox.core.util.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/b.class */
public abstract class AbstractC8633b {

    /* renamed from: com.dropbox.core.util.b$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/b$a.class */
    public static final class C8634a extends AbstractC8633b {

        /* renamed from: a */
        private StringBuilder f30642a;

        /* renamed from: b */
        private boolean f30643b = false;

        public C8634a(StringBuilder sb) {
            this.f30642a = sb;
        }

        /* renamed from: d */
        private void m25225d() {
            if (this.f30643b) {
                this.f30642a.append(", ");
            } else {
                this.f30643b = true;
            }
        }

        @Override // com.dropbox.core.util.AbstractC8633b
        /* renamed from: a */
        public final AbstractC8633b mo25231a() {
            this.f30642a.append(")");
            this.f30643b = true;
            return this;
        }

        @Override // com.dropbox.core.util.AbstractC8633b
        /* renamed from: a */
        public final AbstractC8633b mo25230a(String str) {
            if (str != null) {
                this.f30642a.append(str);
            }
            this.f30642a.append("(");
            this.f30643b = false;
            return this;
        }

        @Override // com.dropbox.core.util.AbstractC8633b
        /* renamed from: b */
        public final AbstractC8633b mo25229b() {
            m25225d();
            this.f30642a.append("[");
            this.f30643b = false;
            return this;
        }

        @Override // com.dropbox.core.util.AbstractC8633b
        /* renamed from: b */
        public final AbstractC8633b mo25228b(String str) {
            m25225d();
            StringBuilder sb = this.f30642a;
            sb.append(str);
            sb.append('=');
            this.f30643b = false;
            return this;
        }

        @Override // com.dropbox.core.util.AbstractC8633b
        /* renamed from: c */
        public final AbstractC8633b mo25227c() {
            this.f30642a.append("]");
            this.f30643b = true;
            return this;
        }

        @Override // com.dropbox.core.util.AbstractC8633b
        /* renamed from: c */
        public final AbstractC8633b mo25226c(String str) {
            m25225d();
            this.f30642a.append(str);
            return this;
        }
    }

    /* renamed from: e */
    private static String m25232e(String str) {
        while (str.length() < 2) {
            str = "0".concat(String.valueOf(str));
        }
        return str;
    }

    /* renamed from: a */
    public abstract AbstractC8633b mo25231a();

    /* renamed from: a */
    public final AbstractC8633b m25239a(double d) {
        return mo25226c(Double.toString(d));
    }

    /* renamed from: a */
    public final AbstractC8633b m25238a(long j) {
        return mo25226c(Long.toString(j));
    }

    /* renamed from: a */
    public final AbstractC8633b m25237a(AbstractC8635c abstractC8635c) {
        if (abstractC8635c == null) {
            mo25226c(JsonReaderKt.NULL);
        } else {
            mo25230a(abstractC8635c.mo25202a());
            abstractC8635c.mo25199a(this);
            mo25231a();
        }
        return this;
    }

    /* renamed from: a */
    public final AbstractC8633b m25236a(Iterable<? extends AbstractC8635c> iterable) {
        if (iterable == null) {
            mo25226c(JsonReaderKt.NULL);
        } else {
            mo25229b();
            for (AbstractC8635c abstractC8635c : iterable) {
                m25237a(abstractC8635c);
            }
            mo25227c();
        }
        return this;
    }

    /* renamed from: a */
    public abstract AbstractC8633b mo25230a(String str);

    /* renamed from: a */
    public final AbstractC8633b m25235a(Date date) {
        String str;
        if (date == null) {
            str = JsonReaderKt.NULL;
        } else {
            StringBuilder sb = new StringBuilder();
            GregorianCalendar gregorianCalendar = new GregorianCalendar(JsonDateReader.UTC);
            gregorianCalendar.setTime(date);
            String num = Integer.toString(gregorianCalendar.get(1));
            String m25232e = m25232e(Integer.toString(gregorianCalendar.get(2) + 1));
            String m25232e2 = m25232e(Integer.toString(gregorianCalendar.get(5)));
            String m25232e3 = m25232e(Integer.toString(gregorianCalendar.get(11)));
            String m25232e4 = m25232e(Integer.toString(gregorianCalendar.get(12)));
            String m25232e5 = m25232e(Integer.toString(gregorianCalendar.get(13)));
            sb.append('\"');
            sb.append(num);
            sb.append("/");
            sb.append(m25232e);
            sb.append("/");
            sb.append(m25232e2);
            sb.append(StringUtils.SPACE);
            sb.append(m25232e3);
            sb.append(":");
            sb.append(m25232e4);
            sb.append(":");
            sb.append(m25232e5);
            sb.append(" UTC");
            sb.append('\"');
            str = sb.toString();
        }
        return mo25226c(str);
    }

    /* renamed from: a */
    public final AbstractC8633b m25234a(boolean z) {
        return mo25226c(Boolean.toString(z));
    }

    /* renamed from: b */
    public abstract AbstractC8633b mo25229b();

    /* renamed from: b */
    public abstract AbstractC8633b mo25228b(String str);

    /* renamed from: c */
    public abstract AbstractC8633b mo25227c();

    /* renamed from: c */
    public abstract AbstractC8633b mo25226c(String str);

    /* renamed from: d */
    public final AbstractC8633b m25233d(String str) {
        if (str == null) {
            mo25226c(JsonReaderKt.NULL);
        } else {
            mo25226c(C8638f.m25215b(str));
        }
        return this;
    }
}
