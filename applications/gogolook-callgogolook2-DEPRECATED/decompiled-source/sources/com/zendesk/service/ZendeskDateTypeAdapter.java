package com.zendesk.service;

import com.google.gson.TypeAdapter;
import java.io.IOException;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
import p081h.p203i.p384e.p391y.EnumC10176b;
import p081h.p451q.p453b.C10845a;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/ZendeskDateTypeAdapter.class */
public class ZendeskDateTypeAdapter extends TypeAdapter<Date> {

    /* renamed from: a */
    public static final TimeZone f10246a = TimeZone.getTimeZone("UTC");

    /* renamed from: a */
    public static int m29290a(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    /* renamed from: a */
    public final int m29288a(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit >= 0) {
                i3 = -digit;
            } else {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
        } else {
            i4 = i;
            i3 = 0;
        }
        while (i4 < i2) {
            int digit2 = Character.digit(str.charAt(i4), 10);
            if (digit2 >= 0) {
                i3 = (i3 * 10) - digit2;
                i4++;
            } else {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
        }
        return -i3;
    }

    /* renamed from: a */
    public final String m29285a(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(f10246a, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(21);
        m29286a(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        m29286a(sb, gregorianCalendar.get(2) + 1, 2);
        sb.append('-');
        m29286a(sb, gregorianCalendar.get(5), 2);
        sb.append('T');
        m29286a(sb, gregorianCalendar.get(11), 2);
        sb.append(':');
        m29286a(sb, gregorianCalendar.get(12), 2);
        sb.append(':');
        m29286a(sb, gregorianCalendar.get(13), 2);
        sb.append('Z');
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:93:0x02c6, code lost:
        if (r0.isEmpty() != false) goto L_0x02c9;
     */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01cc A[Catch: IndexOutOfBoundsException -> 0x0280, TRY_LEAVE, TryCatch #0 {IndexOutOfBoundsException -> 0x0280, blocks: (B:2:0x0000, B:4:0x000a, B:6:0x0017, B:11:0x002d, B:13:0x003a, B:18:0x0050, B:20:0x006a, B:22:0x0073, B:27:0x00a0, B:29:0x00ad, B:34:0x00c3, B:36:0x00d0, B:40:0x00e1, B:42:0x00e9, B:50:0x010a, B:56:0x0129, B:60:0x013b, B:72:0x01c3, B:74:0x01cc, B:77:0x01db, B:79:0x023d, B:79:0x023d, B:80:0x0240, B:81:0x0270, B:82:0x0271, B:82:0x0271, B:83:0x0274, B:84:0x027f), top: B:97:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0271 A[Catch: IndexOutOfBoundsException -> 0x0280, IndexOutOfBoundsException -> 0x0280, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IndexOutOfBoundsException -> 0x0280, blocks: (B:2:0x0000, B:4:0x000a, B:6:0x0017, B:11:0x002d, B:13:0x003a, B:18:0x0050, B:20:0x006a, B:22:0x0073, B:27:0x00a0, B:29:0x00ad, B:34:0x00c3, B:36:0x00d0, B:40:0x00e1, B:42:0x00e9, B:50:0x010a, B:56:0x0129, B:60:0x013b, B:72:0x01c3, B:74:0x01cc, B:77:0x01db, B:79:0x023d, B:79:0x023d, B:80:0x0240, B:81:0x0270, B:82:0x0271, B:82:0x0271, B:83:0x0274, B:84:0x027f), top: B:97:0x0000 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Date m29287a(java.lang.String r6, java.text.ParsePosition r7) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 825
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.zendesk.service.ZendeskDateTypeAdapter.m29287a(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    /* renamed from: a */
    public void write(C10177c cVar, Date date) throws IOException {
        if (date == null) {
            cVar.mo13214k();
        } else {
            cVar.mo13223d(m29285a(date));
        }
    }

    /* renamed from: a */
    public final void m29286a(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    /* renamed from: a */
    public final boolean m29289a(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    @Override // com.google.gson.TypeAdapter
    public Date read(C10174a aVar) throws IOException {
        if (aVar.mo13272F() == EnumC10176b.NULL) {
            aVar.mo13241p();
            return null;
        }
        String B = aVar.mo13274B();
        try {
            return m29287a(B, new ParsePosition(0));
        } catch (ParseException e) {
            C10845a.m10423a("ZendeskDateTypeAdapter", String.format(Locale.US, "Failed to parse Date from: %s", B), e, new Object[0]);
            return null;
        }
    }
}
