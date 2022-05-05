package p459j.p460a.p471b1.p472a;

import android.content.SharedPreferences;
import androidx.core.app.Person;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.SavedStateHandle;
import com.mopub.common.AdType;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.Map;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010%\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001:\u00011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0002\b\u0003\u0018\u00010\nJ!\u0010\f\u001a\u00020\r\"\u0004\b��\u0010\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u0002H\u000e¢\u0006\u0002\u0010\u0011J)\u0010\u0012\u001a\u00020\r2!\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\r0\u0014J\u0006\u0010\u0019\u001a\u00020\rJ\u0006\u0010\u001a\u001a\u00020\u001bJ#\u0010\u001c\u001a\u00020\r\"\u0004\b��\u0010\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u0002H\u000eH\u0007¢\u0006\u0002\u0010\u0011J+\u0010\u001d\u001a\u00020\r2!\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0015¢\u0006\f\b\u0016\u0012\b\b\u0017\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\r0\u0014H\u0007J\u000e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u000bJ!\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u000b2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001bH\u0007¢\u0006\u0002\u0010!J!\u0010\"\u001a\u00020#2\u0006\u0010\u000f\u001a\u00020\u000b2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010#H\u0007¢\u0006\u0002\u0010$J!\u0010%\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u000b2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010&H\u0007¢\u0006\u0002\u0010'J\u001e\u0010(\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000f\u001a\u00020\u000b2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u000bH\u0007J\u001f\u0010)\u001a\u00020\r2\u0012\u0010*\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0+\"\u00020\u000b¢\u0006\u0002\u0010,J\u000e\u0010-\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0006J%\u0010.\u001a\u00020/\"\u0004\b��\u0010\u000e*\u00020/2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u0002H\u000e¢\u0006\u0002\u00100R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��¨\u00062"}, m815d2 = {"Lgogolook/callgogolook2/whoscall_core/repository/PrefsRepository;", "", "prefModule", "Lgogolook/callgogolook2/whoscall_core/repository/SharedPrefsModule;", "(Lgogolook/callgogolook2/whoscall_core/repository/SharedPrefsModule;)V", "defFactory", "Lgogolook/callgogolook2/whoscall_core/repository/IPrefsDefaultValueFactory;", "sharedPreferences", "Landroid/content/SharedPreferences;", "all", "", "", "apply", "", ExifInterface.GPS_DIRECTION_TRUE, Person.KEY_KEY, C13032a.f29462d, "(Ljava/lang/String;Ljava/lang/Object;)V", "applyValues", "action", "Lkotlin/Function1;", "Lgogolook/callgogolook2/whoscall_core/repository/PrefsRepository$PreferenceEditor;", "Lkotlin/ParameterName;", "name", "editor", AdType.CLEAR, "clearNow", "", "commit", "commitValues", "contains", "getBoolean", "def", "(Ljava/lang/String;Ljava/lang/Boolean;)Z", "getInt", "", "(Ljava/lang/String;Ljava/lang/Integer;)I", "getLong", "", "(Ljava/lang/String;Ljava/lang/Long;)J", "getString", "remove", SavedStateHandle.KEYS, "", "([Ljava/lang/String;)V", "setPrefsDefaultValueFactory", "put", "Landroid/content/SharedPreferences$Editor;", "(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)Landroid/content/SharedPreferences$Editor;", "PreferenceEditor", "whoscall_core_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b1.a.b */
/* loaded from: classes3-dex2jar.jar:j/a/b1/a/b.class */
public final class C11507b {

    /* renamed from: a */
    public final SharedPreferences f25697a;

    /* renamed from: b */
    public AbstractC11506a f25698b;

    /* renamed from: j.a.b1.a.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/b1/a/b$a.class */
    public static final class C11508a {

        /* renamed from: a */
        public final SharedPreferences.Editor f25699a;

        public C11508a(SharedPreferences.Editor editor) {
            C15149k.m377b(editor, "editor");
            this.f25699a = editor;
        }

        /* renamed from: a */
        public final C11508a m9450a(String str, int i) {
            C15149k.m377b(str, Person.KEY_KEY);
            this.f25699a.putInt(str, i);
            return this;
        }

        /* renamed from: a */
        public final C11508a m9449a(String str, long j) {
            C15149k.m377b(str, Person.KEY_KEY);
            this.f25699a.putLong(str, j);
            return this;
        }

        /* renamed from: a */
        public final C11508a m9448a(String str, String str2) {
            C15149k.m377b(str, Person.KEY_KEY);
            C15149k.m377b(str2, C13032a.f29462d);
            this.f25699a.putString(str, str2);
            return this;
        }

        /* renamed from: a */
        public final C11508a m9447a(String str, boolean z) {
            C15149k.m377b(str, Person.KEY_KEY);
            this.f25699a.putBoolean(str, z);
            return this;
        }
    }

    public C11507b(C11509c cVar) {
        C15149k.m377b(cVar, "prefModule");
        this.f25697a = cVar.m9446a();
    }

    /* renamed from: a */
    public static /* synthetic */ int m9466a(C11507b bVar, String str, Integer num, int i, Object obj) {
        if ((i & 2) != 0) {
            num = null;
        }
        return bVar.m9461a(str, num);
    }

    /* renamed from: a */
    public static /* synthetic */ long m9465a(C11507b bVar, String str, Long l, int i, Object obj) {
        if ((i & 2) != 0) {
            l = null;
        }
        return bVar.m9460a(str, l);
    }

    /* renamed from: a */
    public static /* synthetic */ String m9464a(C11507b bVar, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return bVar.m9458a(str, str2);
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m9467a(C11507b bVar, String str, Boolean bool, int i, Object obj) {
        if ((i & 2) != 0) {
            bool = null;
        }
        return bVar.m9462a(str, bool);
    }

    /* renamed from: a */
    public final int m9461a(String str, Integer num) {
        C15149k.m377b(str, Person.KEY_KEY);
        SharedPreferences sharedPreferences = this.f25697a;
        if (num == null) {
            AbstractC11506a aVar = this.f25698b;
            num = aVar != null ? aVar.mo2939c(str) : null;
        }
        if (num != null) {
            return sharedPreferences.getInt(str, num.intValue());
        }
        throw new IllegalStateException("[PrefsRepository] " + str + " need default Int value.");
    }

    /* renamed from: a */
    public final long m9460a(String str, Long l) {
        C15149k.m377b(str, Person.KEY_KEY);
        SharedPreferences sharedPreferences = this.f25697a;
        if (l == null) {
            AbstractC11506a aVar = this.f25698b;
            l = aVar != null ? aVar.mo2940b(str) : null;
        }
        if (l != null) {
            return sharedPreferences.getLong(str, l.longValue());
        }
        throw new IllegalStateException("[PrefsRepository] " + str + " need default Long value.");
    }

    /* renamed from: a */
    public final <T> SharedPreferences.Editor m9469a(SharedPreferences.Editor editor, String str, T t) {
        C15149k.m377b(editor, "receiver$0");
        C15149k.m377b(str, Person.KEY_KEY);
        if (t instanceof String) {
            editor.putString(str, (String) t);
        } else if (t instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) t).booleanValue());
        } else if (t instanceof Long) {
            editor.putLong(str, ((Number) t).longValue());
        } else if (t instanceof Integer) {
            editor.putInt(str, ((Number) t).intValue());
        } else {
            throw new UnsupportedOperationException("[PrefsRepository] apply unsupported type: " + str + UserProfile.CARD_CATE_SEPARATOR + t);
        }
        return editor;
    }

    /* renamed from: a */
    public final String m9458a(String str, String str2) {
        C15149k.m377b(str, Person.KEY_KEY);
        SharedPreferences sharedPreferences = this.f25697a;
        if (str2 == null) {
            AbstractC11506a aVar = this.f25698b;
            str2 = aVar != null ? aVar.mo2938d(str) : null;
        }
        return sharedPreferences.getString(str, str2);
    }

    /* renamed from: a */
    public final Map<String, ?> m9470a() {
        return this.f25697a.getAll();
    }

    /* renamed from: a */
    public final void m9468a(AbstractC11506a aVar) {
        C15149k.m377b(aVar, "defFactory");
        this.f25698b = aVar;
    }

    /* renamed from: a */
    public final <T> void m9459a(String str, T t) {
        C15149k.m377b(str, Person.KEY_KEY);
        SharedPreferences.Editor edit = this.f25697a.edit();
        C15149k.m383a((Object) edit, "sharedPreferences.edit()");
        m9469a(edit, str, t);
        edit.apply();
    }

    /* renamed from: a */
    public final void m9457a(AbstractC15118l<? super C11508a, C14989s> lVar) {
        C15149k.m377b(lVar, "action");
        SharedPreferences.Editor edit = this.f25697a.edit();
        C15149k.m383a((Object) edit, "this");
        lVar.invoke(new C11508a(edit));
        edit.apply();
    }

    /* renamed from: a */
    public final void m9456a(String... strArr) {
        C15149k.m377b(strArr, SavedStateHandle.KEYS);
        SharedPreferences.Editor edit = this.f25697a.edit();
        for (String str : strArr) {
            edit.remove(str);
        }
        edit.apply();
    }

    /* renamed from: a */
    public final boolean m9463a(String str) {
        C15149k.m377b(str, Person.KEY_KEY);
        return this.f25697a.contains(str);
    }

    /* renamed from: a */
    public final boolean m9462a(String str, Boolean bool) {
        C15149k.m377b(str, Person.KEY_KEY);
        SharedPreferences sharedPreferences = this.f25697a;
        if (bool == null) {
            AbstractC11506a aVar = this.f25698b;
            bool = aVar != null ? aVar.mo2942a(str) : null;
        }
        if (bool != null) {
            return sharedPreferences.getBoolean(str, bool.booleanValue());
        }
        throw new IllegalStateException("[PrefsRepository] " + str + " need default Boolean value.");
    }

    /* renamed from: b */
    public final void m9455b() {
        this.f25697a.edit().clear().apply();
    }

    /* renamed from: b */
    public final boolean m9454b(String str) {
        return m9467a(this, str, (Boolean) null, 2, (Object) null);
    }

    /* renamed from: c */
    public final int m9453c(String str) {
        return m9466a(this, str, (Integer) null, 2, (Object) null);
    }

    /* renamed from: d */
    public final long m9452d(String str) {
        return m9465a(this, str, (Long) null, 2, (Object) null);
    }

    /* renamed from: e */
    public final String m9451e(String str) {
        return m9464a(this, str, (String) null, 2, (Object) null);
    }
}
