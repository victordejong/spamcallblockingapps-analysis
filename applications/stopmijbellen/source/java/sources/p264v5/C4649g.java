package p264v5;

import android.content.Context;
import android.content.SharedPreferences;
import java.text.SimpleDateFormat;
import java.util.Date;
/* renamed from: v5.g */
/* loaded from: classes-dex2jar.jar:v5/g.class */
public class C4649g {

    /* renamed from: b */
    public static C4649g f14344b;

    /* renamed from: c */
    public static final SimpleDateFormat f14345c = new SimpleDateFormat("dd/MM/yyyy z");

    /* renamed from: a */
    public final SharedPreferences f14346a;

    public C4649g(Context context) {
        this.f14346a = context.getSharedPreferences("FirebaseAppHeartBeat", 0);
        context.getSharedPreferences("FirebaseAppHeartBeatStorage", 0);
    }

    /* renamed from: a */
    public boolean m681a(String str, long j) {
        synchronized (this) {
            if (!this.f14346a.contains(str)) {
                this.f14346a.edit().putLong(str, j).apply();
                return true;
            }
            Date date = new Date(this.f14346a.getLong(str, -1L));
            Date date2 = new Date(j);
            SimpleDateFormat simpleDateFormat = f14345c;
            if (!(!simpleDateFormat.format(date).equals(simpleDateFormat.format(date2)))) {
                return false;
            }
            this.f14346a.edit().putLong(str, j).apply();
            return true;
        }
    }
}
