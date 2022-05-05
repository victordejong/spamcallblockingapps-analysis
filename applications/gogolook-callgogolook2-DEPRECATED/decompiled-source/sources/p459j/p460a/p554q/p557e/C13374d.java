package p459j.p460a.p554q.p557e;

import android.content.Context;
import androidx.core.app.Person;
import androidx.exifinterface.media.ExifInterface;
import gogolook.callgogolook2.debug_tool.SharedPreferencesDevActivity;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p471b1.p472a.C11509c;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p554q.p555c.AbstractC13363b;
import p459j.p460a.p554q.p555c.C13366c;
import p459j.p460a.p554q.p556d.AbstractC13367a;
import p626l.C14986p;
import p626l.p632u.C15029u;
import p626l.p633v.C15036a;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0006\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0002\u0010\u0005J+\u0010\u000b\u001a\u00020\f\"\u0004\b��\u0010\r2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u0002H\rH\u0016¢\u0006\u0002\u0010\u0011J+\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0018H\u0016¢\u0006\u0002\u0010\u0019J+\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0015\u001a\u00020\u00162\u000e\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0018H\u0002¢\u0006\u0002\u0010\u0019J\u0018\u0010\u001c\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0010\u0010\u001d\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\bH\u0016R*\u0010\u0006\u001a\u001e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007j\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001e"}, m815d2 = {"Lgogolook/callgogolook2/debug_tool/presenter/SharedPreferencesDevPresenter;", "Lgogolook/callgogolook2/debug_tool/module/BaseActivityPresenter;", "Lgogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity;", "Lgogolook/callgogolook2/debug_tool/presenter/ISharedPreferencesDevPresenter;", "view", "(Lgogolook/callgogolook2/debug_tool/SharedPreferencesDevActivity;)V", "prefMap", "Ljava/util/HashMap;", "", "Lgogolook/callgogolook2/whoscall_core/repository/PrefsRepository;", "Lkotlin/collections/HashMap;", "edit", "", ExifInterface.GPS_DIRECTION_TRUE, "prefName", Person.KEY_KEY, C13032a.f29462d, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V", "readPrefs", "", "Lgogolook/callgogolook2/debug_tool/data/UiData;", "context", "Landroid/content/Context;", "prefNames", "", "(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;", "readUiData", "prefList", "remove", "reset", "whoscall_core_debugTool_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.q.e.d */
/* loaded from: classes2-dex2jar.jar:j/a/q/e/d.class */
public final class C13374d extends AbstractC13367a<SharedPreferencesDevActivity> implements AbstractC13373c {

    /* renamed from: b */
    public final HashMap<String, C11507b> f30093b = new HashMap<>();

    /* renamed from: j.a.q.e.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/q/e/d$a.class */
    public static final class C13375a<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            String str = (String) ((Map.Entry) t).getKey();
            Locale locale = Locale.US;
            C15149k.m383a((Object) locale, "Locale.US");
            if (str != null) {
                String lowerCase = str.toLowerCase(locale);
                C15149k.m383a((Object) lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                String str2 = (String) ((Map.Entry) t2).getKey();
                Locale locale2 = Locale.US;
                C15149k.m383a((Object) locale2, "Locale.US");
                if (str2 != null) {
                    String lowerCase2 = str2.toLowerCase(locale2);
                    C15149k.m383a((Object) lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                    return C15036a.m498a(lowerCase, lowerCase2);
                }
                throw new C14986p("null cannot be cast to non-null type java.lang.String");
            }
            throw new C14986p("null cannot be cast to non-null type java.lang.String");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13374d(SharedPreferencesDevActivity sharedPreferencesDevActivity) {
        super(sharedPreferencesDevActivity);
        C15149k.m377b(sharedPreferencesDevActivity, "view");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
        if ((!(r7.length == 0)) == true) goto L_0x00cd;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<p459j.p460a.p554q.p555c.AbstractC13363b> m4117a(android.content.Context r6, java.lang.String[] r7) {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p554q.p557e.C13374d.m4117a(android.content.Context, java.lang.String[]):java.util.List");
    }

    /* renamed from: a */
    public void m4116a(String str, String str2) {
        C15149k.m377b(str, "prefName");
        C15149k.m377b(str2, Person.KEY_KEY);
        C11507b bVar = this.f30093b.get(str);
        if (bVar != null) {
            bVar.m9456a(str2);
        }
    }

    /* renamed from: a */
    public <T> void m4115a(String str, String str2, T t) {
        C15149k.m377b(str, "prefName");
        C15149k.m377b(str2, Person.KEY_KEY);
        C11507b bVar = this.f30093b.get(str);
        if (bVar != null) {
            bVar.m9459a(str2, (String) t);
        }
    }

    /* renamed from: b */
    public final List<AbstractC13363b> m4114b(Context context, String[] strArr) {
        Set<Map.Entry<String, ?>> entrySet;
        List<Map.Entry> c;
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(new AbstractC13363b.C13365b(str));
            C11507b bVar = new C11507b(new C11509c(context, str, 0));
            this.f30093b.put(str, bVar);
            Map<String, ?> a = bVar.m9470a();
            if (!(a == null || (entrySet = a.entrySet()) == null || (c = C15029u.m530c(entrySet, new C13375a())) == null)) {
                for (Map.Entry entry : c) {
                    arrayList.add(new AbstractC13363b.C13364a((String) entry.getKey(), str, C13366c.m4120a(entry.getValue())));
                }
            }
        }
        return arrayList;
    }
}
