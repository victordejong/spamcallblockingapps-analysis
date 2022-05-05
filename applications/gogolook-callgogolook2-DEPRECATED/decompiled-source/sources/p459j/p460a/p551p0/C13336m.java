package p459j.p460a.p551p0;

import android.content.Context;
import android.database.Cursor;
import androidx.core.app.NotificationCompatJellybean;
import com.google.gson.Gson;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.SmsFilterRulesHelper;
import gogolook.callgogolook2.gson.TextSearchResultEntry;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.search.TextSearchFragment;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p384e.C10113s;
import p081h.p203i.p384e.p390x.C10173a;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p538m0.C13021d;
import p459j.p460a.p541n0.C13110i;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14092n3;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
import p626l.p631e0.C14966w;
import p626l.p632u.C15021m;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0005\u0018�� >2\u00020\u0001:\u0001>B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0018H\u0002J \u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0018H\u0002J \u0010 \u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0018H\u0002J \u0010!\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0018H\u0002J \u0010\"\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0018H\u0002J\b\u0010#\u001a\u00020\u001eH\u0016J\b\u0010$\u001a\u00020\u001eH\u0016J\b\u0010%\u001a\u00020\u001eH\u0016J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J \u0010'\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0018H\u0016J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J\u0018\u0010*\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0018H\u0016J\u0018\u0010+\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0018H\u0002J\u0010\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010/0.H\u0002J\u0010\u00100\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060.H\u0002J\u001e\u00101\u001a\b\u0012\u0004\u0012\u00020/0.2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u0018H\u0002J\b\u00105\u001a\u00020\u001eH\u0016J\b\u00106\u001a\u00020\u001eH\u0016J\b\u00107\u001a\u00020\u001eH\u0016J \u00108\u001a\u00020\u001e2\u0006\u00109\u001a\u00020:2\u000e\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010/0.H\u0002J\u0012\u0010<\u001a\u00020\u001e2\b\u0010=\u001a\u0004\u0018\u00010\u0006H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\fX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016¨\u0006?"}, m815d2 = {"Lgogolook/callgogolook2/search/TextSearchPresenter;", "Lgogolook/callgogolook2/search/TextSearchContract$Presenter;", "view", "Lgogolook/callgogolook2/search/TextSearchContract$View;", "(Lgogolook/callgogolook2/search/TextSearchContract$View;)V", "currentKeyword", "", "getCurrentKeyword", "()Ljava/lang/String;", "setCurrentKeyword", "(Ljava/lang/String;)V", "searchSetting", "Lgogolook/callgogolook2/search/SearchSetting;", "getSearchSetting", "()Lgogolook/callgogolook2/search/SearchSetting;", "typeState", "Lgogolook/callgogolook2/search/TextSearchFragment$InputTypeMode;", "getTypeState", "()Lgogolook/callgogolook2/search/TextSearchFragment$InputTypeMode;", "setTypeState", "(Lgogolook/callgogolook2/search/TextSearchFragment$InputTypeMode;)V", "getView", "()Lgogolook/callgogolook2/search/TextSearchContract$View;", "canSearch", "", SmsFilterRulesHelper.KEYWORD, "type", "", "hasLimit", "checkToDoAutoCompleteSearch", "", "fromSearchType", "checkToDoInAppSearch", "checkToDoNumberLookup", "checkToDoTextSearch", "clickEditor", "clickSearchArea", "create", "doAutoCompleteSearch", "doAutoSearch", "doInAppSearch", "doNumberLookup", "doSearch", "doTextSearch", "isFromLoadMore", "getPrefTrendingList", "", "Lgogolook/callgogolook2/search/SuggestionLabel;", "getPrefUserSearchedList", "parseTrendingObject", "trendingArray", "Lorg/json/JSONArray;", "isLabel", "queryRecentList", "querySearchHistory", "queryTrendingList", "savePrefTrendingList", "currentTime", "", "list", "savePrefUserSearched", NotificationCompatJellybean.KEY_LABEL, "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.p0.m */
/* loaded from: classes3-dex2jar.jar:j/a/p0/m.class */
public final class C13336m implements AbstractC13333j {

    /* renamed from: e */
    public static final String[] f30017e = {"_id", "_number", "_e164", "_searchtime", "_updatetime"};

    /* renamed from: b */
    public String f30019b;

    /* renamed from: d */
    public final AbstractC13334k f30021d;

    /* renamed from: a */
    public TextSearchFragment.EnumC5119i1 f30018a = TextSearchFragment.EnumC5119i1.BEFORE_TYPE;

    /* renamed from: c */
    public final C13331h f30020c = new C13331h();

    /* renamed from: j.a.p0.m$a */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$a.class */
    public static final class C13337a {
        public C13337a() {
        }

        public /* synthetic */ C13337a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.p0.m$b */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$b.class */
    public static final class C13338b extends C10173a<List<? extends C13332i>> {
    }

    /* renamed from: j.a.p0.m$c */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$c.class */
    public static final class C13339c extends C10173a<List<? extends String>> {
    }

    /* renamed from: j.a.p0.m$d */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$d.class */
    public static final class C13340d<T> implements Single.OnSubscribe<T> {
        public C13340d() {
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<String>> singleSubscriber) {
            singleSubscriber.onSuccess(C13336m.this.m4147k());
        }
    }

    /* renamed from: j.a.p0.m$e */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$e.class */
    public static final class C13341e<T> implements Action1<List<? extends String>> {
        public C13341e() {
        }

        /* renamed from: a */
        public final void call(List<String> list) {
            AbstractC13334k l = C13336m.this.m4146l();
            C15149k.m383a((Object) list, "it");
            l.mo4194b(list);
        }
    }

    /* renamed from: j.a.p0.m$f */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$f.class */
    public static final class C13342f<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C13342f f30024a = new C13342f();

        /* renamed from: a */
        public final void call(Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: j.a.p0.m$g */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$g.class */
    public static final class C13343g<T> implements Single.OnSubscribe<T> {

        /* renamed from: a */
        public static final C13343g f30025a = new C13343g();

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Cursor> singleSubscriber) {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
            singleSubscriber.onSuccess(o.getContentResolver().query(C13021d.f29448a, C13336m.f30017e, "_id IN (SELECT _id FROM SearchHistoryDb GROUP BY _e164)", null, "_searchtime DESC , _updatetime DESC"));
        }
    }

    /* renamed from: j.a.p0.m$h */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$h.class */
    public static final class C13344h<T> implements Action1<Cursor> {
        public C13344h() {
        }

        /* renamed from: a */
        public final void call(Cursor cursor) {
            C13336m.this.m4146l().mo4198a(cursor);
        }
    }

    /* renamed from: j.a.p0.m$i */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$i.class */
    public static final class C13345i<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C13345i f30027a = new C13345i();

        /* renamed from: a */
        public final void call(Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: j.a.p0.m$j */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$j.class */
    public static final class C13346j<T> implements Single.OnSubscribe<T> {
        public C13346j() {
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super List<? extends C13332i>> singleSubscriber) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - C13915b3.m3065a("KEY_TRENDING_TIME", 0L) < AdUtils.TRACK_INSTALL_PERIOD) {
                singleSubscriber.onSuccess(C13336m.this.m4148j());
                return;
            }
            C12378a.C12380b c = C12378a.m6275a(C12378a.EnumC12382d.GET_TRENDING, C14017g4.m2810n()).m6261c();
            if (c != null) {
                String str = c.f27922c;
                if (c.f27921b == 200) {
                    JSONObject jSONObject = new JSONObject(str);
                    ArrayList arrayList = new ArrayList();
                    if (jSONObject.has("labels")) {
                        C13336m mVar = C13336m.this;
                        JSONArray optJSONArray = jSONObject.optJSONArray("labels");
                        C15149k.m383a((Object) optJSONArray, "trendingObject.optJSONArray(FIELD_LABELS)");
                        arrayList.addAll(mVar.m4168a(optJSONArray, true));
                    }
                    if (jSONObject.has("keywords")) {
                        C13336m mVar2 = C13336m.this;
                        JSONArray optJSONArray2 = jSONObject.optJSONArray("keywords");
                        C15149k.m383a((Object) optJSONArray2, "trendingObject.optJSONArray(FIELD_KEYWORDS)");
                        arrayList.addAll(mVar2.m4168a(optJSONArray2, false));
                    }
                    List b = C15029u.m539b((Iterable) arrayList);
                    if (true ^ b.isEmpty()) {
                        C13336m.this.m4176a(currentTimeMillis, b);
                    }
                    singleSubscriber.onSuccess(b);
                    return;
                }
                C13565v g = C13565v.m3921g();
                C15149k.m383a((Object) g, "DevelopMode.getInstance()");
                if (g.m23335b()) {
                    AbstractC13334k l = C13336m.this.m4146l();
                    C15149k.m383a((Object) str, "responseBody");
                    l.mo4193c(str);
                }
            }
            singleSubscriber.onError(new Exception("Empty trending body or error status code"));
        }
    }

    /* renamed from: j.a.p0.m$k */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$k.class */
    public static final class C13347k<T> implements Action1<List<? extends C13332i>> {
        public C13347k() {
        }

        /* renamed from: a */
        public final void call(List<? extends C13332i> list) {
            AbstractC13334k l = C13336m.this.m4146l();
            C15149k.m383a((Object) list, "it");
            l.mo4192c((List<C13332i>) list);
        }
    }

    /* renamed from: j.a.p0.m$l */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$l.class */
    public static final class C13348l<T> implements Action1<Throwable> {

        /* renamed from: a */
        public static final C13348l f30030a = new C13348l();

        /* renamed from: a */
        public final void call(Throwable th) {
            C14080m2.m2612a(th);
        }
    }

    /* renamed from: j.a.p0.m$m */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$m.class */
    public static final class C13349m extends C10173a<List<? extends C13332i>> {
    }

    /* renamed from: j.a.p0.m$n */
    /* loaded from: classes3-dex2jar.jar:j/a/p0/m$n.class */
    public static final class C13350n extends C10173a<List<? extends String>> {
    }

    static {
        new C13337a(null);
    }

    public C13336m(AbstractC13334k kVar) {
        C15149k.m377b(kVar, "view");
        this.f30021d = kVar;
    }

    /* renamed from: a */
    public final List<C13332i> m4168a(JSONArray jSONArray, boolean z) throws JSONException {
        String str;
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            if (z) {
                String string = jSONObject.getString("lid");
                C14099o3 n = C14099o3.m2510n();
                Integer valueOf = Integer.valueOf(string);
                C15149k.m383a((Object) valueOf, "Integer.valueOf(lid)");
                str = n.m2546a(valueOf.intValue());
            } else {
                str = jSONObject.getString(SmsFilterRulesHelper.KEYWORD);
            }
            int i2 = 1;
            if (!(str == null || str.length() == 0)) {
                if (jSONObject.getInt("curation") == 0) {
                    i2 = z ? 2 : 4;
                } else if (!z) {
                    i2 = 3;
                }
                arrayList.add(new C13332i(str, Integer.valueOf(i2)));
            }
        }
        return arrayList;
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: a */
    public void mo4177a() {
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        C13110i.m4602a(o);
    }

    /* renamed from: a */
    public final void m4176a(long j, List<? extends C13332i> list) {
        C14299q.m1747a(list.size());
        C13915b3.m3057b("KEY_TRENDING_TIME", j);
        String a = new Gson().m30985a(list, new C13349m().m13276b());
        C15149k.m383a((Object) a, "Gson().toJson(list, obje…stionLabel?>?>() {}.type)");
        C13915b3.m3044e("KEY_TRENDING_LIST", a);
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: a */
    public void mo4175a(TextSearchFragment.EnumC5119i1 i1Var) {
        C15149k.m377b(i1Var, "<set-?>");
        this.f30018a = i1Var;
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: a */
    public void mo4171a(String str) {
        this.f30019b = str;
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: a */
    public void mo4170a(String str, int i, boolean z) {
        C15149k.m377b(str, SmsFilterRulesHelper.KEYWORD);
        if (!C14966w.m724a((CharSequence) str)) {
            if (!C14217x3.m2137h(MyApplication.m29013o())) {
                this.f30021d.mo4202D();
                if (i >= 0 && i > 2) {
                    if (this.f30021d.mo4191h()) {
                        this.f30021d.mo4187p();
                    }
                    this.f30021d.mo4203B();
                    return;
                }
            }
            if (i == -1 || i == 0) {
                m4160c(str, i, z);
            } else if (i != 1) {
                if (i == 2) {
                    m4154e(str, i, z);
                } else if (i == 3) {
                    m4152f(str, i, z);
                } else if (i == 4) {
                    this.f30021d.mo4202D();
                    this.f30021d.mo4186q();
                    this.f30021d.mo4187p();
                    this.f30021d.mo4190i();
                    this.f30021d.mo4203B();
                }
            } else if (m4157d(str, i, z)) {
                return;
            }
            this.f30021d.mo4184v();
        }
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: a */
    public void mo4169a(String str, boolean z) {
        Character ch;
        C15149k.m377b(str, SmsFilterRulesHelper.KEYWORD);
        if (C14966w.m724a((CharSequence) str)) {
            this.f30021d.mo4188m();
            mo4171a((String) null);
            return;
        }
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                ch = null;
                break;
            }
            char charAt = str.charAt(i);
            if ((charAt == '#' || charAt == '*' || charAt == '+') ? false : true) {
                ch = Character.valueOf(charAt);
                break;
            }
            i++;
        }
        if (ch == null) {
            this.f30021d.mo4185u();
            mo4171a((String) null);
            return;
        }
        this.f30021d.mo4189l();
        if ((!C15149k.m384a((Object) mo4162c(), (Object) str)) || mo4156e() == TextSearchFragment.EnumC5119i1.AFTER_SUBMIT) {
            mo4171a(str);
            this.f30021d.mo4199I();
            mo4170a(str, -1, z);
        }
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: b */
    public C13331h mo4167b() {
        return this.f30020c;
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: b */
    public void mo4165b(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(m4147k());
        if (arrayList.size() <= 2) {
            if (!arrayList.contains(str)) {
                arrayList.add(0, str);
            } else {
                return;
            }
        } else if (arrayList.size() == 3) {
            if (!arrayList.remove(str)) {
                arrayList.remove(arrayList.size() - 1);
            }
            arrayList.add(0, str);
        } else {
            return;
        }
        C14092n3.m2583b("KEY_USER_SEARCHED", new Gson().m30985a(arrayList, new C13350n().m13276b()));
    }

    /* renamed from: b */
    public final void m4163b(String str, boolean z) {
        this.f30021d.mo4196a(str, mo4167b(), z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
        if (r6.f30021d.mo4204A() < 10) goto L_0x004b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009a, code lost:
        if (p626l.p631e0.C14966w.m712c(r7, r13, false, 2, null) == false) goto L_0x009d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        if (mo4156e() == gogolook.callgogolook2.search.TextSearchFragment.EnumC5119i1.AFTER_SUBMIT) goto L_0x0035;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4164b(java.lang.String r7, int r8, boolean r9) {
        /*
            r6 = this;
            r0 = r6
            j.a.p0.k r0 = r0.f30021d
            int r0 = r0.mo4200F()
            r10 = r0
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r10
            r1 = r8
            if (r0 >= r1) goto L_0x00a0
            r0 = r6
            gogolook.callgogolook2.search.TextSearchFragment$i1 r0 = r0.mo4156e()
            gogolook.callgogolook2.search.TextSearchFragment$i1 r1 = gogolook.callgogolook2.search.TextSearchFragment.EnumC5119i1.DURING_TYPE
            if (r0 != r1) goto L_0x0027
            r0 = r8
            r1 = 2
            if (r0 != r1) goto L_0x0035
        L_0x0027:
            r0 = r11
            r12 = r0
            r0 = r6
            gogolook.callgogolook2.search.TextSearchFragment$i1 r0 = r0.mo4156e()
            gogolook.callgogolook2.search.TextSearchFragment$i1 r1 = gogolook.callgogolook2.search.TextSearchFragment.EnumC5119i1.AFTER_SUBMIT
            if (r0 != r1) goto L_0x00a0
        L_0x0035:
            r0 = r9
            if (r0 == 0) goto L_0x004b
            r0 = r11
            r12 = r0
            r0 = r6
            j.a.p0.k r0 = r0.f30021d
            int r0 = r0.mo4204A()
            r1 = 10
            if (r0 >= r1) goto L_0x00a0
        L_0x004b:
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L_0x0067
            r0 = r8
            r1 = 2
            if (r0 == r1) goto L_0x005b
            r0 = 0
            r13 = r0
            goto L_0x0070
        L_0x005b:
            r0 = r6
            j.a.p0.h r0 = r0.mo4167b()
            java.lang.String r0 = r0.f30011e
            r13 = r0
            goto L_0x0070
        L_0x0067:
            r0 = r6
            j.a.p0.h r0 = r0.mo4167b()
            java.lang.String r0 = r0.f30012f
            r13 = r0
        L_0x0070:
            r0 = r13
            if (r0 == 0) goto L_0x0087
            r0 = r13
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0082
            goto L_0x0087
        L_0x0082:
            r0 = 0
            r8 = r0
            goto L_0x0089
        L_0x0087:
            r0 = 1
            r8 = r0
        L_0x0089:
            r0 = r8
            if (r0 != 0) goto L_0x009d
            r0 = r11
            r12 = r0
            r0 = r7
            r1 = r13
            r2 = 0
            r3 = 2
            r4 = 0
            boolean r0 = p626l.p631e0.C14966w.m712c(r0, r1, r2, r3, r4)
            if (r0 != 0) goto L_0x00a0
        L_0x009d:
            r0 = 1
            r12 = r0
        L_0x00a0:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p551p0.C13336m.m4164b(java.lang.String, int, boolean):boolean");
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: c */
    public String mo4162c() {
        return this.f30019b;
    }

    /* renamed from: c */
    public final void m4161c(String str) {
        this.f30021d.mo4197a(str, mo4167b());
    }

    /* renamed from: c */
    public final void m4160c(String str, int i, boolean z) {
        if (mo4167b().f30008b && m4164b(str, 1, z)) {
            m4161c(str);
        }
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: d */
    public void mo4159d() {
        if (C13891a.m3145q()) {
            Single.create(new C13346j()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C13347k(), C13348l.f30030a);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00bc, code lost:
        if (p626l.p631e0.C14966w.m712c(r7, r0, false, 2, null) == false) goto L_0x00bf;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4158d(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p551p0.C13336m.m4158d(java.lang.String):void");
    }

    /* renamed from: d */
    public final boolean m4157d(String str, int i, boolean z) {
        if (!mo4167b().f30007a || !m4164b(str, 2, false)) {
            m4154e(str, i, z);
            return false;
        }
        m4158d(str);
        return true;
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: e */
    public TextSearchFragment.EnumC5119i1 mo4156e() {
        return this.f30018a;
    }

    /* renamed from: e */
    public final void m4155e(String str) {
        ArrayList arrayList = new ArrayList();
        TextSearchResultEntry textSearchResultEntry = new TextSearchResultEntry();
        textSearchResultEntry.num = str;
        textSearchResultEntry.listType = 3;
        arrayList.add(textSearchResultEntry);
        this.f30021d.mo4195a(str, arrayList, 3, true);
    }

    /* renamed from: e */
    public final void m4154e(String str, int i, boolean z) {
        if (!C14108o4.m2498a(str) || TextSearchFragment.EnumC5119i1.AFTER_SUBMIT != mo4156e()) {
            if (i != 2 || this.f30021d.mo4204A() != 0) {
                this.f30021d.mo4201E();
                if (TextSearchFragment.EnumC5119i1.AFTER_SUBMIT != mo4156e()) {
                    this.f30021d.mo4203B();
                    return;
                }
            } else if (TextSearchFragment.EnumC5119i1.AFTER_SUBMIT != mo4156e()) {
                return;
            }
            m4152f(str, i, z);
            return;
        }
        m4155e(str);
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: f */
    public void mo4153f() {
        C14299q.m1754W0();
    }

    /* renamed from: f */
    public final void m4152f(String str, int i, boolean z) {
        if (!mo4167b().f30009c || !m4164b(str, 4, z)) {
            this.f30021d.mo4190i();
        } else {
            m4163b(str, false);
        }
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: g */
    public void mo4151g() {
        C14299q.m1707i(0.0d);
        C14289m.m1841m();
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: h */
    public void mo4150h() {
        Single.create(new C13340d()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C13341e(), C13342f.f30024a);
    }

    @Override // p459j.p460a.p551p0.AbstractC13333j
    /* renamed from: i */
    public void mo4149i() {
        Single.create(C13343g.f30025a).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C13344h(), C13345i.f30027a);
    }

    /* renamed from: j */
    public final List<C13332i> m4148j() {
        List<C13332i> list;
        try {
            list = (List) new Gson().m30981a(C13915b3.m3056b("KEY_TRENDING_LIST", ""), new C13338b().m13276b());
        } catch (C10113s e) {
            C14080m2.m2612a((Throwable) e);
            list = null;
        }
        if (list == null) {
            list = C15021m.m565a();
        }
        return list;
    }

    /* renamed from: k */
    public final List<String> m4147k() {
        List<String> list;
        try {
            list = (List) new Gson().m30981a(C14092n3.m2584a("KEY_USER_SEARCHED", ""), new C13339c().m13276b());
        } catch (C10113s e) {
            C14080m2.m2612a((Throwable) e);
            list = null;
        }
        if (list == null) {
            list = C15021m.m565a();
        }
        return list;
    }

    /* renamed from: l */
    public final AbstractC13334k m4146l() {
        return this.f30021d;
    }
}
