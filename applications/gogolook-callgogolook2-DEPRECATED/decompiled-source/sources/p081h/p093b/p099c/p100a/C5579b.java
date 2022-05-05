package p081h.p093b.p099c.p100a;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.text.util.Rfc822Token;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p081h.p093b.p099c.p100a.AbstractC5598e;
import p081h.p093b.p099c.p100a.C5592d;
import p081h.p093b.p099c.p100a.C5600f;
import p081h.p093b.p099c.p100a.C5604g;
/* renamed from: h.b.c.a.b */
/* loaded from: classes-dex2jar.jar:h/b/c/a/b.class */
public class C5579b extends BaseAdapter implements Filterable, AbstractC5578a, AbstractC5598e.AbstractC5599a {

    /* renamed from: a */
    public final C5600f.AbstractC5603c f13922a;

    /* renamed from: b */
    public final int f13923b;

    /* renamed from: c */
    public final Context f13924c;

    /* renamed from: d */
    public final ContentResolver f13925d;

    /* renamed from: e */
    public Account f13926e;

    /* renamed from: f */
    public final int f13927f;

    /* renamed from: g */
    public C5592d f13928g;

    /* renamed from: h */
    public LinkedHashMap<Long, List<C5607h>> f13929h;

    /* renamed from: i */
    public List<C5607h> f13930i;

    /* renamed from: j */
    public Set<String> f13931j;

    /* renamed from: k */
    public List<C5607h> f13932k;

    /* renamed from: l */
    public List<C5607h> f13933l;

    /* renamed from: m */
    public int f13934m;

    /* renamed from: n */
    public CharSequence f13935n;

    /* renamed from: o */
    public AbstractC5598e f13936o;

    /* renamed from: p */
    public final HandlerC5583d f13937p = new HandlerC5583d();

    /* renamed from: q */
    public AbstractC5587h f13938q;

    /* renamed from: h.b.c.a.b$b */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/b$b.class */
    public final class C5581b extends Filter {
        public C5581b() {
        }

        @Override // android.widget.Filter
        public CharSequence convertResultToString(Object obj) {
            C5607h hVar = (C5607h) obj;
            String g = hVar.m25023g();
            String c = hVar.m25027c();
            String str = c;
            if (!TextUtils.isEmpty(g)) {
                str = TextUtils.equals(g, c) ? c : new Rfc822Token(g, c, null).toString();
            }
            return str;
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            Cursor cursor;
            Throwable th;
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (TextUtils.isEmpty(charSequence)) {
                C5579b.this.m25093e();
                return filterResults;
            }
            try {
                cursor = C5579b.this.m25103a(charSequence, C5579b.this.f13927f, (Long) null);
                if (cursor != null) {
                    try {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        ArrayList arrayList = new ArrayList();
                        HashSet hashSet = new HashSet();
                        while (cursor.moveToNext()) {
                            C5579b.m25098b(new C5588i(cursor, null), true, linkedHashMap, arrayList, hashSet);
                        }
                        List a = C5579b.this.m25101a(linkedHashMap, arrayList);
                        filterResults.values = new C5582c(a, linkedHashMap, arrayList, hashSet, C5579b.this.m25096b(hashSet));
                        filterResults.count = a.size();
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                return filterResults;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
            }
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            C5579b bVar = C5579b.this;
            bVar.f13935n = charSequence;
            bVar.m25093e();
            Object obj = filterResults.values;
            if (obj != null) {
                C5582c cVar = (C5582c) obj;
                C5579b.this.f13929h = cVar.f13941b;
                C5579b.this.f13930i = cVar.f13942c;
                C5579b.this.f13931j = cVar.f13943d;
                C5579b bVar2 = C5579b.this;
                int size = cVar.f13940a.size();
                List<C5586g> list = cVar.f13944e;
                bVar2.m25117a(size, list == null ? 0 : list.size());
                C5579b.this.m25100a(cVar.f13940a);
                if (cVar.f13944e != null) {
                    C5579b.this.m25102a(charSequence, cVar.f13944e, C5579b.this.f13927f - cVar.f13943d.size());
                    return;
                }
                return;
            }
            C5579b.this.m25100a(Collections.emptyList());
        }
    }

    /* renamed from: h.b.c.a.b$c */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/b$c.class */
    public static class C5582c {

        /* renamed from: a */
        public final List<C5607h> f13940a;

        /* renamed from: b */
        public final LinkedHashMap<Long, List<C5607h>> f13941b;

        /* renamed from: c */
        public final List<C5607h> f13942c;

        /* renamed from: d */
        public final Set<String> f13943d;

        /* renamed from: e */
        public final List<C5586g> f13944e;

        public C5582c(List<C5607h> list, LinkedHashMap<Long, List<C5607h>> linkedHashMap, List<C5607h> list2, Set<String> set, List<C5586g> list3) {
            this.f13940a = list;
            this.f13941b = linkedHashMap;
            this.f13942c = list2;
            this.f13943d = set;
            this.f13944e = list3;
        }
    }

    /* renamed from: h.b.c.a.b$d */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/b$d.class */
    public final class HandlerC5583d extends Handler {
        public HandlerC5583d() {
        }

        /* renamed from: a */
        public void m25087a() {
            removeMessages(1);
        }

        /* renamed from: b */
        public void m25086b() {
            sendMessageDelayed(obtainMessage(1, 0, 0, null), 1000L);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (C5579b.this.f13934m > 0) {
                C5579b bVar = C5579b.this;
                bVar.m25100a(bVar.m25092f());
            }
        }
    }

    /* renamed from: h.b.c.a.b$e */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/b$e.class */
    public class C5584e extends Filter {

        /* renamed from: a */
        public final C5586g f13946a;

        /* renamed from: b */
        public int f13947b;

        public C5584e(C5586g gVar) {
            this.f13946a = gVar;
        }

        /* renamed from: a */
        public int m25085a() {
            int i;
            synchronized (this) {
                i = this.f13947b;
            }
            return i;
        }

        /* renamed from: a */
        public void m25084a(int i) {
            synchronized (this) {
                this.f13947b = i;
            }
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            Filter.FilterResults filterResults = new Filter.FilterResults();
            Cursor cursor = null;
            filterResults.values = null;
            filterResults.count = 0;
            if (!TextUtils.isEmpty(charSequence)) {
                ArrayList arrayList = new ArrayList();
                try {
                    Cursor a = C5579b.this.m25103a(charSequence, m25085a(), Long.valueOf(this.f13946a.f13951a));
                    if (a != null) {
                        while (true) {
                            cursor = a;
                            if (!a.moveToNext()) {
                                break;
                            }
                            arrayList.add(new C5588i(a, Long.valueOf(this.f13946a.f13951a)));
                        }
                    }
                    if (a != null) {
                        a.close();
                    }
                    if (!arrayList.isEmpty()) {
                        filterResults.values = arrayList;
                        filterResults.count = arrayList.size();
                    }
                } catch (Throwable th) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            C5579b.this.f13937p.m25087a();
            if (TextUtils.equals(charSequence, C5579b.this.f13935n)) {
                if (filterResults.count > 0) {
                    Iterator it = ((ArrayList) filterResults.values).iterator();
                    while (it.hasNext()) {
                        C5579b.this.m25114a((C5588i) it.next(), this.f13946a.f13951a == 0);
                    }
                }
                C5579b.m25095c(C5579b.this);
                if (C5579b.this.f13934m > 0) {
                    C5579b.this.f13937p.m25086b();
                }
                if (filterResults.count > 0 || C5579b.this.f13934m == 0) {
                    C5579b.this.m25093e();
                }
            }
            C5579b bVar = C5579b.this;
            bVar.m25100a(bVar.m25092f());
        }
    }

    /* renamed from: h.b.c.a.b$f */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/b$f.class */
    public static class C5585f {

        /* renamed from: a */
        public static final Uri f13949a = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "directories");

        /* renamed from: b */
        public static final String[] f13950b = {"_id", "accountName", "accountType", LogsGroupRealmObject.DISPLAY_NAME, "packageName", "typeResourceId"};
    }

    /* renamed from: h.b.c.a.b$g */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/b$g.class */
    public static final class C5586g {

        /* renamed from: a */
        public long f13951a;

        /* renamed from: b */
        public String f13952b;

        /* renamed from: c */
        public String f13953c;

        /* renamed from: d */
        public String f13954d;

        /* renamed from: e */
        public CharSequence f13955e;

        /* renamed from: f */
        public C5584e f13956f;
    }

    /* renamed from: h.b.c.a.b$h */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/b$h.class */
    public interface AbstractC5587h {
        /* renamed from: a */
        void mo25083a(List<C5607h> list);
    }

    /* renamed from: h.b.c.a.b$i */
    /* loaded from: classes-dex2jar.jar:h/b/c/a/b$i.class */
    public static class C5588i {

        /* renamed from: a */
        public final String f13957a;

        /* renamed from: b */
        public final String f13958b;

        /* renamed from: c */
        public final int f13959c;

        /* renamed from: d */
        public final String f13960d;

        /* renamed from: e */
        public final long f13961e;

        /* renamed from: f */
        public final Long f13962f;

        /* renamed from: g */
        public final long f13963g;

        /* renamed from: h */
        public final String f13964h;

        /* renamed from: i */
        public final int f13965i;

        /* renamed from: j */
        public final String f13966j;

        public C5588i(Cursor cursor, Long l) {
            this.f13957a = cursor.getString(0);
            this.f13958b = cursor.getString(1);
            this.f13959c = cursor.getInt(2);
            this.f13960d = cursor.getString(3);
            this.f13961e = cursor.getLong(4);
            this.f13962f = l;
            this.f13963g = cursor.getLong(5);
            this.f13964h = cursor.getString(6);
            this.f13965i = cursor.getInt(7);
            this.f13966j = cursor.getString(8);
        }
    }

    public C5579b(Context context, int i, int i2) {
        this.f13924c = context;
        this.f13925d = context.getContentResolver();
        this.f13927f = i;
        this.f13936o = new C5589c(this.f13925d);
        this.f13923b = i2;
        if (i2 == 0) {
            this.f13922a = C5600f.f13994b;
        } else if (i2 == 1) {
            this.f13922a = C5600f.f13993a;
        } else {
            this.f13922a = C5600f.f13994b;
            Log.e("BaseRecipientAdapter", "Unsupported query type: " + i2);
        }
    }

    /* renamed from: a */
    public static List<C5586g> m25116a(Context context, Cursor cursor, Account account) {
        PackageManager packageManager = context.getPackageManager();
        ArrayList arrayList = new ArrayList();
        C5586g gVar = null;
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            if (j != 1) {
                C5586g gVar2 = new C5586g();
                String string = cursor.getString(4);
                int i = cursor.getInt(5);
                gVar2.f13951a = j;
                cursor.getString(3);
                gVar2.f13953c = cursor.getString(1);
                gVar2.f13954d = cursor.getString(2);
                if (!(string == null || i == 0)) {
                    try {
                        gVar2.f13952b = packageManager.getResourcesForApplication(string).getString(i);
                        if (gVar2.f13952b == null) {
                            Log.e("BaseRecipientAdapter", "Cannot resolve directory name: " + i + "@" + string);
                        }
                    } catch (PackageManager.NameNotFoundException e) {
                        Log.e("BaseRecipientAdapter", "Cannot resolve directory name: " + i + "@" + string, e);
                    }
                }
                if (account == null || !account.name.equals(gVar2.f13953c) || !account.type.equals(gVar2.f13954d)) {
                    arrayList.add(gVar2);
                } else {
                    gVar = gVar2;
                }
            }
        }
        if (gVar != null) {
            arrayList.add(1, gVar);
        }
        return arrayList;
    }

    /* renamed from: b */
    public static void m25098b(C5588i iVar, boolean z, LinkedHashMap<Long, List<C5607h>> linkedHashMap, List<C5607h> list, Set<String> set) {
        if (!set.contains(iVar.f13958b)) {
            set.add(iVar.f13958b);
            if (!z) {
                list.add(C5607h.m25029b(iVar.f13957a, iVar.f13965i, iVar.f13958b, iVar.f13959c, iVar.f13960d, iVar.f13961e, iVar.f13962f, iVar.f13963g, iVar.f13964h, true, iVar.f13966j));
            } else if (linkedHashMap.containsKey(Long.valueOf(iVar.f13961e))) {
                linkedHashMap.get(Long.valueOf(iVar.f13961e)).add(C5607h.m25034a(iVar.f13957a, iVar.f13965i, iVar.f13958b, iVar.f13959c, iVar.f13960d, iVar.f13961e, iVar.f13962f, iVar.f13963g, iVar.f13964h, true, iVar.f13966j));
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(C5607h.m25029b(iVar.f13957a, iVar.f13965i, iVar.f13958b, iVar.f13959c, iVar.f13960d, iVar.f13961e, iVar.f13962f, iVar.f13963g, iVar.f13964h, true, iVar.f13966j));
                linkedHashMap.put(Long.valueOf(iVar.f13961e), arrayList);
            }
        }
    }

    /* renamed from: c */
    public static /* synthetic */ int m25095c(C5579b bVar) {
        int i = bVar.f13934m;
        bVar.f13934m = i - 1;
        return i;
    }

    /* renamed from: a */
    public final Cursor m25103a(CharSequence charSequence, int i, Long l) {
        Uri.Builder appendQueryParameter = this.f13922a.m25056a().buildUpon().appendPath(charSequence.toString()).appendQueryParameter("limit", String.valueOf(i + 5));
        if (l != null) {
            appendQueryParameter.appendQueryParameter("directory", String.valueOf(l));
        }
        Account account = this.f13926e;
        if (account != null) {
            appendQueryParameter.appendQueryParameter("name_for_primary_account", account.name);
            appendQueryParameter.appendQueryParameter("type_for_primary_account", this.f13926e.type);
        }
        System.currentTimeMillis();
        Cursor query = this.f13925d.query(appendQueryParameter.build(), this.f13922a.m25053c(), null, null, null);
        System.currentTimeMillis();
        return query;
    }

    /* renamed from: a */
    public final List<C5607h> m25101a(LinkedHashMap<Long, List<C5607h>> linkedHashMap, List<C5607h> list) {
        int i;
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<Long, List<C5607h>>> it = linkedHashMap.entrySet().iterator();
        int i2 = 0;
        while (true) {
            i = i2;
            if (!it.hasNext()) {
                break;
            }
            List<C5607h> value = it.next().getValue();
            int size = value.size();
            for (int i3 = 0; i3 < size; i3++) {
                C5607h hVar = value.get(i3);
                arrayList.add(hVar);
                this.f13936o.mo7928a(hVar, this);
                i2++;
            }
            if (i2 > this.f13927f) {
                i = i2;
                break;
            }
        }
        if (i <= this.f13927f) {
            for (C5607h hVar2 : list) {
                if (i > this.f13927f) {
                    break;
                }
                arrayList.add(hVar2);
                this.f13936o.mo7928a(hVar2, this);
                i++;
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public Map<String, C5607h> m25099a(Set<String> set) {
        return null;
    }

    @Override // p081h.p093b.p099c.p100a.AbstractC5598e.AbstractC5599a
    /* renamed from: a */
    public void mo25059a() {
    }

    /* renamed from: a */
    public void m25117a(int i, int i2) {
        if (i == 0 && i2 > 1) {
            m25094d();
        }
    }

    /* renamed from: a */
    public void m25115a(AbstractC5587h hVar) {
        this.f13938q = hVar;
    }

    /* renamed from: a */
    public void m25114a(C5588i iVar, boolean z) {
        m25098b(iVar, z, this.f13929h, this.f13930i, this.f13931j);
    }

    /* renamed from: a */
    public void m25106a(C5592d dVar) {
        this.f13928g = dVar;
        this.f13928g.m25071a(this.f13922a);
    }

    /* renamed from: a */
    public void m25105a(AbstractC5598e eVar) {
        this.f13936o = eVar;
    }

    /* renamed from: a */
    public void m25104a(C5607h hVar, AbstractC5598e.AbstractC5599a aVar) {
        this.f13936o.mo7928a(hVar, aVar);
    }

    /* renamed from: a */
    public void m25102a(CharSequence charSequence, List<C5586g> list, int i) {
        int size = list.size();
        for (int i2 = 1; i2 < size; i2++) {
            C5586g gVar = list.get(i2);
            gVar.f13955e = charSequence;
            if (gVar.f13956f == null) {
                gVar.f13956f = new C5584e(gVar);
            }
            gVar.f13956f.m25084a(i);
            gVar.f13956f.filter(charSequence);
        }
        this.f13934m = size - 1;
        this.f13937p.m25086b();
    }

    /* renamed from: a */
    public void mo7934a(ArrayList<String> arrayList, C5604g.AbstractC5606b bVar) {
        C5604g.m25049a(m25090i(), this, arrayList, m25091h(), bVar);
    }

    /* renamed from: a */
    public void m25100a(List<C5607h> list) {
        this.f13932k = list;
        this.f13938q.mo25083a(list);
        notifyDataSetChanged();
    }

    /* renamed from: b */
    public List<C5586g> m25096b(Set<String> set) {
        int i = this.f13927f;
        int size = set.size();
        Cursor cursor = null;
        if (i - size <= 0) {
            return null;
        }
        try {
            Cursor query = this.f13925d.query(C5585f.f13949a, C5585f.f13950b, null, null, null);
            cursor = query;
            List<C5586g> a = m25116a(this.f13924c, query, this.f13926e);
            if (query != null) {
                query.close();
            }
            return a;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // p081h.p093b.p099c.p100a.AbstractC5598e.AbstractC5599a
    /* renamed from: b */
    public void mo25058b() {
    }

    @Override // p081h.p093b.p099c.p100a.AbstractC5598e.AbstractC5599a
    /* renamed from: c */
    public void mo25057c() {
        notifyDataSetChanged();
    }

    /* renamed from: d */
    public void m25094d() {
        this.f13933l = this.f13932k;
    }

    /* renamed from: e */
    public void m25093e() {
        this.f13933l = null;
    }

    /* renamed from: f */
    public List<C5607h> m25092f() {
        return m25101a(this.f13929h, this.f13930i);
    }

    /* renamed from: g */
    public boolean mo7931g() {
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<C5607h> j = m25089j();
        return j != null ? j.size() : 0;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new C5581b();
    }

    @Override // android.widget.Adapter
    public C5607h getItem(int i) {
        return m25089j().get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return m25089j().get(i).m25022h();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C5607h hVar = m25089j().get(i);
        CharSequence charSequence = this.f13935n;
        return this.f13928g.m25074a(view, viewGroup, hVar, i, C5592d.EnumC5595c.BASE_RECIPIENT, charSequence == null ? null : charSequence.toString());
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    /* renamed from: h */
    public Account m25091h() {
        return this.f13926e;
    }

    /* renamed from: i */
    public Context m25090i() {
        return this.f13924c;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return m25089j().get(i).m25017m();
    }

    /* renamed from: j */
    public List<C5607h> m25089j() {
        List<C5607h> list = this.f13933l;
        if (list == null) {
            list = this.f13932k;
        }
        return list;
    }

    /* renamed from: k */
    public int m25088k() {
        return this.f13923b;
    }
}
