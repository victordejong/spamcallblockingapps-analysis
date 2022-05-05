package p459j.p460a.p474c0.p491g.p492a0;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import android.widget.Filter;
import androidx.core.util.Pair;
import gogolook.callgogolook2.messaging.p078ui.contact.ContactListItemView;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p081h.p093b.p099c.p100a.C5579b;
import p081h.p093b.p099c.p100a.C5604g;
import p081h.p093b.p099c.p100a.C5607h;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12195p;
import p459j.p460a.p474c0.p499h.C12197q;
/* renamed from: j.a.c0.g.a0.d */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/d.class */
public final class C11914d extends C5579b {

    /* renamed from: j.a.c0.g.a0.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/d$a.class */
    public class C11915a extends Filter {

        /* renamed from: a */
        public final C11916a f26708a = new C11916a(this);

        /* renamed from: j.a.c0.g.a0.d$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/g/a0/d$a$a.class */
        public class C11916a implements Comparator<C5607h> {

            /* renamed from: a */
            public final Collator f26710a = Collator.getInstance(Locale.getDefault());

            public C11916a(C11915a aVar) {
                this.f26710a.setStrength(0);
            }

            /* renamed from: a */
            public int compare(C5607h hVar, C5607h hVar2) {
                boolean d = C12195p.m6835d(hVar);
                boolean d2 = C12195p.m6835d(hVar);
                if (d != d2) {
                    if (d) {
                        return -1;
                    }
                    if (d2) {
                        return 1;
                    }
                }
                int compare = this.f26710a.compare(hVar.m25023g(), hVar2.m25023g());
                if (compare != 0) {
                    return compare;
                }
                int i = (hVar.m25039a() > hVar2.m25039a() ? 1 : (hVar.m25039a() == hVar2.m25039a() ? 0 : -1));
                int i2 = i < 0 ? -1 : i == 0 ? 0 : 1;
                if (i2 != 0) {
                    return i2;
                }
                if (hVar.m25018l()) {
                    return -1;
                }
                return hVar2.m25018l() ? 1 : 0;
            }
        }

        public C11915a() {
        }

        /* renamed from: a */
        public final Pair<Cursor, Boolean> m7930a(Context context, String str) {
            C12151d.m7002b();
            AbstractC12170i.m6941a().mo6916a("bugle_always_autocomplete_email_address", false);
            return Pair.create(C12197q.m6828a(C11914d.this.m25090i(), str).m9267a(), true);
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            C12151d.m7002b();
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (TextUtils.isEmpty(charSequence)) {
                C11914d.this.m25093e();
                return filterResults;
            }
            String charSequence2 = charSequence.toString();
            Pair<Cursor, Boolean> a = m7930a(C11914d.this.m25090i(), charSequence2);
            Cursor cursor = a.first;
            boolean booleanValue = a.second.booleanValue();
            if (cursor != null) {
                try {
                    ArrayList arrayList = new ArrayList();
                    if (AbstractC12181l0.m6899a(charSequence2)) {
                        arrayList.add(C12195p.m6837b(charSequence2));
                    }
                    HashSet hashSet = new HashSet();
                    while (cursor.moveToNext()) {
                        long j = cursor.getLong(0);
                        boolean z = !hashSet.contains(Long.valueOf(j));
                        if (z) {
                            hashSet.add(Long.valueOf(j));
                        }
                        arrayList.add(C12197q.m6827a(cursor, z));
                    }
                    if (!booleanValue) {
                        Collections.sort(arrayList, this.f26708a);
                    }
                    filterResults.values = arrayList;
                    filterResults.count = 1;
                } finally {
                    cursor.close();
                }
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            C11914d.this.f13935n = charSequence;
            C11914d.this.m25093e();
            Object obj = filterResults.values;
            if (obj != null) {
                C11914d.this.m25100a((List) obj);
                return;
            }
            C11914d.this.m25100a(Collections.emptyList());
        }
    }

    public C11914d(Context context, int i, int i2, ContactListItemView.AbstractC4717a aVar) {
        super(context, i, i2);
        m25105a(new C11917e(context, aVar));
    }

    public C11914d(Context context, ContactListItemView.AbstractC4717a aVar) {
        this(context, Integer.MAX_VALUE, 1, aVar);
    }

    @Override // p081h.p093b.p099c.p100a.C5579b
    /* renamed from: a */
    public void mo7934a(ArrayList<String> arrayList, C5604g.AbstractC5606b bVar) {
        int min = Math.min(50, arrayList.size());
        HashSet hashSet = new HashSet();
        for (int i = 0; i < min; i++) {
            Rfc822Token[] rfc822TokenArr = Rfc822Tokenizer.tokenize(arrayList.get(i).toLowerCase());
            hashSet.add(rfc822TokenArr.length > 0 ? rfc822TokenArr[0].getAddress() : arrayList.get(i));
        }
        HashMap hashMap = new HashMap();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Cursor a = C12197q.m6817d(m25090i(), str).m9267a();
            if (a != null) {
                try {
                    if (a.moveToNext()) {
                        hashMap.put(str, C12197q.m6827a(a, true));
                    }
                } finally {
                    a.close();
                }
            }
        }
        bVar.mo25041a(hashMap);
    }

    @Override // p081h.p093b.p099c.p100a.C5579b
    /* renamed from: g */
    public boolean mo7931g() {
        return true;
    }

    @Override // p081h.p093b.p099c.p100a.C5579b, android.widget.Filterable
    public Filter getFilter() {
        return new C11915a();
    }
}
