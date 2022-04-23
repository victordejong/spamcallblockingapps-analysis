package p131c.p161d.p282e.p315q.p318p0.p321j.p323q.p325b;

import android.app.Application;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.firebase.inappmessaging.model.MessageType;
import p131c.p161d.p282e.p315q.p318p0.p321j.C5560i;
/* renamed from: c.d.e.q.p0.j.q.b.e */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/e.class */
public class C5608e {

    /* renamed from: b */
    public static int f18667b = 327938;

    /* renamed from: c */
    public static int f18668c = 327970;

    /* renamed from: a */
    public int f18669a = 65824;

    /* renamed from: c.d.e.q.p0.j.q.b.e$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/q/b/e$a.class */
    public static /* synthetic */ class C5609a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f18670a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[MessageType.values().length];
            f18670a = iArr;
            try {
                iArr[MessageType.MODAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18670a[MessageType.CARD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18670a[MessageType.IMAGE_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18670a[MessageType.BANNER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: a */
    public static String m23424a(MessageType messageType, int i) {
        if (i == 1) {
            int i2 = C5609a.f18670a[messageType.ordinal()];
            if (i2 == 1) {
                return "MODAL_PORTRAIT";
            }
            if (i2 == 2) {
                return "CARD_PORTRAIT";
            }
            if (i2 == 3) {
                return "IMAGE_ONLY_PORTRAIT";
            }
            if (i2 != 4) {
                return null;
            }
            return "BANNER_PORTRAIT";
        }
        int i3 = C5609a.f18670a[messageType.ordinal()];
        if (i3 == 1) {
            return "MODAL_LANDSCAPE";
        }
        if (i3 == 2) {
            return "CARD_LANDSCAPE";
        }
        if (i3 == 3) {
            return "IMAGE_ONLY_LANDSCAPE";
        }
        if (i3 != 4) {
            return null;
        }
        return "BANNER_LANDSCAPE";
    }

    /* renamed from: a */
    public DisplayMetrics m23426a(Application application) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) application.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: a */
    public C5560i m23425a(DisplayMetrics displayMetrics) {
        C5560i.C5561a n = C5560i.m23530n();
        Float valueOf = Float.valueOf(0.3f);
        n.m23521c(valueOf);
        n.m23519d(valueOf);
        n.m23526a(Integer.valueOf((int) (displayMetrics.heightPixels * 0.5f)));
        n.m23523b(Integer.valueOf((int) (displayMetrics.widthPixels * 0.9f)));
        n.m23520c((Integer) 48);
        n.m23518d(Integer.valueOf(this.f18669a));
        n.m23516f(-1);
        n.m23517e(-2);
        n.m23522c((Boolean) true);
        n.m23528a((Boolean) true);
        n.m23525b((Boolean) true);
        return n.m23529a();
    }

    /* renamed from: b */
    public C5560i m23423b(DisplayMetrics displayMetrics) {
        C5560i.C5561a n = C5560i.m23530n();
        Float valueOf = Float.valueOf(0.3f);
        n.m23521c(valueOf);
        n.m23519d(valueOf);
        n.m23526a(Integer.valueOf((int) (displayMetrics.heightPixels * 0.5f)));
        n.m23523b(Integer.valueOf((int) (displayMetrics.widthPixels * 0.9f)));
        n.m23520c((Integer) 48);
        n.m23518d(Integer.valueOf(this.f18669a));
        n.m23516f(-1);
        n.m23517e(-2);
        n.m23522c((Boolean) true);
        n.m23528a((Boolean) true);
        n.m23525b((Boolean) true);
        return n.m23529a();
    }

    /* renamed from: c */
    public C5560i m23422c(DisplayMetrics displayMetrics) {
        C5560i.C5561a n = C5560i.m23530n();
        double d = displayMetrics.heightPixels;
        Double.isNaN(d);
        n.m23526a(Integer.valueOf((int) (d * 0.8d)));
        n.m23523b(Integer.valueOf(displayMetrics.widthPixels));
        n.m23521c(Float.valueOf(1.0f));
        n.m23519d(Float.valueOf(0.5f));
        n.m23520c((Integer) 17);
        n.m23518d(Integer.valueOf(f18668c));
        n.m23516f(-2);
        n.m23517e(-2);
        n.m23522c((Boolean) false);
        n.m23528a((Boolean) false);
        n.m23525b((Boolean) false);
        return n.m23529a();
    }

    /* renamed from: d */
    public C5560i m23421d(DisplayMetrics displayMetrics) {
        C5560i.C5561a n = C5560i.m23530n();
        double d = displayMetrics.heightPixels;
        Double.isNaN(d);
        n.m23526a(Integer.valueOf((int) (d * 0.8d)));
        n.m23523b(Integer.valueOf((int) (displayMetrics.widthPixels * 0.7f)));
        n.m23521c(Float.valueOf(0.6f));
        n.m23519d(Float.valueOf(1.0f));
        n.m23527a(Float.valueOf(0.1f));
        n.m23524b(Float.valueOf(0.9f));
        n.m23520c((Integer) 17);
        n.m23518d(Integer.valueOf(f18668c));
        n.m23516f(-2);
        n.m23517e(-2);
        n.m23522c((Boolean) false);
        n.m23528a((Boolean) false);
        n.m23525b((Boolean) false);
        return n.m23529a();
    }

    /* renamed from: e */
    public C5560i m23420e(DisplayMetrics displayMetrics) {
        C5560i.C5561a n = C5560i.m23530n();
        n.m23526a(Integer.valueOf((int) (displayMetrics.heightPixels * 0.9f)));
        n.m23523b(Integer.valueOf((int) (displayMetrics.widthPixels * 0.9f)));
        Float valueOf = Float.valueOf(0.8f);
        n.m23519d(valueOf);
        n.m23521c(valueOf);
        n.m23520c((Integer) 17);
        n.m23518d(Integer.valueOf(f18667b));
        n.m23516f(-2);
        n.m23517e(-2);
        n.m23522c((Boolean) false);
        n.m23528a((Boolean) false);
        n.m23525b((Boolean) false);
        return n.m23529a();
    }

    /* renamed from: f */
    public C5560i m23419f(DisplayMetrics displayMetrics) {
        C5560i.C5561a n = C5560i.m23530n();
        double d = displayMetrics.heightPixels;
        Double.isNaN(d);
        n.m23526a(Integer.valueOf((int) (d * 0.8d)));
        n.m23523b(Integer.valueOf(displayMetrics.widthPixels));
        n.m23521c(Float.valueOf(1.0f));
        Float valueOf = Float.valueOf(0.4f);
        n.m23519d(valueOf);
        n.m23527a(Float.valueOf(0.6f));
        n.m23524b(valueOf);
        n.m23520c((Integer) 17);
        n.m23518d(Integer.valueOf(f18667b));
        n.m23516f(-1);
        n.m23517e(-1);
        n.m23522c((Boolean) false);
        n.m23528a((Boolean) false);
        n.m23525b((Boolean) false);
        return n.m23529a();
    }

    /* renamed from: g */
    public C5560i m23418g(DisplayMetrics displayMetrics) {
        C5560i.C5561a n = C5560i.m23530n();
        double d = displayMetrics.heightPixels;
        Double.isNaN(d);
        n.m23526a(Integer.valueOf((int) (d * 0.8d)));
        n.m23523b(Integer.valueOf((int) (displayMetrics.widthPixels * 0.7f)));
        n.m23521c(Float.valueOf(0.6f));
        n.m23527a(Float.valueOf(0.1f));
        Float valueOf = Float.valueOf(0.9f);
        n.m23519d(valueOf);
        n.m23524b(valueOf);
        n.m23520c((Integer) 17);
        n.m23518d(Integer.valueOf(f18667b));
        n.m23516f(-1);
        n.m23517e(-2);
        n.m23522c((Boolean) false);
        n.m23528a((Boolean) false);
        n.m23525b((Boolean) false);
        return n.m23529a();
    }

    /* renamed from: h */
    public C5560i m23417h(DisplayMetrics displayMetrics) {
        C5560i.C5561a n = C5560i.m23530n();
        n.m23526a(Integer.valueOf((int) (displayMetrics.heightPixels * 0.9f)));
        n.m23523b(Integer.valueOf((int) (displayMetrics.widthPixels * 0.9f)));
        Float valueOf = Float.valueOf(0.8f);
        n.m23519d(valueOf);
        n.m23521c(valueOf);
        n.m23520c((Integer) 17);
        n.m23518d(Integer.valueOf(f18667b));
        n.m23516f(-2);
        n.m23517e(-2);
        n.m23522c((Boolean) false);
        n.m23528a((Boolean) false);
        n.m23525b((Boolean) false);
        return n.m23529a();
    }
}
