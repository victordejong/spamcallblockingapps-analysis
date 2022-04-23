package com.hbb20;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.os.Build;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.k;
import com.hbb20.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker.class */
public class CountryCodePicker extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    static String f33199a = "CCP";
    private static int aI = -1;
    private static int aJ = 1;
    private static int aK = 0;
    private static String aL = "http://schemas.android.com/apk/res/android";

    /* renamed from: b  reason: collision with root package name */
    static String f33200b = "selectedCode";

    /* renamed from: c  reason: collision with root package name */
    static int f33201c = 91;
    int V;
    Typeface W;
    int aB;
    int aC;
    int aD;
    int aE;
    float aG;
    private f aN;
    private h aO;
    private d aP;
    private com.hbb20.b aQ;
    private View.OnClickListener aR;
    int aa;
    List<com.hbb20.a> ab;
    String ad;
    List<com.hbb20.a> af;
    String ag;
    String ah;
    com.hbb20.g ar;
    boolean as;
    TextWatcher at;
    boolean au;
    c ay;
    b az;
    int e;
    String f;
    Context g;
    View h;
    LayoutInflater i;
    TextView j;
    EditText k;
    RelativeLayout l;
    ImageView m;
    ImageView n;
    LinearLayout o;
    LinearLayout p;
    com.hbb20.a q;
    public com.hbb20.a r;
    RelativeLayout s;
    CountryCodePicker t;
    i u;
    int w;
    PhoneNumberUtil y;
    private com.hbb20.c aM = new com.hbb20.f();

    /* renamed from: d  reason: collision with root package name */
    String f33202d = "CCP_PREF_FILE";
    String v = "";
    a x = a.SIM_NETWORK_LOCALE;
    boolean z = true;
    boolean A = true;
    boolean B = true;
    boolean C = true;
    boolean D = false;
    boolean E = true;
    boolean F = true;
    boolean G = true;
    boolean H = true;
    boolean I = true;
    boolean J = false;
    boolean K = false;
    boolean L = true;
    boolean M = true;
    boolean N = false;
    boolean O = false;
    boolean P = false;
    boolean Q = true;
    g R = g.MOBILE;
    String S = "ccp_last_selection";
    int T = -99;
    int U = -99;
    int ac = aK;
    int ae = 0;
    e ai = e.ENGLISH;
    e aj = e.ENGLISH;
    boolean ak = true;
    boolean al = true;
    boolean am = false;
    boolean an = false;
    boolean ao = true;
    boolean ap = false;
    String aq = "notSet";
    String av = null;
    int aw = 0;
    boolean ax = false;
    int aA = 0;
    int aF = 0;
    View.OnClickListener aH = new View.OnClickListener() { // from class: com.hbb20.CountryCodePicker.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (CountryCodePicker.this.aR != null) {
                CountryCodePicker.this.aR.onClick(view);
            } else if (!CountryCodePicker.this.al) {
            } else {
                if (CountryCodePicker.this.N) {
                    CountryCodePicker countryCodePicker = CountryCodePicker.this;
                    countryCodePicker.a(countryCodePicker.g());
                    return;
                }
                CountryCodePicker.this.a((String) null);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hbb20.CountryCodePicker$3  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$3.class */
    public static final /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33206a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            int[] iArr = new int[g.values().length];
            f33206a = iArr;
            try {
                iArr[g.MOBILE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33206a[g.FIXED_LINE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33206a[g.FIXED_LINE_OR_MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f33206a[g.TOLL_FREE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f33206a[g.PREMIUM_RATE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f33206a[g.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f33206a[g.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f33206a[g.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f33206a[g.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f33206a[g.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f33206a[g.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f33206a[g.UNKNOWN.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$a.class */
    public enum a {
        SIM_ONLY("1"),
        NETWORK_ONLY("2"),
        LOCALE_ONLY("3"),
        SIM_NETWORK("12"),
        NETWORK_SIM("21"),
        SIM_LOCALE("13"),
        LOCALE_SIM("31"),
        NETWORK_LOCALE("23"),
        LOCALE_NETWORK("32"),
        SIM_NETWORK_LOCALE("123"),
        SIM_LOCALE_NETWORK("132"),
        NETWORK_SIM_LOCALE("213"),
        NETWORK_LOCALE_SIM("231"),
        LOCALE_SIM_NETWORK("312"),
        LOCALE_NETWORK_SIM("321");
        
        String representation;

        a(String str) {
            this.representation = str;
        }

        public static a getPrefForValue(String str) {
            a[] values;
            for (a aVar : values()) {
                if (aVar.representation.equals(str)) {
                    return aVar;
                }
            }
            return SIM_NETWORK_LOCALE;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$b.class */
    public interface b {
        String a();

        String b();

        String c();
    }

    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$c.class */
    public interface c {
        void a();

        void b();
    }

    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$d.class */
    public interface d {
    }

    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$e.class */
    public enum e {
        AFRIKAANS("af"),
        ARABIC("ar"),
        BENGALI("bn"),
        CHINESE_SIMPLIFIED("zh", "CN", "Hans"),
        CHINESE_TRADITIONAL("zh", "TW", "Hant"),
        CZECH("cs"),
        DANISH("da"),
        DUTCH("nl"),
        ENGLISH("en"),
        FARSI("fa"),
        FRENCH("fr"),
        GERMAN("de"),
        GREEK("el"),
        GUJARATI("gu"),
        HEBREW("iw"),
        HINDI("hi"),
        INDONESIA("in"),
        ITALIAN("it"),
        JAPANESE("ja"),
        KAZAKH("kk"),
        KOREAN("ko"),
        MARATHI("mr"),
        POLISH("pl"),
        PORTUGUESE("pt"),
        PUNJABI("pa"),
        RUSSIAN("ru"),
        SLOVAK("sk"),
        SLOVENIAN("si"),
        SPANISH("es"),
        SWEDISH("sv"),
        TAGALOG("tl"),
        THAI("th"),
        TURKISH("tr"),
        UKRAINIAN("uk"),
        URDU("ur"),
        UZBEK("uz"),
        VIETNAMESE("vi");
        
        private String code;
        private String country;
        private String script;

        e(String str) {
            this.code = str;
        }

        e(String str, String str2, String str3) {
            this.code = str;
            this.country = str2;
            this.script = str3;
        }

        public static e forCountryNameCode(String str) {
            e[] values;
            e eVar = ENGLISH;
            for (e eVar2 : values()) {
                if (eVar2.code.equals(str)) {
                    eVar = eVar2;
                }
            }
            return eVar;
        }

        public final String getCode() {
            return this.code;
        }

        public final String getCountry() {
            return this.country;
        }

        public final String getScript() {
            return this.script;
        }

        public final void setCode(String str) {
            this.code = str;
        }

        public final void setCountry(String str) {
            this.country = str;
        }

        public final void setScript(String str) {
            this.script = str;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$f.class */
    public interface f {
    }

    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$g.class */
    public enum g {
        MOBILE,
        FIXED_LINE,
        FIXED_LINE_OR_MOBILE,
        TOLL_FREE,
        PREMIUM_RATE,
        SHARED_COST,
        VOIP,
        PERSONAL_NUMBER,
        PAGER,
        UAN,
        VOICEMAIL,
        UNKNOWN
    }

    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$h.class */
    public interface h {
    }

    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$i.class */
    public enum i {
        LEFT(-1),
        CENTER(0),
        RIGHT(1);
        
        int enumIndex;

        i(int i) {
            this.enumIndex = i;
        }
    }

    public CountryCodePicker(Context context) {
        super(context);
        this.g = context;
        a((AttributeSet) null);
    }

    public CountryCodePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = context;
        a(attributeSet);
    }

    public CountryCodePicker(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.g = context;
        a(attributeSet);
    }

    private void a(int i2) {
        if (i2 == i.LEFT.enumIndex) {
            this.j.setGravity(3);
        } else if (i2 == i.CENTER.enumIndex) {
            this.j.setGravity(17);
        } else {
            this.j.setGravity(5);
        }
    }

    private void a(AttributeSet attributeSet) {
        String str;
        this.i = LayoutInflater.from(this.g);
        if (attributeSet != null) {
            this.aq = attributeSet.getAttributeValue(aL, "layout_width");
        }
        removeAllViewsInLayout();
        if (attributeSet == null || (str = this.aq) == null || (!str.equals("-1") && !this.aq.equals("-1") && !this.aq.equals("fill_parent") && !this.aq.equals("match_parent"))) {
            this.h = this.i.inflate(h.g.layout_code_picker, (ViewGroup) this, true);
        } else {
            this.h = this.i.inflate(h.g.layout_full_width_code_picker, (ViewGroup) this, true);
        }
        this.j = (TextView) this.h.findViewById(h.f.textView_selectedCountry);
        this.l = (RelativeLayout) this.h.findViewById(h.f.countryCodeHolder);
        this.m = (ImageView) this.h.findViewById(h.f.imageView_arrow);
        this.n = (ImageView) this.h.findViewById(h.f.image_flag);
        this.p = (LinearLayout) this.h.findViewById(h.f.linear_flag_holder);
        this.o = (LinearLayout) this.h.findViewById(h.f.linear_flag_border);
        this.s = (RelativeLayout) this.h.findViewById(h.f.rlClickConsumer);
        this.t = this;
        if (attributeSet != null) {
            b(attributeSet);
        }
        this.s.setOnClickListener(this.aH);
    }

    private void a(boolean z) {
        this.C = z;
        t();
        if (!isInEditMode()) {
            a(this.q);
        }
    }

    private static boolean a(com.hbb20.a aVar, List<com.hbb20.a> list) {
        if (aVar == null) {
            return false;
        }
        for (com.hbb20.a aVar2 : list) {
            if (aVar2.h.equalsIgnoreCase(aVar.h)) {
                return true;
            }
        }
        return false;
    }

    private static e b(int i2) {
        return i2 < e.values().length ? e.values()[i2] : e.ENGLISH;
    }

    private void b(AttributeSet attributeSet) {
        boolean z;
        boolean z2;
        TypedArray obtainStyledAttributes = this.g.getTheme().obtainStyledAttributes(attributeSet, h.C0530h.CountryCodePicker, 0, 0);
        try {
            this.z = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_showNameCode, true);
            this.ao = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_autoFormatNumber, true);
            this.A = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_showPhoneCode, true);
            this.B = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccpDialog_showPhoneCode, this.A);
            this.M = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccpDialog_showNameCode, true);
            this.F = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccpDialog_showTitle, true);
            this.O = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_useFlagEmoji, false);
            this.P = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_useDummyEmojiForPreview, false);
            this.G = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccpDialog_showFlag, true);
            this.N = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccpDialog_initialScrollToSelection, false);
            this.D = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_showFullName, false);
            this.E = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccpDialog_showFastScroller, true);
            this.ae = obtainStyledAttributes.getColor(h.C0530h.CountryCodePicker_ccpDialog_fastScroller_bubbleColor, 0);
            this.aA = obtainStyledAttributes.getColor(h.C0530h.CountryCodePicker_ccpDialog_fastScroller_handleColor, 0);
            this.aF = obtainStyledAttributes.getResourceId(h.C0530h.CountryCodePicker_ccpDialog_fastScroller_bubbleTextAppearance, 0);
            this.am = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_autoDetectLanguage, false);
            this.L = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_areaCodeDetectedCountry, true);
            this.K = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_rememberLastSelection, false);
            this.ap = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_hintExampleNumber, false);
            this.Q = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_internationalFormattingOnly, true);
            int dimension = (int) obtainStyledAttributes.getDimension(h.C0530h.CountryCodePicker_ccp_padding, this.g.getResources().getDimension(h.d.ccp_padding));
            this.w = dimension;
            this.s.setPadding(dimension, dimension, dimension, dimension);
            this.R = g.values()[obtainStyledAttributes.getInt(h.C0530h.CountryCodePicker_ccp_hintExampleNumberType, 0)];
            String string = obtainStyledAttributes.getString(h.C0530h.CountryCodePicker_ccp_selectionMemoryTag);
            this.S = string;
            if (string == null) {
                this.S = "CCP_last_selection";
            }
            this.x = a.getPrefForValue(String.valueOf(obtainStyledAttributes.getInt(h.C0530h.CountryCodePicker_ccp_countryAutoDetectionPref, 123)));
            this.an = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_autoDetectCountry, false);
            this.I = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_showArrow, true);
            h();
            this.J = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccpDialog_showCloseIcon, false);
            a(obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_showFlag, true));
            setDialogKeyboardAutoPopup(obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccpDialog_keyboardAutoPopup, true));
            this.ai = b(obtainStyledAttributes.getInt(h.C0530h.CountryCodePicker_ccp_defaultLanguage, e.ENGLISH.ordinal()));
            j();
            this.ag = obtainStyledAttributes.getString(h.C0530h.CountryCodePicker_ccp_customMasterCountries);
            this.ah = obtainStyledAttributes.getString(h.C0530h.CountryCodePicker_ccp_excludedCountries);
            if (!isInEditMode()) {
                c();
            }
            this.ad = obtainStyledAttributes.getString(h.C0530h.CountryCodePicker_ccp_countryPreference);
            if (!isInEditMode()) {
                b();
            }
            if (obtainStyledAttributes.hasValue(h.C0530h.CountryCodePicker_ccp_textGravity)) {
                this.ac = obtainStyledAttributes.getInt(h.C0530h.CountryCodePicker_ccp_textGravity, aK);
            }
            a(this.ac);
            String string2 = obtainStyledAttributes.getString(h.C0530h.CountryCodePicker_ccp_defaultNameCode);
            this.f = string2;
            if (string2 == null || string2.length() == 0) {
                z = false;
            } else {
                if (!isInEditMode()) {
                    if (com.hbb20.a.a(getContext(), a(), this.f) != null) {
                        com.hbb20.a a2 = com.hbb20.a.a(getContext(), a(), this.f);
                        this.r = a2;
                        a(a2);
                        z2 = true;
                    }
                    z2 = false;
                } else {
                    if (com.hbb20.a.b(this.f) != null) {
                        com.hbb20.a b2 = com.hbb20.a.b(this.f);
                        this.r = b2;
                        a(b2);
                        z2 = true;
                    }
                    z2 = false;
                }
                z = z2;
                if (!z2) {
                    com.hbb20.a b3 = com.hbb20.a.b("IN");
                    this.r = b3;
                    a(b3);
                    z = true;
                }
            }
            int integer = obtainStyledAttributes.getInteger(h.C0530h.CountryCodePicker_ccp_defaultPhoneCode, -1);
            if (!z && integer != -1) {
                if (!isInEditMode()) {
                    int i2 = integer;
                    if (integer != -1) {
                        i2 = integer;
                        if (com.hbb20.a.a(getContext(), a(), this.ab, integer) == null) {
                            i2 = f33201c;
                        }
                    }
                    setDefaultCountryUsingPhoneCode(i2);
                    a(this.r);
                } else {
                    com.hbb20.a a3 = com.hbb20.a.a(String.valueOf(integer));
                    com.hbb20.a aVar = a3;
                    if (a3 == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(f33201c);
                        aVar = com.hbb20.a.a(sb.toString());
                    }
                    this.r = aVar;
                    a(aVar);
                }
            }
            if (this.r == null) {
                this.r = com.hbb20.a.b("IN");
                if (l() == null) {
                    a(this.r);
                }
            }
            if (this.an && !isInEditMode()) {
                setAutoDetectedCountry(true);
            }
            if (this.K && !isInEditMode()) {
                i();
            }
            setArrowColor(obtainStyledAttributes.getColor(h.C0530h.CountryCodePicker_ccp_arrowColor, -99));
            int color = isInEditMode() ? obtainStyledAttributes.getColor(h.C0530h.CountryCodePicker_ccp_contentColor, -99) : obtainStyledAttributes.getColor(h.C0530h.CountryCodePicker_ccp_contentColor, this.g.getResources().getColor(h.c.defaultContentColor));
            if (color != -99) {
                setContentColor(color);
            }
            int color2 = isInEditMode() ? obtainStyledAttributes.getColor(h.C0530h.CountryCodePicker_ccp_flagBorderColor, 0) : obtainStyledAttributes.getColor(h.C0530h.CountryCodePicker_ccp_flagBorderColor, this.g.getResources().getColor(h.c.defaultBorderFlagColor));
            if (color2 != 0) {
                setFlagBorderColor(color2);
            }
            setDialogBackgroundColor(obtainStyledAttributes.getColor(h.C0530h.CountryCodePicker_ccpDialog_backgroundColor, 0));
            setDialogBackground(obtainStyledAttributes.getResourceId(h.C0530h.CountryCodePicker_ccpDialog_background, 0));
            setDialogTextColor(obtainStyledAttributes.getColor(h.C0530h.CountryCodePicker_ccpDialog_textColor, 0));
            setDialogSearchEditTextTintColor(obtainStyledAttributes.getColor(h.C0530h.CountryCodePicker_ccpDialog_searchEditTextTint, 0));
            setDialogCornerRaius(obtainStyledAttributes.getDimension(h.C0530h.CountryCodePicker_ccpDialog_cornerRadius, BitmapDescriptorFactory.HUE_RED));
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(h.C0530h.CountryCodePicker_ccp_textSize, 0);
            if (dimensionPixelSize > 0) {
                this.j.setTextSize(0, dimensionPixelSize);
                setFlagSize(dimensionPixelSize);
                setArrowSize(dimensionPixelSize);
            }
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(h.C0530h.CountryCodePicker_ccp_arrowSize, 0);
            if (dimensionPixelSize2 > 0) {
                setArrowSize(dimensionPixelSize2);
            }
            this.H = obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccpDialog_allowSearch, true);
            setCcpClickable(obtainStyledAttributes.getBoolean(h.C0530h.CountryCodePicker_ccp_clickable, true));
        } catch (Exception e2) {
            e2.printStackTrace();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private boolean b(String str) {
        for (com.hbb20.a aVar : com.hbb20.a.a(this.g, this)) {
            if (aVar.h.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private void h() {
        if (this.I) {
            this.m.setVisibility(0);
        } else {
            this.m.setVisibility(8);
        }
    }

    private void i() {
        String string = this.g.getSharedPreferences(this.f33202d, 0).getString(this.S, null);
        if (string != null) {
            setCountryForNameCode(string);
        }
    }

    private void j() {
        if (isInEditMode()) {
            e eVar = this.ai;
            if (eVar != null) {
                this.aj = eVar;
            } else {
                this.aj = e.ENGLISH;
            }
        } else if (this.am) {
            e k = k();
            if (k == null) {
                e eVar2 = this.ai;
                if (eVar2 != null) {
                    this.aj = eVar2;
                } else {
                    this.aj = e.ENGLISH;
                }
            } else {
                this.aj = k;
            }
        } else {
            e eVar3 = this.ai;
            if (eVar3 != null) {
                this.aj = eVar3;
            } else {
                this.aj = e.ENGLISH;
            }
        }
    }

    private e k() {
        e[] values;
        Locale locale = this.g.getResources().getConfiguration().locale;
        for (e eVar : e.values()) {
            if (eVar.getCode().equalsIgnoreCase(locale.getLanguage()) && (eVar.getCountry() == null || eVar.getCountry().equalsIgnoreCase(locale.getCountry()) || (Build.VERSION.SDK_INT >= 21 && (eVar.getScript() == null || eVar.getScript().equalsIgnoreCase(locale.getScript()))))) {
                return eVar;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.hbb20.a l() {
        if (this.q == null) {
            a(this.r);
        }
        return this.q;
    }

    private void m() {
        this.aQ = com.hbb20.b.a(s());
    }

    private void n() {
        String str;
        String str2;
        if (this.k != null && this.ap) {
            k.a exampleNumberForType = v().getExampleNumberForType(g(), o());
            if (exampleNumberForType != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(exampleNumberForType.f32891b);
                String sb2 = sb.toString();
                if (Build.VERSION.SDK_INT >= 21) {
                    str2 = PhoneNumberUtils.formatNumber(f() + sb2, g());
                } else {
                    str2 = PhoneNumberUtils.formatNumber(f() + sb2);
                }
                str = str2;
                if (str2 != null) {
                    str = str2.substring(f().length()).trim();
                }
            } else {
                str = "";
            }
            String str3 = str;
            if (str == null) {
                str3 = this.v;
            }
            this.k.setHint(str3);
        }
    }

    private PhoneNumberUtil.d o() {
        switch (AnonymousClass3.f33206a[this.R.ordinal()]) {
            case 1:
                return PhoneNumberUtil.d.MOBILE;
            case 2:
                return PhoneNumberUtil.d.FIXED_LINE;
            case 3:
                return PhoneNumberUtil.d.FIXED_LINE_OR_MOBILE;
            case 4:
                return PhoneNumberUtil.d.TOLL_FREE;
            case 5:
                return PhoneNumberUtil.d.PREMIUM_RATE;
            case 6:
                return PhoneNumberUtil.d.SHARED_COST;
            case 7:
                return PhoneNumberUtil.d.VOIP;
            case 8:
                return PhoneNumberUtil.d.PERSONAL_NUMBER;
            case 9:
                return PhoneNumberUtil.d.PAGER;
            case 10:
                return PhoneNumberUtil.d.UAN;
            case 11:
                return PhoneNumberUtil.d.VOICEMAIL;
            case 12:
                return PhoneNumberUtil.d.UNKNOWN;
            default:
                return PhoneNumberUtil.d.MOBILE;
        }
    }

    private void p() {
        EditText editText = this.k;
        if (editText != null && this.q != null) {
            String normalizeDigitsOnly = PhoneNumberUtil.normalizeDigitsOnly(editText.getText().toString());
            com.hbb20.g gVar = this.ar;
            if (gVar != null) {
                this.k.removeTextChangedListener(gVar);
            }
            TextWatcher textWatcher = this.at;
            if (textWatcher != null) {
                this.k.removeTextChangedListener(textWatcher);
            }
            if (this.ao) {
                com.hbb20.g gVar2 = new com.hbb20.g(this.g, g(), s(), this.Q);
                this.ar = gVar2;
                this.k.addTextChangedListener(gVar2);
            }
            if (this.L) {
                TextWatcher q = q();
                this.at = q;
                this.k.addTextChangedListener(q);
            }
            this.k.setText("");
            this.k.setText(normalizeDigitsOnly);
            EditText editText2 = this.k;
            editText2.setSelection(editText2.getText().length());
        } else if (editText == null) {
            new StringBuilder("updateFormattingTextWatcher: EditText not registered ").append(this.S);
        } else {
            new StringBuilder("updateFormattingTextWatcher: selected country is null ").append(this.S);
        }
    }

    private TextWatcher q() {
        if (this.k != null && this.at == null) {
            this.at = new TextWatcher() { // from class: com.hbb20.CountryCodePicker.2

                /* renamed from: a  reason: collision with root package name */
                String f33204a = null;

                @Override // android.text.TextWatcher
                public final void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                }

                @Override // android.text.TextWatcher
                public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                    com.hbb20.a l = CountryCodePicker.this.l();
                    if (l != null) {
                        String str = this.f33204a;
                        if ((str == null || !str.equals(charSequence.toString())) && CountryCodePicker.this.au) {
                            if (CountryCodePicker.this.aQ != null) {
                                String obj = CountryCodePicker.this.k.getText().toString();
                                if (obj.length() >= CountryCodePicker.this.aQ.f33213b) {
                                    String normalizeDigitsOnly = PhoneNumberUtil.normalizeDigitsOnly(obj);
                                    if (normalizeDigitsOnly.length() >= CountryCodePicker.this.aQ.f33213b) {
                                        String substring = normalizeDigitsOnly.substring(0, CountryCodePicker.this.aQ.f33213b);
                                        if (!substring.equals(CountryCodePicker.this.av)) {
                                            com.hbb20.a a2 = CountryCodePicker.this.aQ.a(CountryCodePicker.this.g, CountryCodePicker.this.a(), substring);
                                            if (!a2.equals(l)) {
                                                CountryCodePicker.this.ax = true;
                                                CountryCodePicker.this.aw = Selection.getSelectionEnd(charSequence);
                                                CountryCodePicker.this.a(a2);
                                            }
                                            CountryCodePicker.this.av = substring;
                                        }
                                    }
                                }
                            }
                            this.f33204a = charSequence.toString();
                        }
                    }
                }
            };
        }
        return this.at;
    }

    private String r() {
        return this.r.h.toUpperCase();
    }

    private int s() {
        int i2;
        try {
            i2 = Integer.parseInt(l().i);
        } catch (Exception e2) {
            e2.printStackTrace();
            i2 = 0;
        }
        return i2;
    }

    private void t() {
        if (!this.C || this.O) {
            this.p.setVisibility(8);
        } else {
            this.p.setVisibility(0);
        }
    }

    private boolean u() {
        try {
            EditText editText = this.k;
            if (editText != null && editText.getText().length() != 0) {
                PhoneNumberUtil v = v();
                return v().isValidNumber(v.parse("+" + this.q.i + this.k.getText().toString(), this.q.h));
            } else if (this.k != null) {
                return false;
            } else {
                Toast.makeText(this.g, "No editText for Carrier number found.", 0).show();
                return false;
            }
        } catch (NumberParseException e2) {
            return false;
        }
    }

    private PhoneNumberUtil v() {
        if (this.y == null) {
            this.y = PhoneNumberUtil.getInstance();
        }
        return this.y;
    }

    private boolean w() {
        try {
            String simCountryIso = ((TelephonyManager) this.g.getSystemService(Constants.EXTRA_PHONE_NUMBER)).getSimCountryIso();
            boolean z = false;
            if (simCountryIso != null) {
                z = false;
                if (!simCountryIso.isEmpty()) {
                    if (!b(simCountryIso)) {
                        z = false;
                    } else {
                        a(com.hbb20.a.a(getContext(), a(), simCountryIso));
                        z = true;
                    }
                }
            }
            return z;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean x() {
        try {
            String networkCountryIso = ((TelephonyManager) this.g.getSystemService(Constants.EXTRA_PHONE_NUMBER)).getNetworkCountryIso();
            boolean z = false;
            if (networkCountryIso != null) {
                z = false;
                if (!networkCountryIso.isEmpty()) {
                    if (!b(networkCountryIso)) {
                        z = false;
                    } else {
                        a(com.hbb20.a.a(getContext(), a(), networkCountryIso));
                        z = true;
                    }
                }
            }
            return z;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private boolean y() {
        try {
            String country = this.g.getResources().getConfiguration().locale.getCountry();
            boolean z = false;
            if (country != null) {
                z = false;
                if (!country.isEmpty()) {
                    if (!b(country)) {
                        z = false;
                    } else {
                        a(com.hbb20.a.a(getContext(), a(), country));
                        z = true;
                    }
                }
            }
            return z;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final e a() {
        if (this.aj == null) {
            j();
        }
        return this.aj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(com.hbb20.a aVar) {
        com.hbb20.c cVar = this.aM;
        if (!(cVar == null || cVar.a(aVar) == null)) {
            this.j.setContentDescription(this.aM.a(aVar));
        }
        this.au = false;
        this.av = "";
        com.hbb20.a aVar2 = aVar;
        if (aVar == null) {
            com.hbb20.a a2 = com.hbb20.a.a(getContext(), a(), this.ab, this.e);
            aVar2 = a2;
            if (a2 == null) {
                return;
            }
        }
        this.q = aVar2;
        String str = "";
        if (this.C) {
            str = "";
            if (this.O) {
                if (!isInEditMode()) {
                    str = "" + com.hbb20.a.a(aVar2) + "  ";
                } else if (this.P) {
                    str = "��\u200b ";
                } else {
                    str = "" + com.hbb20.a.a(aVar2) + "\u200b ";
                }
            }
        }
        String str2 = str;
        if (this.D) {
            str2 = str + aVar2.j;
        }
        String str3 = str2;
        if (this.z) {
            if (this.D) {
                str3 = str2 + " (" + aVar2.h.toUpperCase() + ")";
            } else {
                str3 = str2 + StringUtils.SPACE + aVar2.h.toUpperCase();
            }
        }
        String str4 = str3;
        if (this.A) {
            String str5 = str3;
            if (str3.length() > 0) {
                str5 = str3 + "  ";
            }
            str4 = str5 + "+" + aVar2.i;
        }
        this.j.setText(str4);
        if (!this.C && str4.length() == 0) {
            this.j.setText(str4 + "+" + aVar2.i);
        }
        this.n.setImageResource(aVar2.a());
        p();
        n();
        if (!(this.k == null || this.aO == null)) {
            this.as = u();
        }
        this.au = true;
        if (this.ax) {
            try {
                this.k.setSelection(this.aw);
                this.ax = false;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        m();
    }

    public final void a(String str) {
        com.hbb20.e.a(this.t, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        String str = this.ad;
        if (str == null || str.length() == 0) {
            this.ab = null;
        } else {
            ArrayList arrayList = new ArrayList();
            for (String str2 : this.ad.split(",")) {
                com.hbb20.a a2 = com.hbb20.a.a(getContext(), this.af, a(), str2);
                if (a2 != null && !a(a2, arrayList)) {
                    arrayList.add(a2);
                }
            }
            if (arrayList.size() == 0) {
                this.ab = null;
            } else {
                this.ab = arrayList;
            }
        }
        List<com.hbb20.a> list = this.ab;
        if (list != null) {
            for (com.hbb20.a aVar : list) {
                aVar.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        String str = this.ag;
        if (str == null || str.length() == 0) {
            String str2 = this.ah;
            if (str2 == null || str2.length() == 0) {
                this.af = null;
            } else {
                this.ah = this.ah.toLowerCase();
                List<com.hbb20.a> d2 = com.hbb20.a.d(this.g, a());
                ArrayList arrayList = new ArrayList();
                for (com.hbb20.a aVar : d2) {
                    if (!this.ah.contains(aVar.h.toLowerCase())) {
                        arrayList.add(aVar);
                    }
                }
                if (arrayList.size() > 0) {
                    this.af = arrayList;
                } else {
                    this.af = null;
                }
            }
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (String str3 : this.ag.split(",")) {
                com.hbb20.a a2 = com.hbb20.a.a(getContext(), a(), str3);
                if (a2 != null && !a(a2, arrayList2)) {
                    arrayList2.add(a2);
                }
            }
            if (arrayList2.size() == 0) {
                this.af = null;
            } else {
                this.af = arrayList2;
            }
        }
        List<com.hbb20.a> list = this.af;
        if (list != null) {
            for (com.hbb20.a aVar2 : list) {
                aVar2.b();
            }
        }
    }

    public final int d() {
        int i2;
        try {
            i2 = Integer.parseInt(this.r.i);
        } catch (Exception e2) {
            e2.printStackTrace();
            i2 = 0;
        }
        return i2;
    }

    public final void e() {
        com.hbb20.a a2 = com.hbb20.a.a(getContext(), a(), r());
        this.r = a2;
        a(a2);
    }

    public final String f() {
        return "+" + l().i;
    }

    public final String g() {
        return l().h.toUpperCase();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        com.hbb20.e.a();
        super.onDetachedFromWindow();
    }

    public void setArrowColor(int i2) {
        this.U = i2;
        if (i2 == -99) {
            int i3 = this.T;
            if (i3 != -99) {
                this.m.setColorFilter(i3, PorterDuff.Mode.SRC_IN);
                return;
            }
            return;
        }
        this.m.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
    }

    public void setArrowSize(int i2) {
        if (i2 > 0) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.m.getLayoutParams();
            layoutParams.width = i2;
            layoutParams.height = i2;
            this.m.setLayoutParams(layoutParams);
        }
    }

    public void setAutoDetectedCountry(boolean z) {
        boolean z2;
        int i2 = 0;
        boolean z3 = false;
        while (true) {
            z2 = z3;
            try {
                if (i2 < this.x.representation.length()) {
                    switch (this.x.representation.charAt(i2)) {
                        case '1':
                            z3 = w();
                            break;
                        case '2':
                            z3 = x();
                            break;
                        case '3':
                            z3 = y();
                            break;
                    }
                    z2 = z3;
                    if (!z3) {
                        i2++;
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                String str = f33199a;
                Log.w(str, "setAutoDetectCountry: Exception" + e2.getMessage());
                if (z) {
                    e();
                    return;
                }
                return;
            }
        }
        if (!z2 && z) {
            e();
        }
    }

    public void setAutoDetectionFailureListener(d dVar) {
        this.aP = dVar;
    }

    public void setCcpClickable(boolean z) {
        this.al = z;
        if (!z) {
            this.s.setOnClickListener(null);
            this.s.setClickable(false);
            this.s.setEnabled(false);
            return;
        }
        this.s.setOnClickListener(this.aH);
        this.s.setClickable(true);
        this.s.setEnabled(true);
    }

    public void setCcpDialogShowFlag(boolean z) {
        this.G = z;
    }

    public void setCcpDialogShowNameCode(boolean z) {
        this.M = z;
    }

    public void setCcpDialogShowPhoneCode(boolean z) {
        this.B = z;
    }

    public void setCcpDialogShowTitle(boolean z) {
        this.F = z;
    }

    public void setContentColor(int i2) {
        this.T = i2;
        this.j.setTextColor(i2);
        if (this.U == -99) {
            this.m.setColorFilter(this.T, PorterDuff.Mode.SRC_IN);
        }
    }

    public void setCountryAutoDetectionPref(a aVar) {
        this.x = aVar;
    }

    public void setCountryForNameCode(String str) {
        com.hbb20.a a2 = com.hbb20.a.a(getContext(), a(), str);
        if (a2 == null) {
            if (this.r == null) {
                this.r = com.hbb20.a.a(getContext(), a(), this.ab, this.e);
            }
            a(this.r);
            return;
        }
        a(a2);
    }

    public void setCountryForPhoneCode(int i2) {
        com.hbb20.a a2 = com.hbb20.a.a(getContext(), a(), this.ab, i2);
        if (a2 == null) {
            if (this.r == null) {
                this.r = com.hbb20.a.a(getContext(), a(), this.ab, this.e);
            }
            a(this.r);
            return;
        }
        a(a2);
    }

    public void setCountryPreference(String str) {
        this.ad = str;
    }

    public void setCurrentTextGravity(i iVar) {
        this.u = iVar;
        a(iVar.enumIndex);
    }

    public void setCustomDialogTextProvider(b bVar) {
        this.az = bVar;
    }

    public void setCustomMasterCountries(String str) {
        this.ag = str;
    }

    public void setDefaultCountryUsingNameCode(String str) {
        com.hbb20.a a2 = com.hbb20.a.a(getContext(), a(), str);
        if (a2 != null) {
            this.f = a2.h;
            this.r = a2;
        }
    }

    @Deprecated
    public void setDefaultCountryUsingPhoneCode(int i2) {
        com.hbb20.a a2 = com.hbb20.a.a(getContext(), a(), this.ab, i2);
        if (a2 != null) {
            this.e = i2;
            this.r = a2;
        }
    }

    public void setDetectCountryWithAreaCode(boolean z) {
        this.L = z;
        p();
    }

    public void setDialogBackground(int i2) {
        this.aB = i2;
    }

    public void setDialogBackgroundColor(int i2) {
        this.aC = i2;
    }

    public void setDialogCornerRaius(float f2) {
        this.aG = f2;
    }

    public void setDialogEventsListener(c cVar) {
        this.ay = cVar;
    }

    public void setDialogKeyboardAutoPopup(boolean z) {
        this.ak = z;
    }

    public void setDialogSearchEditTextTintColor(int i2) {
        this.aE = i2;
    }

    public void setDialogTextColor(int i2) {
        this.aD = i2;
    }

    public void setDialogTypeFace(Typeface typeface) {
        try {
            this.W = typeface;
            this.aa = -99;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setDialogTypeFace(Typeface typeface, int i2) {
        try {
            this.W = typeface;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setExcludedCountries(String str) {
        this.ah = str;
        c();
    }

    public void setFastScrollerBubbleColor(int i2) {
        this.ae = i2;
    }

    public void setFastScrollerBubbleTextAppearance(int i2) {
        this.aF = i2;
    }

    public void setFastScrollerHandleColor(int i2) {
        this.aA = i2;
    }

    public void setFlagBorderColor(int i2) {
        this.V = i2;
        this.o.setBackgroundColor(i2);
    }

    public void setFlagSize(int i2) {
        this.n.getLayoutParams().height = i2;
        this.n.requestLayout();
    }

    public void setFullNumber(String str) {
        com.hbb20.a a2 = com.hbb20.a.a(getContext(), a(), this.ab, str);
        com.hbb20.a aVar = a2;
        if (a2 == null) {
            aVar = this.r;
        }
        a(aVar);
        String str2 = str;
        if (aVar != null) {
            str2 = str;
            if (str != null) {
                if (str.isEmpty()) {
                    str2 = str;
                } else {
                    int indexOf = str.indexOf(aVar.i);
                    str2 = indexOf == -1 ? str : str.substring(indexOf + aVar.i.length());
                }
            }
        }
        EditText editText = this.k;
        if (editText != null) {
            editText.setText(str2);
            p();
            return;
        }
        Log.w(f33199a, "EditText for carrier number is not registered. Register it using registerCarrierNumberEditText() before getFullNumber() or setFullNumber().");
    }

    public void setHintExampleNumberEnabled(boolean z) {
        this.ap = z;
        n();
    }

    public void setHintExampleNumberType(g gVar) {
        this.R = gVar;
        n();
    }

    public void setImageViewFlag(ImageView imageView) {
        this.n = imageView;
    }

    public void setInternationalFormattingOnly(boolean z) {
        this.Q = z;
        if (this.k != null) {
            p();
        }
    }

    public void setNumberAutoFormattingEnabled(boolean z) {
        this.ao = z;
        if (this.k != null) {
            p();
        }
    }

    public void setOnCountryChangeListener(f fVar) {
        this.aN = fVar;
    }

    public void setPhoneNumberValidityChangeListener(h hVar) {
        this.aO = hVar;
        if (this.k != null && hVar != null) {
            this.as = u();
        }
    }

    public void setSearchAllowed(boolean z) {
        this.H = z;
    }

    public void setShowFastScroller(boolean z) {
        this.E = z;
    }

    public void setShowPhoneCode(boolean z) {
        this.A = z;
        a(this.q);
    }

    public void setTalkBackTextProvider(com.hbb20.c cVar) {
        this.aM = cVar;
        a(this.q);
    }

    public void setTextSize(int i2) {
        if (i2 > 0) {
            this.j.setTextSize(0, i2);
            setArrowSize(i2);
            setFlagSize(i2);
        }
    }

    public void setTextView_selectedCountry(TextView textView) {
        this.j = textView;
    }

    public void setTypeFace(Typeface typeface) {
        try {
            this.j.setTypeface(typeface);
            setDialogTypeFace(typeface);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void setTypeFace(Typeface typeface, int i2) {
        try {
            this.j.setTypeface(typeface, i2);
            setDialogTypeFace(typeface, i2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
