package p193e.p194a.p1221t.p1222a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.TextView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.android.truemoji.C2886R;
import e.m.d.y.n;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.FutureTask;
import o3.a;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1221t.p1222a.p1224u.C20308c;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import p193e.p194a.p1221t.p1222a.p1224u.C20311f;
import p193e.p194a.p1221t.p1222a.p1224u.C20314i;
import q3.a.i0;
import s1.f0.v;
import s1.u.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.t.a.b */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/b.class */
public final class C20273b extends BaseAdapter implements Filterable, AdapterView.OnItemClickListener {

    /* renamed from: a */
    public List<C20305t> f57054a = s.a;

    /* renamed from: b */
    public final C20274a f57055b = new C20274a();

    /* renamed from: c */
    public int f57056c;

    /* renamed from: d */
    public final a<AbstractC20279e> f57057d;

    /* renamed from: e */
    public final a<AbstractC20301p> f57058e;

    /* renamed from: f */
    public final a<AbstractC19462a> f57059f;

    /* renamed from: e.a.t.a.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/t/a/b$a.class */
    public final class C20274a extends Filter {

        @e(c = "com.truecaller.android.truemoji.EmojiAutoCompleteAdapter$EmojiFilter", f = "EmojiAutoCompleteAdapter.kt", l = {92}, m = "getRecentShortnames")
        /* renamed from: e.a.t.a.b$a$a */
        /* loaded from: classes5-dex2jar.jar:e/a/t/a/b$a$a.class */
        public static final class C20275a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f57061d;

            /* renamed from: e */
            public int f57062e;

            /* renamed from: g */
            public Object f57064g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C20275a(d dVar) {
                super(dVar);
                C20274a.this = r4;
            }

            /* renamed from: s */
            public final Object m11290s(Object obj) {
                this.f57061d = obj;
                this.f57062e |= Integer.MIN_VALUE;
                return C20274a.this.m11291a(this);
            }
        }

        @e(c = "com.truecaller.android.truemoji.EmojiAutoCompleteAdapter$EmojiFilter$performFiltering$results$1", f = "EmojiAutoCompleteAdapter.kt", l = {73, 75}, m = "invokeSuspend")
        /* renamed from: e.a.t.a.b$a$b */
        /* loaded from: classes5-dex2jar.jar:e/a/t/a/b$a$b.class */
        public static final class C20276b extends i implements p<i0, d<? super List<? extends C20305t>>, Object> {

            /* renamed from: e */
            public int f57065e;

            /* renamed from: g */
            public final /* synthetic */ c0 f57067g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C20276b(c0 c0Var, d dVar) {
                super(2, dVar);
                C20274a.this = r5;
                this.f57067g = c0Var;
            }

            /* renamed from: i */
            public final d<s1.s> m11289i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C20276b(this.f57067g, dVar);
            }

            /* renamed from: k */
            public final Object m11288k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C20276b(this.f57067g, dVar).m11287s(s1.s.a);
            }

            /* renamed from: s */
            public final Object m11287s(Object obj) {
                List list;
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f57065e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    if (((CharSequence) this.f57067g.a).length() == 0) {
                        C20274a c20274a = C20274a.this;
                        this.f57065e = 1;
                        Object m11291a = c20274a.m11291a(this);
                        obj = m11291a;
                        if (m11291a == aVar) {
                            return aVar;
                        }
                        list = (List) obj;
                    } else {
                        AbstractC20279e abstractC20279e = (AbstractC20279e) C20273b.this.f57057d.get();
                        StringBuilder sb = new StringBuilder();
                        sb.append((CharSequence) this.f57067g.a);
                        sb.append('%');
                        String sb2 = sb.toString();
                        this.f57065e = 2;
                        Object mo11281c = abstractC20279e.mo11281c(sb2, 20, this);
                        obj = mo11281c;
                        if (mo11281c == aVar) {
                            return aVar;
                        }
                        list = (List) obj;
                    }
                } else if (i == 1) {
                    C25225a.m3932a3(obj);
                    list = (List) obj;
                } else if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                    list = (List) obj;
                }
                return list;
            }
        }

        public C20274a() {
            C20273b.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0128  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0147 A[LOOP:1: B:28:0x013d->B:30:0x0147, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x017d  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m11291a(s1.w.d<? super java.util.List<p193e.p194a.p1221t.p1222a.C20305t>> r8) {
            /*
                Method dump skipped, instructions count: 418
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1221t.p1222a.C20273b.C20274a.m11291a(s1.w.d):java.lang.Object");
        }

        @Override // android.widget.Filter
        public Filter.FilterResults performFiltering(CharSequence charSequence) {
            if (charSequence == null || !v.W(charSequence, ':', false, 2)) {
                return new Filter.FilterResults();
            }
            c0 c0Var = new c0();
            l.e(charSequence, "$this$drop");
            int length = charSequence.length();
            if (1 <= length) {
                length = 1;
            }
            c0Var.a = charSequence.subSequence(length, charSequence.length());
            List list = (List) s1.a.a.a.v0.f.d.c3((f) null, new C20276b(c0Var, null), 1, (Object) null);
            Filter.FilterResults filterResults = new Filter.FilterResults();
            filterResults.values = list;
            filterResults.count = list.size();
            return filterResults;
        }

        @Override // android.widget.Filter
        public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            C20273b c20273b = C20273b.this;
            Object obj = filterResults != null ? filterResults.values : null;
            if (!(obj instanceof List)) {
                obj = null;
            }
            List<C20305t> list = (List) obj;
            if (list != null) {
                c20273b.f57054a = list;
                c20273b.f57056c = charSequence != null ? charSequence.length() - 1 : 0;
                C20273b.this.notifyDataSetChanged();
            }
        }
    }

    public C20273b(a<AbstractC20279e> aVar, a<AbstractC20301p> aVar2, a<AbstractC19462a> aVar3) {
        l.e(aVar, "emojiDao");
        l.e(aVar2, "recentEmoji");
        l.e(aVar3, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f57057d = aVar;
        this.f57058e = aVar2;
        this.f57059f = aVar3;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f57054a.size();
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return this.f57055b;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f57054a.get(i).f57114c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return this.f57054a.get(i).f57114c.hashCode();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C20309d c20309d;
        C20311f c20311f;
        l.e(viewGroup, "parent");
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(C2886R.layout.item_emoji_auto_complete, viewGroup, false);
        }
        C20305t c20305t = this.f57054a.get(i);
        View findViewById = view.findViewById(C2886R.C2888id.shortnameText);
        l.d(findViewById, "view.findViewById<TextView>(R.id.shortnameText)");
        TextView textView = (TextView) findViewById;
        StringBuilder m8558w = C22128a.m8558w(':');
        m8558w.append(c20305t.f57113b);
        m8558w.append(':');
        textView.setText(m8558w.toString());
        String str = c20305t.f57114c;
        l.e(str, "value");
        if (!(str.length() == 0)) {
            FutureTask<C20311f> futureTask = C20314i.f57127a;
            if (futureTask != null && (c20311f = futureTask.get()) != null) {
                C20308c c20308c = c20311f.f57124a;
                int i2 = 0;
                while (true) {
                    int codePointAt = str.codePointAt(i2);
                    i2 += Character.charCount(codePointAt);
                    if (i2 < str.length()) {
                        C20308c c20308c2 = c20308c.f57118b.get(Integer.valueOf(codePointAt));
                        c20309d = null;
                        if (c20308c2 == null) {
                            break;
                        }
                        c20308c = c20308c2;
                    } else {
                        c20309d = c20308c.f57117a.get(Integer.valueOf(codePointAt));
                        break;
                    }
                }
            } else {
                throw new IllegalStateException("Emoji data loader has not been set");
            }
        } else {
            c20309d = null;
        }
        if (c20309d != null) {
            Context context = viewGroup.getContext();
            Context context2 = viewGroup.getContext();
            l.d(context2, "parent.context");
            int D = n.D(c20309d, context2);
            Object obj = C26467a.f74235a;
            ((ImageView) view.findViewById(C2886R.C2888id.emojiImage)).setImageDrawable(C26467a.C26470c.m1789b(context, D));
        }
        l.d(view, ViewAction.VIEW);
        return view;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        C20309d c20309d;
        C20311f c20311f;
        l.e(view, ViewAction.VIEW);
        String str = this.f57054a.get(i).f57114c;
        l.e(str, "value");
        if (!(str.length() == 0)) {
            FutureTask<C20311f> futureTask = C20314i.f57127a;
            if (futureTask != null && (c20311f = futureTask.get()) != null) {
                C20308c c20308c = c20311f.f57124a;
                int i2 = 0;
                while (true) {
                    int codePointAt = str.codePointAt(i2);
                    i2 += Character.charCount(codePointAt);
                    if (i2 < str.length()) {
                        C20308c c20308c2 = c20308c.f57118b.get(Integer.valueOf(codePointAt));
                        c20309d = null;
                        if (c20308c2 == null) {
                            break;
                        }
                        c20308c = c20308c2;
                    } else {
                        c20309d = c20308c.f57117a.get(Integer.valueOf(codePointAt));
                        break;
                    }
                }
            } else {
                throw new IllegalStateException("Emoji data loader has not been set");
            }
        } else {
            c20309d = null;
        }
        if (c20309d != null) {
            ((AbstractC20301p) this.f57058e.get()).mo11258c(c20309d);
            AbstractC19462a abstractC19462a = (AbstractC19462a) this.f57059f.get();
            LinkedHashMap m8655X = C22128a.m8655X("EmojiAutocomplete", "type");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("value", Double.valueOf(this.f57056c));
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("EmojiAutocomplete");
            m15852a.m15849c(linkedHashMap);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19462a.mo13275a(build);
        }
    }
}
