package p131c.p161d.p354f.p356t.p357k;

import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.AbstractC6131r;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p356t.C6155d;
import p131c.p161d.p354f.p356t.C6158g;
import p131c.p161d.p354f.p356t.p357k.p358o.C6235a;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.c */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/c.class */
public final class C6172c extends AbstractC6129q<Date> {

    /* renamed from: b */
    public static final AbstractC6131r f19688b = new C6173a();

    /* renamed from: a */
    public final List<DateFormat> f19689a;

    /* renamed from: c.d.f.t.k.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/k/c$a.class */
    public class C6173a implements AbstractC6131r {
        @Override // p131c.p161d.p354f.AbstractC6131r
        public <T> AbstractC6129q<T> create(C6111e eVar, C6239a<T> aVar) {
            return aVar.m21836a() == Date.class ? new C6172c() : null;
        }
    }

    public C6172c() {
        ArrayList arrayList = new ArrayList();
        this.f19689a = arrayList;
        arrayList.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.f19689a.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (C6155d.m21919c()) {
            this.f19689a.add(C6158g.m21915a(2, 2));
        }
    }

    /* renamed from: a */
    public final Date m21903a(String str) {
        synchronized (this) {
            for (DateFormat dateFormat : this.f19689a) {
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e) {
                }
            }
            try {
                return C6235a.m21842a(str, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new JsonSyntaxException(str, e2);
            }
        }
    }

    /* renamed from: a */
    public void write(C6242b bVar, Date date) throws IOException {
        synchronized (this) {
            if (date == null) {
                bVar.mo21770k();
            } else {
                bVar.mo21778d(this.f19689a.get(0).format(date));
            }
        }
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public Date read(C6240a aVar) throws IOException {
        if (aVar.mo21802u() != JsonToken.NULL) {
            return m21903a(aVar.mo21804s());
        }
        aVar.mo21805r();
        return null;
    }
}
