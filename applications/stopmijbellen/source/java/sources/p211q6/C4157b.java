package p211q6;

import android.content.Context;
import android.text.format.DateUtils;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigClientException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigException;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigFetchThrottledException;
import com.google.firebase.remoteconfig.internal.C1853a;
import com.google.firebase.remoteconfig.internal.C1855b;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p222r6.C4218d;
import p222r6.C4224h;
import p222r6.C4226j;
import p229s2.C4281c;
import p241t4.C4392c;
import p252u4.C4485b;
import p286x5.AbstractC4871e;
import p286x5.AbstractC4875i;
import p293y2.C4994k;
import p303z2.C5050k;
import p303z2.C5056q;
/* renamed from: q6.b */
/* loaded from: classes-dex2jar.jar:q6/b.class */
public class C4157b {

    /* renamed from: a */
    public final Context f13114a;

    /* renamed from: b */
    public final C4485b f13115b;

    /* renamed from: c */
    public final Executor f13116c;

    /* renamed from: d */
    public final C4218d f13117d;

    /* renamed from: e */
    public final C4218d f13118e;

    /* renamed from: f */
    public final C4218d f13119f;

    /* renamed from: g */
    public final C1853a f13120g;

    /* renamed from: h */
    public final C4224h f13121h;

    /* renamed from: i */
    public final C1855b f13122i;

    /* renamed from: j */
    public final AbstractC4871e f13123j;

    public C4157b(Context context, C4392c c4392c, AbstractC4871e abstractC4871e, C4485b c4485b, Executor executor, C4218d c4218d, C4218d c4218d2, C4218d c4218d3, C1853a c1853a, C4224h c4224h, C1855b c1855b) {
        this.f13114a = context;
        this.f13123j = abstractC4871e;
        this.f13115b = c4485b;
        this.f13116c = executor;
        this.f13117d = c4218d;
        this.f13118e = c4218d2;
        this.f13119f = c4218d3;
        this.f13120g = c1853a;
        this.f13121h = c4224h;
        this.f13122i = c1855b;
    }

    /* renamed from: c */
    public static List<Map<String, String>> m1349c(JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            arrayList.add(hashMap);
        }
        return arrayList;
    }

    /* renamed from: a */
    public Task<Boolean> m1351a() {
        final C1853a c1853a = this.f13120g;
        final long j = c1853a.f7017h.f7024a.getLong("minimum_fetch_interval_in_seconds", C1853a.f7008j);
        return c1853a.f7015f.m1284b().continueWithTask(c1853a.f7012c, new Continuation() { // from class: r6.f
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task) {
                Task task2;
                Task task3;
                final C1853a c1853a2 = C1853a.this;
                long j2 = j;
                Objects.requireNonNull(c1853a2);
                final Date date = new Date(c1853a2.f7013d.currentTimeMillis());
                boolean isSuccessful = task.isSuccessful();
                Date date2 = null;
                if (isSuccessful) {
                    C1855b c1855b = c1853a2.f7017h;
                    Objects.requireNonNull(c1855b);
                    Date date3 = new Date(c1855b.f7024a.getLong("last_fetch_time_in_millis", -1L));
                    if (date3.equals(C1855b.f7022d) ? false : date.before(new Date(TimeUnit.SECONDS.toMillis(j2) + date3.getTime()))) {
                        task2 = Tasks.forResult(new C1853a.C1854a(date, 2, null, null));
                        return task2;
                    }
                }
                Date date4 = c1853a2.f7017h.m4453a().f7028b;
                if (date.before(date4)) {
                    date2 = date4;
                }
                if (date2 != null) {
                    task3 = Tasks.forException(new FirebaseRemoteConfigFetchThrottledException(String.format("Fetch is throttled. Please wait before calling fetch again: %s", DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(date2.getTime() - date.getTime()))), date2.getTime()));
                } else {
                    final Task id = c1853a2.f7010a.getId();
                    final Task mo329a = c1853a2.f7010a.mo329a(false);
                    task3 = Tasks.whenAllComplete(id, mo329a).continueWithTask(c1853a2.f7012c, new Continuation() { // from class: r6.g
                        @Override // com.google.android.gms.tasks.Continuation
                        public final Object then(Task task4) {
                            Task task5;
                            C1853a c1853a3 = C1853a.this;
                            Task task6 = id;
                            Task task7 = mo329a;
                            Date date5 = date;
                            Objects.requireNonNull(c1853a3);
                            if (!task6.isSuccessful()) {
                                task5 = Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation ID for fetch.", task6.getException()));
                            } else if (!task7.isSuccessful()) {
                                task5 = Tasks.forException(new FirebaseRemoteConfigClientException("Firebase Installations failed to get installation auth token for fetch.", task7.getException()));
                            } else {
                                try {
                                    C1853a.C1854a m4455a = c1853a3.m4455a((String) task6.getResult(), ((AbstractC4875i) task7.getResult()).mo328a(), date5);
                                    task5 = m4455a.f7019a != 0 ? Tasks.forResult(m4455a) : c1853a3.f7015f.m1283c(m4455a.f7020b).onSuccessTask(c1853a3.f7012c, new C5050k(m4455a, 4));
                                } catch (FirebaseRemoteConfigException e) {
                                    task5 = Tasks.forException(e);
                                }
                            }
                            return task5;
                        }
                    });
                }
                task2 = task3.continueWithTask(c1853a2.f7012c, new C4994k(c1853a2, date, 1));
                return task2;
            }
        }).onSuccessTask(C4281c.f13429e).onSuccessTask(this.f13116c, new C5056q(this, 3));
    }

    /* renamed from: b */
    public Map<String, AbstractC4161d> m1350b() {
        C4226j c4226j;
        C4224h c4224h = this.f13121h;
        Objects.requireNonNull(c4224h);
        HashSet hashSet = new HashSet();
        hashSet.addAll(C4224h.m1279c(c4224h.f13233c));
        hashSet.addAll(C4224h.m1279c(c4224h.f13234d));
        HashMap hashMap = new HashMap();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            String m1277e = C4224h.m1277e(c4224h.f13233c, str);
            if (m1277e != null) {
                c4224h.m1281a(str, C4224h.m1280b(c4224h.f13233c));
                c4226j = new C4226j(m1277e, 2);
            } else {
                String m1277e2 = C4224h.m1277e(c4224h.f13234d, str);
                if (m1277e2 != null) {
                    c4226j = new C4226j(m1277e2, 1);
                } else {
                    C4224h.m1276f(str, "FirebaseRemoteConfigValue");
                    c4226j = new C4226j("", 0);
                }
            }
            hashMap.put(str, c4226j);
        }
        return hashMap;
    }
}
