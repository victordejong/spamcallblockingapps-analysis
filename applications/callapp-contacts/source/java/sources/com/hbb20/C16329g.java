package com.hbb20;

import android.content.Context;
import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.TextWatcher;
import com.google.i18n.phonenumbers.C16106a;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
/* renamed from: com.hbb20.g */
/* loaded from: classes4-dex2jar.jar:com/hbb20/g.class */
public final class C16329g implements TextWatcher {

    /* renamed from: a */
    PhoneNumberUtil f57745a;

    /* renamed from: b */
    Editable f57746b;

    /* renamed from: c */
    private boolean f57747c;

    /* renamed from: d */
    private boolean f57748d;

    /* renamed from: e */
    private C16106a f57749e;

    /* renamed from: f */
    private String f57750f;

    /* renamed from: g */
    private int f57751g;

    /* renamed from: h */
    private boolean f57752h;

    /* renamed from: i */
    private boolean f57753i;

    public C16329g(Context context, String str, int i) {
        this(context, str, i, true);
    }

    public C16329g(Context context, String str, int i, boolean z) {
        this.f57747c = false;
        this.f57746b = null;
        this.f57752h = false;
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException();
        }
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        this.f57745a = phoneNumberUtil;
        this.f57750f = str;
        this.f57751g = i;
        C16106a asYouTypeFormatter = phoneNumberUtil.getAsYouTypeFormatter(str);
        this.f57749e = asYouTypeFormatter;
        asYouTypeFormatter.m7863a();
        Editable editable = this.f57746b;
        if (editable != null) {
            this.f57752h = true;
            String normalizeDigitsOnly = PhoneNumberUtil.normalizeDigitsOnly(editable);
            Editable editable2 = this.f57746b;
            editable2.replace(0, editable2.length(), normalizeDigitsOnly, 0, normalizeDigitsOnly.length());
            this.f57752h = false;
        }
        this.f57753i = z;
    }

    /* renamed from: a */
    private void m7388a() {
        this.f57748d = true;
        this.f57749e.m7863a();
    }

    /* renamed from: a */
    private static boolean m7387a(CharSequence charSequence, int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            if (!PhoneNumberUtils.isNonSeparator(charSequence.charAt(i3))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0147, code lost:
        if (r14.charAt(0) == '0') goto L69;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x023d A[LOOP:3: B:108:0x023d->B:113:0x025f, LOOP_START, PHI: r17 
      PHI: (r17v3 int) = (r17v2 int), (r17v4 int) binds: [B:107:0x023a, B:113:0x025f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x026a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0111 A[EDGE_INSN: B:130:0x0111->B:49:0x0111 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d0 A[Catch: all -> 0x02a3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000d, B:11:0x001b, B:14:0x0023, B:19:0x002f, B:25:0x004d, B:27:0x0078, B:29:0x0081, B:33:0x0096, B:35:0x00b8, B:39:0x00d0, B:41:0x00e3, B:45:0x00f0, B:51:0x0116, B:53:0x0123, B:55:0x012f, B:59:0x013d, B:62:0x014c, B:64:0x0157, B:66:0x0166, B:67:0x0177, B:70:0x018e, B:74:0x019a, B:80:0x01b2, B:82:0x01c2, B:88:0x01d8, B:94:0x01fc, B:100:0x0214, B:110:0x024c, B:116:0x026a, B:118:0x0299), top: B:127:0x0002, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0116 A[Catch: all -> 0x02a3, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000d, B:11:0x001b, B:14:0x0023, B:19:0x002f, B:25:0x004d, B:27:0x0078, B:29:0x0081, B:33:0x0096, B:35:0x00b8, B:39:0x00d0, B:41:0x00e3, B:45:0x00f0, B:51:0x0116, B:53:0x0123, B:55:0x012f, B:59:0x013d, B:62:0x014c, B:64:0x0157, B:66:0x0166, B:67:0x0177, B:70:0x018e, B:74:0x019a, B:80:0x01b2, B:82:0x01c2, B:88:0x01d8, B:94:0x01fc, B:100:0x0214, B:110:0x024c, B:116:0x026a, B:118:0x0299), top: B:127:0x0002, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0157 A[Catch: all -> 0x02a3, TryCatch #0 {, blocks: (B:4:0x0002, B:7:0x000d, B:11:0x001b, B:14:0x0023, B:19:0x002f, B:25:0x004d, B:27:0x0078, B:29:0x0081, B:33:0x0096, B:35:0x00b8, B:39:0x00d0, B:41:0x00e3, B:45:0x00f0, B:51:0x0116, B:53:0x0123, B:55:0x012f, B:59:0x013d, B:62:0x014c, B:64:0x0157, B:66:0x0166, B:67:0x0177, B:70:0x018e, B:74:0x019a, B:80:0x01b2, B:82:0x01c2, B:88:0x01d8, B:94:0x01fc, B:100:0x0214, B:110:0x024c, B:116:0x026a, B:118:0x0299), top: B:127:0x0002, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01ad  */
    @Override // android.text.TextWatcher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void afterTextChanged(android.text.Editable r8) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hbb20.C16329g.afterTextChanged(android.text.Editable):void");
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.f57747c || this.f57748d || i2 <= 0 || !m7387a(charSequence, i, i2) || this.f57752h) {
            return;
        }
        m7388a();
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (this.f57747c || this.f57748d || i3 <= 0 || !m7387a(charSequence, i, i3)) {
            return;
        }
        m7388a();
    }
}
