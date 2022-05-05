package p459j.p460a.p474c0.p488f;

import android.content.res.Resources;
import gogolook.callgogolook2.R$plurals;
import gogolook.callgogolook2.gson.NumberInfo;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.C11565v;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.f.m */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/m.class */
public class C11839m {

    /* renamed from: a */
    public static final C11840a f26552a = new C11840a(1, 109);

    /* renamed from: b */
    public static final Pattern f26553b = Pattern.compile("([1-9]+\\d*)(w|m|y)");

    /* renamed from: j.a.c0.f.m$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/m$a.class */
    public static class C11840a {

        /* renamed from: a */
        public final int f26554a;

        /* renamed from: b */
        public final int f26555b;

        public C11840a(int i, int i2) {
            this.f26554a = i;
            this.f26555b = i2;
        }
    }

    /* renamed from: a */
    public static long m8063a(C11840a aVar) {
        long j;
        long j2;
        int i = aVar.f26555b;
        if (i == 109) {
            j = aVar.f26554a;
            j2 = NumberInfo.Whoscall.Spam.EXPIRE_INTERVAL;
        } else if (i == 119) {
            j = aVar.f26554a;
            j2 = 604800000;
        } else if (i != 121) {
            return -1L;
        } else {
            j = aVar.f26554a;
            j2 = 31536000000L;
        }
        return j * j2;
    }

    /* renamed from: a */
    public static C11840a m8065a() {
        AbstractC12170i.m6941a().mo6917a("bugle_sms_storage_purging_message_retaining_duration", "1m");
        Matcher matcher = f26553b.matcher("1m");
        try {
            if (matcher.matches()) {
                return new C11840a(Integer.parseInt(matcher.group(1)), matcher.group(2).charAt(0));
            }
        } catch (NumberFormatException e) {
        }
        C12153d0.m6987b("MessagingApp", "SmsAutoDelete: invalid duration 1m");
        return f26552a;
    }

    /* renamed from: a */
    public static void m8064a(int i, long j) {
        int i2;
        if (i == 0) {
            i2 = C11834j.m8154a();
        } else if (i != 1) {
            C12153d0.m6987b("MessagingApp", "SmsStorageStatusManager: invalid action " + i);
            i2 = 0;
        } else {
            i2 = C11834j.m8150a(System.currentTimeMillis() - j);
        }
        if (i2 > 0) {
            C11565v.m9118g();
        }
    }

    /* renamed from: b */
    public static String m8062b(C11840a aVar) {
        Resources resources = AbstractC11516a.m9413n().mo9412a().getResources();
        int i = aVar.f26555b;
        if (i == 109) {
            int i2 = aVar.f26554a;
            return resources.getQuantityString(R$plurals.month_count, i2, Integer.valueOf(i2));
        } else if (i == 119) {
            int i3 = aVar.f26554a;
            return resources.getQuantityString(R$plurals.week_count, i3, Integer.valueOf(i3));
        } else if (i == 121) {
            int i4 = aVar.f26554a;
            return resources.getQuantityString(R$plurals.year_count, i4, Integer.valueOf(i4));
        } else {
            throw new IllegalArgumentException("SmsAutoDelete: invalid duration unit " + aVar.f26555b);
        }
    }
}
