package p081h.p115c.p116a.p117i;

import android.util.Log;
/* renamed from: h.c.a.i.f */
/* loaded from: classes-dex2jar.jar:h/c/a/i/f.class */
public class C5753f {

    /* renamed from: a */
    public String f14390a;

    /* renamed from: b */
    public EnumC5755b f14391b;

    /* renamed from: c */
    public String f14392c;

    /* renamed from: h.c.a.i.f$a */
    /* loaded from: classes-dex2jar.jar:h/c/a/i/f$a.class */
    public static /* synthetic */ class C5754a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14393a = new int[EnumC5755b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            try {
                f14393a[EnumC5755b.VERBOSE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f14393a[EnumC5755b.DEBUG.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f14393a[EnumC5755b.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f14393a[EnumC5755b.WARN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f14393a[EnumC5755b.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: h.c.a.i.f$b */
    /* loaded from: classes-dex2jar.jar:h/c/a/i/f$b.class */
    public enum EnumC5755b {
        VERBOSE(0),
        DEBUG(1),
        INFO(2),
        WARN(3),
        ERROR(4);

        EnumC5755b(int i) {
        }
    }

    public C5753f(String str) {
        this(str, EnumC5755b.DEBUG);
    }

    public C5753f(String str, EnumC5755b bVar) {
        this(str, bVar, " ");
    }

    public C5753f(String str, EnumC5755b bVar, String str2) {
        this.f14390a = str;
        this.f14391b = bVar;
        this.f14392c = str2;
    }

    /* renamed from: a */
    public final void m24555a(String str) {
        int i = C5754a.f14393a[this.f14391b.ordinal()];
        if (i != 1 && i != 2 && i != 3 && i != 4 && i == 5) {
            Log.e(this.f14390a, str);
        }
    }

    /* renamed from: a */
    public void m24554a(Object... objArr) {
        if (objArr.length == 1) {
            m24555a(objArr[0].toString());
            return;
        }
        String str = "";
        for (Object obj : objArr) {
            str = str + this.f14392c + obj;
        }
        m24555a(str);
    }
}
