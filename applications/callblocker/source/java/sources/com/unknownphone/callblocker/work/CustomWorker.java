package com.unknownphone.callblocker.work;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.core.app.C0472h;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.unknownphone.callblocker.custom.C5282b;
import com.unknownphone.callblocker.custom.C5287g;
import com.unknownphone.callblocker.p186d.C5290b;
import com.unknownphone.callblocker.p186d.C5292d;
import com.unknownphone.callblocker.p189g.C5329a;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/work/CustomWorker.class */
public class CustomWorker extends Worker {

    /* renamed from: b */
    private static final String f22464b = CustomWorker.class.getSimpleName();

    public CustomWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    /* renamed from: a */
    private void m841a(boolean z) {
        NotificationManager notificationManager = (NotificationManager) m17977a().getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("main", "Main", 3);
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(notificationChannel);
            }
        }
        C0472h.C0475c m20774a = new C0472h.C0475c(m17977a(), "main").m20778a(BitmapFactory.decodeResource(m17977a().getResources(), 2131623936)).m20776a((CharSequence) m17977a().getString(2131755309)).m20783a(2131230981).m20772b(0).m20770b(z ? m17977a().getString(2131755390) : m17977a().getString(2131755389)).m20774a(true);
        int parseInt = Integer.parseInt(new SimpleDateFormat("yyyyMMddHH", Locale.US).format(new Date()));
        if (notificationManager != null) {
            notificationManager.notify(parseInt, m20774a.m20773b());
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x026e -> B:40:0x0212). Please submit an issue!!! */
    @Override // androidx.work.Worker
    /* renamed from: m */
    public ListenableWorker.AbstractC1119a mo840m() {
        ListenableWorker.AbstractC1119a m17965c;
        JSONArray jSONArray;
        Log.d(f22464b, "doWork() was called.");
        try {
            m17977a().startService(new Intent(m17977a(), CustomService.class));
            Calendar calendar = Calendar.getInstance();
            if (calendar.get(7) != 1) {
                m17965c = ListenableWorker.AbstractC1119a.m17968a();
            } else if (calendar.get(11) < 15) {
                m17965c = ListenableWorker.AbstractC1119a.m17968a();
            } else {
                SharedPreferences sharedPreferences = m17977a().getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("ddMMyyyy", Locale.US);
                String string = sharedPreferences.getString("last_refreshed_credits", null);
                String format = simpleDateFormat.format(calendar.getTime());
                if (string == null || !string.equals(format)) {
                    sharedPreferences.edit().putInt("credits", (sharedPreferences.getBoolean("linked_to_fb", false) || sharedPreferences.getBoolean("linked_to_google", false)) ? 90 : 75).putString("last_refreshed_credits", simpleDateFormat.format(calendar.getTime())).apply();
                    C5292d m1044a = C5292d.m1044a();
                    C5290b c5290b = new C5290b(m17977a());
                    HashMap hashMap = new HashMap();
                    hashMap.put("_action", "_get_dangerous_phones_list");
                    hashMap.put("api_key", C5287g.m1076c(sharedPreferences.getString("api_key", "")));
                    hashMap.put("region", C5287g.m1076c(sharedPreferences.getString("region_code", C5287g.m1095a(m17977a()))).toUpperCase());
                    hashMap.put("lang", C5282b.m1100a((String) C5287g.m1088a(sharedPreferences.getString("language_code", Locale.getDefault().getLanguage())).first));
                    hashMap.put("user_type", sharedPreferences.contains("subscription_ends_at") ? "premium" : "free");
                    hashMap.put("device", "Android");
                    hashMap.put("country_code", C5287g.m1075c(sharedPreferences.getString("region_code", C5287g.m1095a(m17977a())), "O1"));
                    Pair<String, Boolean> m1043a = m1044a.m1043a(hashMap);
                    if (!TextUtils.isEmpty((CharSequence) m1043a.first) && !((Boolean) m1043a.second).booleanValue()) {
                        ArrayList arrayList = new ArrayList();
                        try {
                            jSONArray = new JSONArray((String) m1043a.first);
                        } catch (JSONException e) {
                            jSONArray = null;
                        }
                        for (int i = 0; jSONArray != null && i < jSONArray.length(); i++) {
                            try {
                                arrayList.add(new C5329a(jSONArray.getJSONObject(i)));
                            } catch (JSONException e2) {
                            }
                        }
                        c5290b.m1051b(arrayList);
                        sharedPreferences.edit().putLong("spam_numbers_last_update", System.currentTimeMillis()).putInt("click_counter", 20).apply();
                    }
                    m841a(sharedPreferences.contains("subscription_ends_at"));
                    m17965c = ListenableWorker.AbstractC1119a.m17968a();
                } else {
                    m17965c = ListenableWorker.AbstractC1119a.m17968a();
                }
            }
        } catch (Throwable th) {
            m17965c = ListenableWorker.AbstractC1119a.m17965c();
        }
        return m17965c;
    }
}
