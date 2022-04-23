package com.dropbox.core.util;

import com.dropbox.core.json.JsonDateReader;
import java.util.Date;
import java.util.GregorianCalendar;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/b.class */
public abstract class b {

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/b$a.class */
    public static final class a extends b {

        /* renamed from: a  reason: collision with root package name */
        private StringBuilder f17842a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f17843b = false;

        public a(StringBuilder sb) {
            this.f17842a = sb;
        }

        private void d() {
            if (this.f17843b) {
                this.f17842a.append(", ");
            } else {
                this.f17843b = true;
            }
        }

        @Override // com.dropbox.core.util.b
        public final b a() {
            this.f17842a.append(")");
            this.f17843b = true;
            return this;
        }

        @Override // com.dropbox.core.util.b
        public final b a(String str) {
            if (str != null) {
                this.f17842a.append(str);
            }
            this.f17842a.append("(");
            this.f17843b = false;
            return this;
        }

        @Override // com.dropbox.core.util.b
        public final b b() {
            d();
            this.f17842a.append("[");
            this.f17843b = false;
            return this;
        }

        @Override // com.dropbox.core.util.b
        public final b b(String str) {
            d();
            StringBuilder sb = this.f17842a;
            sb.append(str);
            sb.append('=');
            this.f17843b = false;
            return this;
        }

        @Override // com.dropbox.core.util.b
        public final b c() {
            this.f17842a.append("]");
            this.f17843b = true;
            return this;
        }

        @Override // com.dropbox.core.util.b
        public final b c(String str) {
            d();
            this.f17842a.append(str);
            return this;
        }
    }

    private static String e(String str) {
        while (str.length() < 2) {
            str = "0".concat(String.valueOf(str));
        }
        return str;
    }

    public abstract b a();

    public final b a(double d2) {
        return c(Double.toString(d2));
    }

    public final b a(long j) {
        return c(Long.toString(j));
    }

    public final b a(c cVar) {
        if (cVar == null) {
            c(JsonReaderKt.NULL);
        } else {
            a(cVar.a());
            cVar.a(this);
            a();
        }
        return this;
    }

    public final b a(Iterable<? extends c> iterable) {
        if (iterable == null) {
            c(JsonReaderKt.NULL);
        } else {
            b();
            for (c cVar : iterable) {
                a(cVar);
            }
            c();
        }
        return this;
    }

    public abstract b a(String str);

    public final b a(Date date) {
        String str;
        if (date == null) {
            str = JsonReaderKt.NULL;
        } else {
            StringBuilder sb = new StringBuilder();
            GregorianCalendar gregorianCalendar = new GregorianCalendar(JsonDateReader.UTC);
            gregorianCalendar.setTime(date);
            String num = Integer.toString(gregorianCalendar.get(1));
            String e = e(Integer.toString(gregorianCalendar.get(2) + 1));
            String e2 = e(Integer.toString(gregorianCalendar.get(5)));
            String e3 = e(Integer.toString(gregorianCalendar.get(11)));
            String e4 = e(Integer.toString(gregorianCalendar.get(12)));
            String e5 = e(Integer.toString(gregorianCalendar.get(13)));
            sb.append('\"');
            sb.append(num);
            sb.append("/");
            sb.append(e);
            sb.append("/");
            sb.append(e2);
            sb.append(StringUtils.SPACE);
            sb.append(e3);
            sb.append(":");
            sb.append(e4);
            sb.append(":");
            sb.append(e5);
            sb.append(" UTC");
            sb.append('\"');
            str = sb.toString();
        }
        return c(str);
    }

    public final b a(boolean z) {
        return c(Boolean.toString(z));
    }

    public abstract b b();

    public abstract b b(String str);

    public abstract b c();

    public abstract b c(String str);

    public final b d(String str) {
        if (str == null) {
            c(JsonReaderKt.NULL);
        } else {
            c(f.b(str));
        }
        return this;
    }
}
