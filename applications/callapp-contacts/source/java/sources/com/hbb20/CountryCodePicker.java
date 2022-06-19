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
import com.google.i18n.phonenumbers.C16136k;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.hbb20.C16330h;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker.class */
public class CountryCodePicker extends RelativeLayout {

    /* renamed from: a */
    static String f57580a = "CCP";

    /* renamed from: aI */
    private static int f57581aI = -1;

    /* renamed from: aJ */
    private static int f57582aJ = 1;

    /* renamed from: aK */
    private static int f57583aK = 0;

    /* renamed from: aL */
    private static String f57584aL = "http://schemas.android.com/apk/res/android";

    /* renamed from: b */
    static String f57585b = "selectedCode";

    /* renamed from: c */
    static int f57586c = 91;

    /* renamed from: V */
    int f57608V;

    /* renamed from: W */
    Typeface f57609W;

    /* renamed from: aB */
    int f57611aB;

    /* renamed from: aC */
    int f57612aC;

    /* renamed from: aD */
    int f57613aD;

    /* renamed from: aE */
    int f57614aE;

    /* renamed from: aG */
    float f57616aG;

    /* renamed from: aN */
    private AbstractC16311f f57619aN;

    /* renamed from: aO */
    private AbstractC16313h f57620aO;

    /* renamed from: aP */
    private AbstractC16309d f57621aP;

    /* renamed from: aQ */
    private C16316b f57622aQ;

    /* renamed from: aR */
    private View.OnClickListener f57623aR;

    /* renamed from: aa */
    int f57624aa;

    /* renamed from: ab */
    List<C16315a> f57625ab;

    /* renamed from: ad */
    String f57627ad;

    /* renamed from: af */
    List<C16315a> f57629af;

    /* renamed from: ag */
    String f57630ag;

    /* renamed from: ah */
    String f57631ah;

    /* renamed from: ar */
    C16329g f57641ar;

    /* renamed from: as */
    boolean f57642as;

    /* renamed from: at */
    TextWatcher f57643at;

    /* renamed from: au */
    boolean f57644au;

    /* renamed from: ay */
    AbstractC16308c f57648ay;

    /* renamed from: az */
    AbstractC16307b f57649az;

    /* renamed from: e */
    int f57651e;

    /* renamed from: f */
    String f57652f;

    /* renamed from: g */
    Context f57653g;

    /* renamed from: h */
    View f57654h;

    /* renamed from: i */
    LayoutInflater f57655i;

    /* renamed from: j */
    TextView f57656j;

    /* renamed from: k */
    EditText f57657k;

    /* renamed from: l */
    RelativeLayout f57658l;

    /* renamed from: m */
    ImageView f57659m;

    /* renamed from: n */
    ImageView f57660n;

    /* renamed from: o */
    LinearLayout f57661o;

    /* renamed from: p */
    LinearLayout f57662p;

    /* renamed from: q */
    C16315a f57663q;

    /* renamed from: r */
    public C16315a f57664r;

    /* renamed from: s */
    RelativeLayout f57665s;

    /* renamed from: t */
    CountryCodePicker f57666t;

    /* renamed from: u */
    EnumC16314i f57667u;

    /* renamed from: w */
    int f57669w;

    /* renamed from: y */
    PhoneNumberUtil f57671y;

    /* renamed from: aM */
    private AbstractC16317c f57618aM = new C16328f();

    /* renamed from: d */
    String f57650d = "CCP_PREF_FILE";

    /* renamed from: v */
    String f57668v = "";

    /* renamed from: x */
    EnumC16306a f57670x = EnumC16306a.SIM_NETWORK_LOCALE;

    /* renamed from: z */
    boolean f57672z = true;

    /* renamed from: A */
    boolean f57587A = true;

    /* renamed from: B */
    boolean f57588B = true;

    /* renamed from: C */
    boolean f57589C = true;

    /* renamed from: D */
    boolean f57590D = false;

    /* renamed from: E */
    boolean f57591E = true;

    /* renamed from: F */
    boolean f57592F = true;

    /* renamed from: G */
    boolean f57593G = true;

    /* renamed from: H */
    boolean f57594H = true;

    /* renamed from: I */
    boolean f57595I = true;

    /* renamed from: J */
    boolean f57596J = false;

    /* renamed from: K */
    boolean f57597K = false;

    /* renamed from: L */
    boolean f57598L = true;

    /* renamed from: M */
    boolean f57599M = true;

    /* renamed from: N */
    boolean f57600N = false;

    /* renamed from: O */
    boolean f57601O = false;

    /* renamed from: P */
    boolean f57602P = false;

    /* renamed from: Q */
    boolean f57603Q = true;

    /* renamed from: R */
    EnumC16312g f57604R = EnumC16312g.MOBILE;

    /* renamed from: S */
    String f57605S = "ccp_last_selection";

    /* renamed from: T */
    int f57606T = -99;

    /* renamed from: U */
    int f57607U = -99;

    /* renamed from: ac */
    int f57626ac = f57583aK;

    /* renamed from: ae */
    int f57628ae = 0;

    /* renamed from: ai */
    EnumC16310e f57632ai = EnumC16310e.ENGLISH;

    /* renamed from: aj */
    EnumC16310e f57633aj = EnumC16310e.ENGLISH;

    /* renamed from: ak */
    boolean f57634ak = true;

    /* renamed from: al */
    boolean f57635al = true;

    /* renamed from: am */
    boolean f57636am = false;

    /* renamed from: an */
    boolean f57637an = false;

    /* renamed from: ao */
    boolean f57638ao = true;

    /* renamed from: ap */
    boolean f57639ap = false;

    /* renamed from: aq */
    String f57640aq = "notSet";

    /* renamed from: av */
    String f57645av = null;

    /* renamed from: aw */
    int f57646aw = 0;

    /* renamed from: ax */
    boolean f57647ax = false;

    /* renamed from: aA */
    int f57610aA = 0;

    /* renamed from: aF */
    int f57615aF = 0;

    /* renamed from: aH */
    View.OnClickListener f57617aH = new View.OnClickListener() { // from class: com.hbb20.CountryCodePicker.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (CountryCodePicker.this.f57623aR != null) {
                CountryCodePicker.this.f57623aR.onClick(view);
            } else if (!CountryCodePicker.this.f57635al) {
            } else {
                if (!CountryCodePicker.this.f57600N) {
                    CountryCodePicker.this.m7453a((String) null);
                    return;
                }
                CountryCodePicker countryCodePicker = CountryCodePicker.this;
                countryCodePicker.m7453a(countryCodePicker.m7441g());
            }
        }
    };

    /* renamed from: com.hbb20.CountryCodePicker$3 */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$3.class */
    public static final /* synthetic */ class C163053 {

        /* renamed from: a */
        static final /* synthetic */ int[] f57676a;

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
            int[] iArr = new int[EnumC16312g.values().length];
            f57676a = iArr;
            try {
                iArr[EnumC16312g.MOBILE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f57676a[EnumC16312g.FIXED_LINE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f57676a[EnumC16312g.FIXED_LINE_OR_MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f57676a[EnumC16312g.TOLL_FREE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f57676a[EnumC16312g.PREMIUM_RATE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f57676a[EnumC16312g.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f57676a[EnumC16312g.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f57676a[EnumC16312g.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f57676a[EnumC16312g.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f57676a[EnumC16312g.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f57676a[EnumC16312g.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f57676a[EnumC16312g.UNKNOWN.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: com.hbb20.CountryCodePicker$a */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$a.class */
    public enum EnumC16306a {
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

        EnumC16306a(String str) {
            this.representation = str;
        }

        public static EnumC16306a getPrefForValue(String str) {
            EnumC16306a[] values;
            for (EnumC16306a enumC16306a : values()) {
                if (enumC16306a.representation.equals(str)) {
                    return enumC16306a;
                }
            }
            return SIM_NETWORK_LOCALE;
        }
    }

    /* renamed from: com.hbb20.CountryCodePicker$b */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$b.class */
    public interface AbstractC16307b {
        /* renamed from: a */
        String m7422a();

        /* renamed from: b */
        String m7421b();

        /* renamed from: c */
        String m7420c();
    }

    /* renamed from: com.hbb20.CountryCodePicker$c */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$c.class */
    public interface AbstractC16308c {
        /* renamed from: a */
        void mo7419a();

        /* renamed from: b */
        void mo7418b();
    }

    /* renamed from: com.hbb20.CountryCodePicker$d */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$d.class */
    public interface AbstractC16309d {
    }

    /* renamed from: com.hbb20.CountryCodePicker$e */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$e.class */
    public enum EnumC16310e {
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

        EnumC16310e(String str) {
            this.code = str;
        }

        EnumC16310e(String str, String str2, String str3) {
            this.code = str;
            this.country = str2;
            this.script = str3;
        }

        public static EnumC16310e forCountryNameCode(String str) {
            EnumC16310e[] values;
            EnumC16310e enumC16310e = ENGLISH;
            for (EnumC16310e enumC16310e2 : values()) {
                if (enumC16310e2.code.equals(str)) {
                    enumC16310e = enumC16310e2;
                }
            }
            return enumC16310e;
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

    /* renamed from: com.hbb20.CountryCodePicker$f */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$f.class */
    public interface AbstractC16311f {
    }

    /* renamed from: com.hbb20.CountryCodePicker$g */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$g.class */
    public enum EnumC16312g {
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

    /* renamed from: com.hbb20.CountryCodePicker$h */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$h.class */
    public interface AbstractC16313h {
    }

    /* renamed from: com.hbb20.CountryCodePicker$i */
    /* loaded from: classes4-dex2jar.jar:com/hbb20/CountryCodePicker$i.class */
    public enum EnumC16314i {
        LEFT(-1),
        CENTER(0),
        RIGHT(1);
        
        int enumIndex;

        EnumC16314i(int i) {
            this.enumIndex = i;
        }
    }

    public CountryCodePicker(Context context) {
        super(context);
        this.f57653g = context;
        m7457a((AttributeSet) null);
    }

    public CountryCodePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f57653g = context;
        m7457a(attributeSet);
    }

    public CountryCodePicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f57653g = context;
        m7457a(attributeSet);
    }

    /* renamed from: a */
    private void m7458a(int i) {
        if (i == EnumC16314i.LEFT.enumIndex) {
            this.f57656j.setGravity(3);
        } else if (i == EnumC16314i.CENTER.enumIndex) {
            this.f57656j.setGravity(17);
        } else {
            this.f57656j.setGravity(5);
        }
    }

    /* renamed from: a */
    private void m7457a(AttributeSet attributeSet) {
        String str;
        this.f57655i = LayoutInflater.from(this.f57653g);
        if (attributeSet != null) {
            this.f57640aq = attributeSet.getAttributeValue(f57584aL, "layout_width");
        }
        removeAllViewsInLayout();
        if (attributeSet == null || (str = this.f57640aq) == null || (!str.equals("-1") && !this.f57640aq.equals("-1") && !this.f57640aq.equals("fill_parent") && !this.f57640aq.equals("match_parent"))) {
            this.f57654h = this.f57655i.inflate(C16330h.C16337g.layout_code_picker, (ViewGroup) this, true);
        } else {
            this.f57654h = this.f57655i.inflate(C16330h.C16337g.layout_full_width_code_picker, (ViewGroup) this, true);
        }
        this.f57656j = (TextView) this.f57654h.findViewById(C16330h.C16336f.textView_selectedCountry);
        this.f57658l = (RelativeLayout) this.f57654h.findViewById(C16330h.C16336f.countryCodeHolder);
        this.f57659m = (ImageView) this.f57654h.findViewById(C16330h.C16336f.imageView_arrow);
        this.f57660n = (ImageView) this.f57654h.findViewById(C16330h.C16336f.image_flag);
        this.f57662p = (LinearLayout) this.f57654h.findViewById(C16330h.C16336f.linear_flag_holder);
        this.f57661o = (LinearLayout) this.f57654h.findViewById(C16330h.C16336f.linear_flag_border);
        this.f57665s = (RelativeLayout) this.f57654h.findViewById(C16330h.C16336f.rlClickConsumer);
        this.f57666t = this;
        if (attributeSet != null) {
            m7449b(attributeSet);
        }
        this.f57665s.setOnClickListener(this.f57617aH);
    }

    /* renamed from: a */
    private void m7452a(boolean z) {
        this.f57589C = z;
        m7428t();
        if (!isInEditMode()) {
            m7455a(this.f57663q);
        }
    }

    /* renamed from: a */
    private static boolean m7454a(C16315a c16315a, List<C16315a> list) {
        if (c16315a != null) {
            for (C16315a c16315a2 : list) {
                if (c16315a2.f57706h.equalsIgnoreCase(c16315a.f57706h)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: b */
    private static EnumC16310e m7450b(int i) {
        return i < EnumC16310e.values().length ? EnumC16310e.values()[i] : EnumC16310e.ENGLISH;
    }

    /* renamed from: b */
    private void m7449b(AttributeSet attributeSet) {
        boolean z;
        boolean z2;
        TypedArray obtainStyledAttributes = this.f57653g.getTheme().obtainStyledAttributes(attributeSet, C16330h.C16338h.CountryCodePicker, 0, 0);
        try {
            this.f57672z = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_showNameCode, true);
            this.f57638ao = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_autoFormatNumber, true);
            this.f57587A = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_showPhoneCode, true);
            this.f57588B = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccpDialog_showPhoneCode, this.f57587A);
            this.f57599M = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccpDialog_showNameCode, true);
            this.f57592F = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccpDialog_showTitle, true);
            this.f57601O = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_useFlagEmoji, false);
            this.f57602P = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_useDummyEmojiForPreview, false);
            this.f57593G = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccpDialog_showFlag, true);
            this.f57600N = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccpDialog_initialScrollToSelection, false);
            this.f57590D = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_showFullName, false);
            this.f57591E = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccpDialog_showFastScroller, true);
            this.f57628ae = obtainStyledAttributes.getColor(C16330h.C16338h.CountryCodePicker_ccpDialog_fastScroller_bubbleColor, 0);
            this.f57610aA = obtainStyledAttributes.getColor(C16330h.C16338h.CountryCodePicker_ccpDialog_fastScroller_handleColor, 0);
            this.f57615aF = obtainStyledAttributes.getResourceId(C16330h.C16338h.CountryCodePicker_ccpDialog_fastScroller_bubbleTextAppearance, 0);
            this.f57636am = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_autoDetectLanguage, false);
            this.f57598L = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_areaCodeDetectedCountry, true);
            this.f57597K = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_rememberLastSelection, false);
            this.f57639ap = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_hintExampleNumber, false);
            this.f57603Q = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_internationalFormattingOnly, true);
            int dimension = (int) obtainStyledAttributes.getDimension(C16330h.C16338h.CountryCodePicker_ccp_padding, this.f57653g.getResources().getDimension(C16330h.C16334d.ccp_padding));
            this.f57669w = dimension;
            this.f57665s.setPadding(dimension, dimension, dimension, dimension);
            this.f57604R = EnumC16312g.values()[obtainStyledAttributes.getInt(C16330h.C16338h.CountryCodePicker_ccp_hintExampleNumberType, 0)];
            String string = obtainStyledAttributes.getString(C16330h.C16338h.CountryCodePicker_ccp_selectionMemoryTag);
            this.f57605S = string;
            if (string == null) {
                this.f57605S = "CCP_last_selection";
            }
            this.f57670x = EnumC16306a.getPrefForValue(String.valueOf(obtainStyledAttributes.getInt(C16330h.C16338h.CountryCodePicker_ccp_countryAutoDetectionPref, 123)));
            this.f57637an = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_autoDetectCountry, false);
            this.f57595I = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_showArrow, true);
            m7440h();
            this.f57596J = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccpDialog_showCloseIcon, false);
            m7452a(obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_showFlag, true));
            setDialogKeyboardAutoPopup(obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccpDialog_keyboardAutoPopup, true));
            this.f57632ai = m7450b(obtainStyledAttributes.getInt(C16330h.C16338h.CountryCodePicker_ccp_defaultLanguage, EnumC16310e.ENGLISH.ordinal()));
            m7438j();
            this.f57630ag = obtainStyledAttributes.getString(C16330h.C16338h.CountryCodePicker_ccp_customMasterCountries);
            this.f57631ah = obtainStyledAttributes.getString(C16330h.C16338h.CountryCodePicker_ccp_excludedCountries);
            if (!isInEditMode()) {
                m7446c();
            }
            this.f57627ad = obtainStyledAttributes.getString(C16330h.C16338h.CountryCodePicker_ccp_countryPreference);
            if (!isInEditMode()) {
                m7451b();
            }
            if (obtainStyledAttributes.hasValue(C16330h.C16338h.CountryCodePicker_ccp_textGravity)) {
                this.f57626ac = obtainStyledAttributes.getInt(C16330h.C16338h.CountryCodePicker_ccp_textGravity, f57583aK);
            }
            m7458a(this.f57626ac);
            String string2 = obtainStyledAttributes.getString(C16330h.C16338h.CountryCodePicker_ccp_defaultNameCode);
            this.f57652f = string2;
            if (string2 == null || string2.length() == 0) {
                z = false;
            } else {
                if (!isInEditMode()) {
                    if (C16315a.m7415a(getContext(), m7459a(), this.f57652f) != null) {
                        C16315a m7415a = C16315a.m7415a(getContext(), m7459a(), this.f57652f);
                        this.f57664r = m7415a;
                        m7455a(m7415a);
                        z2 = true;
                    }
                    z2 = false;
                } else {
                    if (C16315a.m7403b(this.f57652f) != null) {
                        C16315a m7403b = C16315a.m7403b(this.f57652f);
                        this.f57664r = m7403b;
                        m7455a(m7403b);
                        z2 = true;
                    }
                    z2 = false;
                }
                z = z2;
                if (!z2) {
                    C16315a m7403b2 = C16315a.m7403b("IN");
                    this.f57664r = m7403b2;
                    m7455a(m7403b2);
                    z = true;
                }
            }
            int integer = obtainStyledAttributes.getInteger(C16330h.C16338h.CountryCodePicker_ccp_defaultPhoneCode, -1);
            if (!z && integer != -1) {
                if (!isInEditMode()) {
                    int i = integer;
                    if (integer != -1) {
                        i = integer;
                        if (C16315a.m7414a(getContext(), m7459a(), this.f57625ab, integer) == null) {
                            i = f57586c;
                        }
                    }
                    setDefaultCountryUsingPhoneCode(i);
                    m7455a(this.f57664r);
                } else {
                    C16315a m7409a = C16315a.m7409a(String.valueOf(integer));
                    C16315a c16315a = m7409a;
                    if (m7409a == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(f57586c);
                        c16315a = C16315a.m7409a(sb.toString());
                    }
                    this.f57664r = c16315a;
                    m7455a(c16315a);
                }
            }
            if (this.f57664r == null) {
                this.f57664r = C16315a.m7403b("IN");
                if (m7436l() == null) {
                    m7455a(this.f57664r);
                }
            }
            if (this.f57637an && !isInEditMode()) {
                setAutoDetectedCountry(true);
            }
            if (this.f57597K && !isInEditMode()) {
                m7439i();
            }
            setArrowColor(obtainStyledAttributes.getColor(C16330h.C16338h.CountryCodePicker_ccp_arrowColor, -99));
            int color = isInEditMode() ? obtainStyledAttributes.getColor(C16330h.C16338h.CountryCodePicker_ccp_contentColor, -99) : obtainStyledAttributes.getColor(C16330h.C16338h.CountryCodePicker_ccp_contentColor, this.f57653g.getResources().getColor(C16330h.C16333c.defaultContentColor));
            if (color != -99) {
                setContentColor(color);
            }
            int color2 = isInEditMode() ? obtainStyledAttributes.getColor(C16330h.C16338h.CountryCodePicker_ccp_flagBorderColor, 0) : obtainStyledAttributes.getColor(C16330h.C16338h.CountryCodePicker_ccp_flagBorderColor, this.f57653g.getResources().getColor(C16330h.C16333c.defaultBorderFlagColor));
            if (color2 != 0) {
                setFlagBorderColor(color2);
            }
            setDialogBackgroundColor(obtainStyledAttributes.getColor(C16330h.C16338h.CountryCodePicker_ccpDialog_backgroundColor, 0));
            setDialogBackground(obtainStyledAttributes.getResourceId(C16330h.C16338h.CountryCodePicker_ccpDialog_background, 0));
            setDialogTextColor(obtainStyledAttributes.getColor(C16330h.C16338h.CountryCodePicker_ccpDialog_textColor, 0));
            setDialogSearchEditTextTintColor(obtainStyledAttributes.getColor(C16330h.C16338h.CountryCodePicker_ccpDialog_searchEditTextTint, 0));
            setDialogCornerRaius(obtainStyledAttributes.getDimension(C16330h.C16338h.CountryCodePicker_ccpDialog_cornerRadius, BitmapDescriptorFactory.HUE_RED));
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C16330h.C16338h.CountryCodePicker_ccp_textSize, 0);
            if (dimensionPixelSize > 0) {
                this.f57656j.setTextSize(0, dimensionPixelSize);
                setFlagSize(dimensionPixelSize);
                setArrowSize(dimensionPixelSize);
            }
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(C16330h.C16338h.CountryCodePicker_ccp_arrowSize, 0);
            if (dimensionPixelSize2 > 0) {
                setArrowSize(dimensionPixelSize2);
            }
            this.f57594H = obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccpDialog_allowSearch, true);
            setCcpClickable(obtainStyledAttributes.getBoolean(C16330h.C16338h.CountryCodePicker_ccp_clickable, true));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    private boolean m7447b(String str) {
        for (C16315a c16315a : C16315a.m7412a(this.f57653g, this)) {
            if (c16315a.f57706h.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: h */
    private void m7440h() {
        if (this.f57595I) {
            this.f57659m.setVisibility(0);
        } else {
            this.f57659m.setVisibility(8);
        }
    }

    /* renamed from: i */
    private void m7439i() {
        String string = this.f57653g.getSharedPreferences(this.f57650d, 0).getString(this.f57605S, null);
        if (string != null) {
            setCountryForNameCode(string);
        }
    }

    /* renamed from: j */
    private void m7438j() {
        if (isInEditMode()) {
            EnumC16310e enumC16310e = this.f57632ai;
            if (enumC16310e != null) {
                this.f57633aj = enumC16310e;
            } else {
                this.f57633aj = EnumC16310e.ENGLISH;
            }
        } else if (!this.f57636am) {
            EnumC16310e enumC16310e2 = this.f57632ai;
            if (enumC16310e2 != null) {
                this.f57633aj = enumC16310e2;
            } else {
                this.f57633aj = EnumC16310e.ENGLISH;
            }
        } else {
            EnumC16310e m7437k = m7437k();
            if (m7437k != null) {
                this.f57633aj = m7437k;
                return;
            }
            EnumC16310e enumC16310e3 = this.f57632ai;
            if (enumC16310e3 != null) {
                this.f57633aj = enumC16310e3;
            } else {
                this.f57633aj = EnumC16310e.ENGLISH;
            }
        }
    }

    /* renamed from: k */
    private EnumC16310e m7437k() {
        EnumC16310e[] values;
        Locale locale = this.f57653g.getResources().getConfiguration().locale;
        for (EnumC16310e enumC16310e : EnumC16310e.values()) {
            if (enumC16310e.getCode().equalsIgnoreCase(locale.getLanguage()) && (enumC16310e.getCountry() == null || enumC16310e.getCountry().equalsIgnoreCase(locale.getCountry()) || (Build.VERSION.SDK_INT >= 21 && (enumC16310e.getScript() == null || enumC16310e.getScript().equalsIgnoreCase(locale.getScript()))))) {
                return enumC16310e;
            }
        }
        return null;
    }

    /* renamed from: l */
    public C16315a m7436l() {
        if (this.f57663q == null) {
            m7455a(this.f57664r);
        }
        return this.f57663q;
    }

    /* renamed from: m */
    private void m7435m() {
        this.f57622aQ = C16316b.m7396a(m7429s());
    }

    /* renamed from: n */
    private void m7434n() {
        String str;
        String str2;
        if (this.f57657k == null || !this.f57639ap) {
            return;
        }
        C16136k.C16137a exampleNumberForType = m7426v().getExampleNumberForType(m7441g(), m7433o());
        if (exampleNumberForType != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(exampleNumberForType.f57030b);
            String sb2 = sb.toString();
            if (Build.VERSION.SDK_INT >= 21) {
                str2 = PhoneNumberUtils.formatNumber(m7442f() + sb2, m7441g());
            } else {
                str2 = PhoneNumberUtils.formatNumber(m7442f() + sb2);
            }
            str = str2;
            if (str2 != null) {
                str = str2.substring(m7442f().length()).trim();
            }
        } else {
            str = "";
        }
        String str3 = str;
        if (str == null) {
            str3 = this.f57668v;
        }
        this.f57657k.setHint(str3);
    }

    /* renamed from: o */
    private PhoneNumberUtil.EnumC16104d m7433o() {
        switch (C163053.f57676a[this.f57604R.ordinal()]) {
            case 1:
                return PhoneNumberUtil.EnumC16104d.MOBILE;
            case 2:
                return PhoneNumberUtil.EnumC16104d.FIXED_LINE;
            case 3:
                return PhoneNumberUtil.EnumC16104d.FIXED_LINE_OR_MOBILE;
            case 4:
                return PhoneNumberUtil.EnumC16104d.TOLL_FREE;
            case 5:
                return PhoneNumberUtil.EnumC16104d.PREMIUM_RATE;
            case 6:
                return PhoneNumberUtil.EnumC16104d.SHARED_COST;
            case 7:
                return PhoneNumberUtil.EnumC16104d.VOIP;
            case 8:
                return PhoneNumberUtil.EnumC16104d.PERSONAL_NUMBER;
            case 9:
                return PhoneNumberUtil.EnumC16104d.PAGER;
            case 10:
                return PhoneNumberUtil.EnumC16104d.UAN;
            case 11:
                return PhoneNumberUtil.EnumC16104d.VOICEMAIL;
            case 12:
                return PhoneNumberUtil.EnumC16104d.UNKNOWN;
            default:
                return PhoneNumberUtil.EnumC16104d.MOBILE;
        }
    }

    /* renamed from: p */
    private void m7432p() {
        EditText editText = this.f57657k;
        if (editText == null || this.f57663q == null) {
            if (editText == null) {
                new StringBuilder("updateFormattingTextWatcher: EditText not registered ").append(this.f57605S);
                return;
            } else {
                new StringBuilder("updateFormattingTextWatcher: selected country is null ").append(this.f57605S);
                return;
            }
        }
        String normalizeDigitsOnly = PhoneNumberUtil.normalizeDigitsOnly(editText.getText().toString());
        C16329g c16329g = this.f57641ar;
        if (c16329g != null) {
            this.f57657k.removeTextChangedListener(c16329g);
        }
        TextWatcher textWatcher = this.f57643at;
        if (textWatcher != null) {
            this.f57657k.removeTextChangedListener(textWatcher);
        }
        if (this.f57638ao) {
            C16329g c16329g2 = new C16329g(this.f57653g, m7441g(), m7429s(), this.f57603Q);
            this.f57641ar = c16329g2;
            this.f57657k.addTextChangedListener(c16329g2);
        }
        if (this.f57598L) {
            TextWatcher m7431q = m7431q();
            this.f57643at = m7431q;
            this.f57657k.addTextChangedListener(m7431q);
        }
        this.f57657k.setText("");
        this.f57657k.setText(normalizeDigitsOnly);
        EditText editText2 = this.f57657k;
        editText2.setSelection(editText2.getText().length());
    }

    /* renamed from: q */
    private TextWatcher m7431q() {
        if (this.f57657k != null && this.f57643at == null) {
            this.f57643at = new TextWatcher() { // from class: com.hbb20.CountryCodePicker.2

                /* renamed from: a */
                String f57674a = null;

                @Override // android.text.TextWatcher
                public final void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    C16315a m7436l = CountryCodePicker.this.m7436l();
                    if (m7436l != null) {
                        String str = this.f57674a;
                        if ((str != null && str.equals(charSequence.toString())) || !CountryCodePicker.this.f57644au) {
                            return;
                        }
                        if (CountryCodePicker.this.f57622aQ != null) {
                            String obj = CountryCodePicker.this.f57657k.getText().toString();
                            if (obj.length() >= CountryCodePicker.this.f57622aQ.f57713b) {
                                String normalizeDigitsOnly = PhoneNumberUtil.normalizeDigitsOnly(obj);
                                if (normalizeDigitsOnly.length() >= CountryCodePicker.this.f57622aQ.f57713b) {
                                    String substring = normalizeDigitsOnly.substring(0, CountryCodePicker.this.f57622aQ.f57713b);
                                    if (!substring.equals(CountryCodePicker.this.f57645av)) {
                                        C16315a m7395a = CountryCodePicker.this.f57622aQ.m7395a(CountryCodePicker.this.f57653g, CountryCodePicker.this.m7459a(), substring);
                                        if (!m7395a.equals(m7436l)) {
                                            CountryCodePicker.this.f57647ax = true;
                                            CountryCodePicker.this.f57646aw = Selection.getSelectionEnd(charSequence);
                                            CountryCodePicker.this.m7455a(m7395a);
                                        }
                                        CountryCodePicker.this.f57645av = substring;
                                    }
                                }
                            }
                        }
                        this.f57674a = charSequence.toString();
                    }
                }
            };
        }
        return this.f57643at;
    }

    /* renamed from: r */
    private String m7430r() {
        return this.f57664r.f57706h.toUpperCase();
    }

    /* renamed from: s */
    private int m7429s() {
        int i;
        try {
            i = Integer.parseInt(m7436l().f57707i);
        } catch (Exception e) {
            e.printStackTrace();
            i = 0;
        }
        return i;
    }

    /* renamed from: t */
    private void m7428t() {
        if (!this.f57589C || this.f57601O) {
            this.f57662p.setVisibility(8);
        } else {
            this.f57662p.setVisibility(0);
        }
    }

    /* renamed from: u */
    private boolean m7427u() {
        try {
            EditText editText = this.f57657k;
            if (editText == null || editText.getText().length() == 0) {
                if (this.f57657k != null) {
                    return false;
                }
                Toast.makeText(this.f57653g, "No editText for Carrier number found.", 0).show();
                return false;
            }
            PhoneNumberUtil m7426v = m7426v();
            return m7426v().isValidNumber(m7426v.parse("+" + this.f57663q.f57707i + this.f57657k.getText().toString(), this.f57663q.f57706h));
        } catch (NumberParseException e) {
            return false;
        }
    }

    /* renamed from: v */
    private PhoneNumberUtil m7426v() {
        if (this.f57671y == null) {
            this.f57671y = PhoneNumberUtil.getInstance();
        }
        return this.f57671y;
    }

    /* renamed from: w */
    private boolean m7425w() {
        try {
            String simCountryIso = ((TelephonyManager) this.f57653g.getSystemService(Constants.EXTRA_PHONE_NUMBER)).getSimCountryIso();
            boolean z = false;
            if (simCountryIso != null) {
                z = false;
                if (!simCountryIso.isEmpty()) {
                    if (!m7447b(simCountryIso)) {
                        z = false;
                    } else {
                        m7455a(C16315a.m7415a(getContext(), m7459a(), simCountryIso));
                        z = true;
                    }
                }
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: x */
    private boolean m7424x() {
        try {
            String networkCountryIso = ((TelephonyManager) this.f57653g.getSystemService(Constants.EXTRA_PHONE_NUMBER)).getNetworkCountryIso();
            boolean z = false;
            if (networkCountryIso != null) {
                z = false;
                if (!networkCountryIso.isEmpty()) {
                    if (!m7447b(networkCountryIso)) {
                        z = false;
                    } else {
                        m7455a(C16315a.m7415a(getContext(), m7459a(), networkCountryIso));
                        z = true;
                    }
                }
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: y */
    private boolean m7423y() {
        try {
            String country = this.f57653g.getResources().getConfiguration().locale.getCountry();
            boolean z = false;
            if (country != null) {
                z = false;
                if (!country.isEmpty()) {
                    if (!m7447b(country)) {
                        z = false;
                    } else {
                        m7455a(C16315a.m7415a(getContext(), m7459a(), country));
                        z = true;
                    }
                }
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    public final EnumC16310e m7459a() {
        if (this.f57633aj == null) {
            m7438j();
        }
        return this.f57633aj;
    }

    /* renamed from: a */
    public final void m7455a(C16315a c16315a) {
        AbstractC16317c abstractC16317c = this.f57618aM;
        if (abstractC16317c != null && abstractC16317c.mo7389a(c16315a) != null) {
            this.f57656j.setContentDescription(this.f57618aM.mo7389a(c16315a));
        }
        this.f57644au = false;
        this.f57645av = "";
        C16315a c16315a2 = c16315a;
        if (c16315a == null) {
            C16315a m7414a = C16315a.m7414a(getContext(), m7459a(), this.f57625ab, this.f57651e);
            c16315a2 = m7414a;
            if (m7414a == null) {
                return;
            }
        }
        this.f57663q = c16315a2;
        String str = "";
        if (this.f57589C) {
            str = "";
            if (this.f57601O) {
                if (!isInEditMode()) {
                    str = "" + C16315a.m7410a(c16315a2) + "  ";
                } else if (this.f57602P) {
                    str = "��\u200b ";
                } else {
                    str = "" + C16315a.m7410a(c16315a2) + "\u200b ";
                }
            }
        }
        String str2 = str;
        if (this.f57590D) {
            str2 = str + c16315a2.f57708j;
        }
        String str3 = str2;
        if (this.f57672z) {
            if (this.f57590D) {
                str3 = str2 + " (" + c16315a2.f57706h.toUpperCase() + ")";
            } else {
                str3 = str2 + StringUtils.SPACE + c16315a2.f57706h.toUpperCase();
            }
        }
        String str4 = str3;
        if (this.f57587A) {
            String str5 = str3;
            if (str3.length() > 0) {
                str5 = str3 + "  ";
            }
            str4 = str5 + "+" + c16315a2.f57707i;
        }
        this.f57656j.setText(str4);
        if (!this.f57589C && str4.length() == 0) {
            this.f57656j.setText(str4 + "+" + c16315a2.f57707i);
        }
        this.f57660n.setImageResource(c16315a2.m7417a());
        m7432p();
        m7434n();
        if (this.f57657k != null && this.f57620aO != null) {
            this.f57642as = m7427u();
        }
        this.f57644au = true;
        if (this.f57647ax) {
            try {
                this.f57657k.setSelection(this.f57646aw);
                this.f57647ax = false;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        m7435m();
    }

    /* renamed from: a */
    public final void m7453a(String str) {
        C16324e.m7390a(this.f57666t, str);
    }

    /* renamed from: b */
    public final void m7451b() {
        String str = this.f57627ad;
        if (str == null || str.length() == 0) {
            this.f57625ab = null;
        } else {
            ArrayList arrayList = new ArrayList();
            for (String str2 : this.f57627ad.split(",")) {
                C16315a m7411a = C16315a.m7411a(getContext(), this.f57629af, m7459a(), str2);
                if (m7411a != null && !m7454a(m7411a, arrayList)) {
                    arrayList.add(m7411a);
                }
            }
            if (arrayList.size() == 0) {
                this.f57625ab = null;
            } else {
                this.f57625ab = arrayList;
            }
        }
        List<C16315a> list = this.f57625ab;
        if (list != null) {
            for (C16315a c16315a : list) {
                c16315a.m7407b();
            }
        }
    }

    /* renamed from: c */
    public final void m7446c() {
        String str = this.f57630ag;
        if (str == null || str.length() == 0) {
            String str2 = this.f57631ah;
            if (str2 == null || str2.length() == 0) {
                this.f57629af = null;
            } else {
                this.f57631ah = this.f57631ah.toLowerCase();
                List<C16315a> m7398d = C16315a.m7398d(this.f57653g, m7459a());
                ArrayList arrayList = new ArrayList();
                for (C16315a c16315a : m7398d) {
                    if (!this.f57631ah.contains(c16315a.f57706h.toLowerCase())) {
                        arrayList.add(c16315a);
                    }
                }
                if (arrayList.size() > 0) {
                    this.f57629af = arrayList;
                } else {
                    this.f57629af = null;
                }
            }
        } else {
            ArrayList arrayList2 = new ArrayList();
            for (String str3 : this.f57630ag.split(",")) {
                C16315a m7415a = C16315a.m7415a(getContext(), m7459a(), str3);
                if (m7415a != null && !m7454a(m7415a, arrayList2)) {
                    arrayList2.add(m7415a);
                }
            }
            if (arrayList2.size() == 0) {
                this.f57629af = null;
            } else {
                this.f57629af = arrayList2;
            }
        }
        List<C16315a> list = this.f57629af;
        if (list != null) {
            for (C16315a c16315a2 : list) {
                c16315a2.m7407b();
            }
        }
    }

    /* renamed from: d */
    public final int m7444d() {
        int i;
        try {
            i = Integer.parseInt(this.f57664r.f57707i);
        } catch (Exception e) {
            e.printStackTrace();
            i = 0;
        }
        return i;
    }

    /* renamed from: e */
    public final void m7443e() {
        C16315a m7415a = C16315a.m7415a(getContext(), m7459a(), m7430r());
        this.f57664r = m7415a;
        m7455a(m7415a);
    }

    /* renamed from: f */
    public final String m7442f() {
        return "+" + m7436l().f57707i;
    }

    /* renamed from: g */
    public final String m7441g() {
        return m7436l().f57706h.toUpperCase();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        C16324e.m7392a();
        super.onDetachedFromWindow();
    }

    public void setArrowColor(int i) {
        this.f57607U = i;
        if (i != -99) {
            this.f57659m.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            return;
        }
        int i2 = this.f57606T;
        if (i2 == -99) {
            return;
        }
        this.f57659m.setColorFilter(i2, PorterDuff.Mode.SRC_IN);
    }

    public void setArrowSize(int i) {
        if (i > 0) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f57659m.getLayoutParams();
            layoutParams.width = i;
            layoutParams.height = i;
            this.f57659m.setLayoutParams(layoutParams);
        }
    }

    public void setAutoDetectedCountry(boolean z) {
        boolean z2;
        int i = 0;
        boolean z3 = false;
        while (true) {
            z2 = z3;
            try {
                if (i < this.f57670x.representation.length()) {
                    switch (this.f57670x.representation.charAt(i)) {
                        case '1':
                            z3 = m7425w();
                            break;
                        case '2':
                            z3 = m7424x();
                            break;
                        case '3':
                            z3 = m7423y();
                            break;
                    }
                    z2 = z3;
                    if (!z3) {
                        i++;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                Log.w(f57580a, "setAutoDetectCountry: Exception" + e.getMessage());
                if (!z) {
                    return;
                }
                m7443e();
                return;
            }
        }
        if (z2 || !z) {
            return;
        }
        m7443e();
    }

    public void setAutoDetectionFailureListener(AbstractC16309d abstractC16309d) {
        this.f57621aP = abstractC16309d;
    }

    public void setCcpClickable(boolean z) {
        this.f57635al = z;
        if (!z) {
            this.f57665s.setOnClickListener(null);
            this.f57665s.setClickable(false);
            this.f57665s.setEnabled(false);
            return;
        }
        this.f57665s.setOnClickListener(this.f57617aH);
        this.f57665s.setClickable(true);
        this.f57665s.setEnabled(true);
    }

    public void setCcpDialogShowFlag(boolean z) {
        this.f57593G = z;
    }

    public void setCcpDialogShowNameCode(boolean z) {
        this.f57599M = z;
    }

    public void setCcpDialogShowPhoneCode(boolean z) {
        this.f57588B = z;
    }

    public void setCcpDialogShowTitle(boolean z) {
        this.f57592F = z;
    }

    public void setContentColor(int i) {
        this.f57606T = i;
        this.f57656j.setTextColor(i);
        if (this.f57607U == -99) {
            this.f57659m.setColorFilter(this.f57606T, PorterDuff.Mode.SRC_IN);
        }
    }

    public void setCountryAutoDetectionPref(EnumC16306a enumC16306a) {
        this.f57670x = enumC16306a;
    }

    public void setCountryForNameCode(String str) {
        C16315a m7415a = C16315a.m7415a(getContext(), m7459a(), str);
        if (m7415a != null) {
            m7455a(m7415a);
            return;
        }
        if (this.f57664r == null) {
            this.f57664r = C16315a.m7414a(getContext(), m7459a(), this.f57625ab, this.f57651e);
        }
        m7455a(this.f57664r);
    }

    public void setCountryForPhoneCode(int i) {
        C16315a m7414a = C16315a.m7414a(getContext(), m7459a(), this.f57625ab, i);
        if (m7414a != null) {
            m7455a(m7414a);
            return;
        }
        if (this.f57664r == null) {
            this.f57664r = C16315a.m7414a(getContext(), m7459a(), this.f57625ab, this.f57651e);
        }
        m7455a(this.f57664r);
    }

    public void setCountryPreference(String str) {
        this.f57627ad = str;
    }

    public void setCurrentTextGravity(EnumC16314i enumC16314i) {
        this.f57667u = enumC16314i;
        m7458a(enumC16314i.enumIndex);
    }

    public void setCustomDialogTextProvider(AbstractC16307b abstractC16307b) {
        this.f57649az = abstractC16307b;
    }

    public void setCustomMasterCountries(String str) {
        this.f57630ag = str;
    }

    public void setDefaultCountryUsingNameCode(String str) {
        C16315a m7415a = C16315a.m7415a(getContext(), m7459a(), str);
        if (m7415a != null) {
            this.f57652f = m7415a.f57706h;
            this.f57664r = m7415a;
        }
    }

    @Deprecated
    public void setDefaultCountryUsingPhoneCode(int i) {
        C16315a m7414a = C16315a.m7414a(getContext(), m7459a(), this.f57625ab, i);
        if (m7414a != null) {
            this.f57651e = i;
            this.f57664r = m7414a;
        }
    }

    public void setDetectCountryWithAreaCode(boolean z) {
        this.f57598L = z;
        m7432p();
    }

    public void setDialogBackground(int i) {
        this.f57611aB = i;
    }

    public void setDialogBackgroundColor(int i) {
        this.f57612aC = i;
    }

    public void setDialogCornerRaius(float f) {
        this.f57616aG = f;
    }

    public void setDialogEventsListener(AbstractC16308c abstractC16308c) {
        this.f57648ay = abstractC16308c;
    }

    public void setDialogKeyboardAutoPopup(boolean z) {
        this.f57634ak = z;
    }

    public void setDialogSearchEditTextTintColor(int i) {
        this.f57614aE = i;
    }

    public void setDialogTextColor(int i) {
        this.f57613aD = i;
    }

    public void setDialogTypeFace(Typeface typeface) {
        try {
            this.f57609W = typeface;
            this.f57624aa = -99;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setDialogTypeFace(Typeface typeface, int i) {
        try {
            this.f57609W = typeface;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setExcludedCountries(String str) {
        this.f57631ah = str;
        m7446c();
    }

    public void setFastScrollerBubbleColor(int i) {
        this.f57628ae = i;
    }

    public void setFastScrollerBubbleTextAppearance(int i) {
        this.f57615aF = i;
    }

    public void setFastScrollerHandleColor(int i) {
        this.f57610aA = i;
    }

    public void setFlagBorderColor(int i) {
        this.f57608V = i;
        this.f57661o.setBackgroundColor(i);
    }

    public void setFlagSize(int i) {
        this.f57660n.getLayoutParams().height = i;
        this.f57660n.requestLayout();
    }

    public void setFullNumber(String str) {
        C16315a m7413a = C16315a.m7413a(getContext(), m7459a(), this.f57625ab, str);
        C16315a c16315a = m7413a;
        if (m7413a == null) {
            c16315a = this.f57664r;
        }
        m7455a(c16315a);
        String str2 = str;
        if (c16315a != null) {
            str2 = str;
            if (str != null) {
                if (str.isEmpty()) {
                    str2 = str;
                } else {
                    int indexOf = str.indexOf(c16315a.f57707i);
                    str2 = indexOf == -1 ? str : str.substring(indexOf + c16315a.f57707i.length());
                }
            }
        }
        EditText editText = this.f57657k;
        if (editText == null) {
            Log.w(f57580a, "EditText for carrier number is not registered. Register it using registerCarrierNumberEditText() before getFullNumber() or setFullNumber().");
            return;
        }
        editText.setText(str2);
        m7432p();
    }

    public void setHintExampleNumberEnabled(boolean z) {
        this.f57639ap = z;
        m7434n();
    }

    public void setHintExampleNumberType(EnumC16312g enumC16312g) {
        this.f57604R = enumC16312g;
        m7434n();
    }

    public void setImageViewFlag(ImageView imageView) {
        this.f57660n = imageView;
    }

    public void setInternationalFormattingOnly(boolean z) {
        this.f57603Q = z;
        if (this.f57657k != null) {
            m7432p();
        }
    }

    public void setNumberAutoFormattingEnabled(boolean z) {
        this.f57638ao = z;
        if (this.f57657k != null) {
            m7432p();
        }
    }

    public void setOnCountryChangeListener(AbstractC16311f abstractC16311f) {
        this.f57619aN = abstractC16311f;
    }

    public void setPhoneNumberValidityChangeListener(AbstractC16313h abstractC16313h) {
        this.f57620aO = abstractC16313h;
        if (this.f57657k == null || abstractC16313h == null) {
            return;
        }
        this.f57642as = m7427u();
    }

    public void setSearchAllowed(boolean z) {
        this.f57594H = z;
    }

    public void setShowFastScroller(boolean z) {
        this.f57591E = z;
    }

    public void setShowPhoneCode(boolean z) {
        this.f57587A = z;
        m7455a(this.f57663q);
    }

    public void setTalkBackTextProvider(AbstractC16317c abstractC16317c) {
        this.f57618aM = abstractC16317c;
        m7455a(this.f57663q);
    }

    public void setTextSize(int i) {
        if (i > 0) {
            this.f57656j.setTextSize(0, i);
            setArrowSize(i);
            setFlagSize(i);
        }
    }

    public void setTextView_selectedCountry(TextView textView) {
        this.f57656j = textView;
    }

    public void setTypeFace(Typeface typeface) {
        try {
            this.f57656j.setTypeface(typeface);
            setDialogTypeFace(typeface);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setTypeFace(Typeface typeface, int i) {
        try {
            this.f57656j.setTypeface(typeface, i);
            setDialogTypeFace(typeface, i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
