package p081h.p160h.p179e.p180a.p185l;

import android.os.Build;
import androidx.core.app.Person;
import com.gogolook.whoscallsdk.core.fcm.data.TopicMap;
import com.gogolook.whoscallsdk.core.fcm.data.TopicObject;
import com.google.gson.Gson;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.C6344e;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p183i.C6359b;
import p081h.p160h.p179e.p180a.p183i.C6362e;
import p081h.p160h.p179e.p180a.p190p.C6432e;
import p081h.p160h.p179e.p180a.p190p.C6436g;
import p081h.p160h.p179e.p180a.p190p.C6438i;
import p081h.p203i.p204a.p224e.p293r.AbstractC9132c;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p626l.p632u.C15020l;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\b\u0010\u001a\u001a\u00020\u0017H\u0007J\r\u0010\u001b\u001a\u00020\u001cH��¢\u0006\u0002\b\u001dJ+\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"H\u0001¢\u0006\u0002\b$J\u0012\u0010%\u001a\u00020\u00172\b\u0010&\u001a\u0004\u0018\u00010\u001cH\u0002J\u0015\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\u0004H\u0001¢\u0006\u0002\b)J\u0010\u0010*\u001a\u00020\u00172\u0006\u0010+\u001a\u00020,H\u0007J\u0018\u0010-\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\b\u0010.\u001a\u00020\u0017H\u0003J\u0012\u0010/\u001a\u00020\u00172\b\u0010&\u001a\u0004\u0018\u00010\u001cH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u00060"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/fcm/WCPushApi;", "", "()V", "FCM_TOPICS_REGEX", "", "PREF_FCM_TOKEN", "PREF_TOPICS", "PUSH_ACCOUNT", "PUSH_APP_INSTALL_TIME", "PUSH_APP_UPGRADE_TIME", "PUSH_APP_VERSION", "PUSH_DEVICE_TOKEN", "PUSH_FCM_TOKEN", "PUSH_IS_TESTING", "PUSH_LANGUAGE", "PUSH_MANUFACTURER", "PUSH_MODEL", "PUSH_OS_VERSION", "PUSH_REGION", "TOPICS_ALL", "TOPICS_REGION", "TOPICS_VERSION", "addTopics", "", Person.KEY_KEY, "topic", "checkTopics", "getTopicsFromPref", "Lcom/gogolook/whoscallsdk/core/fcm/data/TopicMap;", "getTopicsFromPref$whoscallSDK_core_whoscallDebug", "handleSubscribeTopic", IapProductRealmObject.STATE, "", "onCompleteListener", "Lcom/google/android/gms/tasks/OnCompleteListener;", "Ljava/lang/Void;", "handleSubscribeTopic$whoscallSDK_core_whoscallDebug", "handleTopics", "topicMap", "putFcmToken", "token", "putFcmToken$whoscallSDK_core_whoscallDebug", "registerToServer", "requestObject", "Lcom/gogolook/whoscallsdk/core/analytics/GGAStatusObject;", "removeTopics", "updateTopics", "updateTopicsToPref", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.e.a.l.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/l/a.class */
public final class C6373a {

    /* renamed from: a */
    public static final C6373a f15860a = new C6373a();

    /* renamed from: h.h.e.a.l.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/l/a$a.class */
    public static final class C6374a implements AbstractC9132c<Void> {

        /* renamed from: a */
        public final /* synthetic */ TopicObject f15861a;

        public C6374a(TopicObject topicObject) {
            this.f15861a = topicObject;
        }

        @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9132c
        /* renamed from: a */
        public void mo3743a(AbstractC9143h<Void> hVar) {
            boolean z;
            C15149k.m377b(hVar, "task");
            if (hVar.mo16009e()) {
                TopicMap a = C6373a.f15860a.m22924a();
                List<TopicObject> d = C15029u.m526d((Collection) a.getTopics());
                Iterator<TopicObject> it = d.iterator();
                while (true) {
                    z = false;
                    if (!it.hasNext()) {
                        break;
                    }
                    TopicObject next = it.next();
                    if (next.getTopic().equals(this.f15861a.getTopic())) {
                        if (this.f15861a.getState() == 1 && next.getState() == 1) {
                            next.setState(0);
                        } else {
                            z = false;
                            if (this.f15861a.getState() == -1) {
                                z = false;
                                if (next.getState() == -1) {
                                    d.remove(this.f15861a);
                                }
                            }
                        }
                        z = true;
                    }
                }
                if (z) {
                    a.setTopics(d);
                    C6373a.f15860a.m22916b(a);
                }
            }
        }
    }

    /* renamed from: a */
    public static final void m22922a(C6362e eVar) {
        synchronized (C6373a.class) {
            try {
                C15149k.m377b(eVar, "requestObject");
                eVar.m23000a("os_version", Build.VERSION.SDK_INT);
                eVar.m22998a("language", C6432e.m22600b());
                eVar.m22998a("region", C6344e.m23187f());
                eVar.m22998a("model", C6432e.m22592d());
                eVar.m22998a("manufacturer", C6432e.m22596c());
                eVar.m22998a("fcm_token", C6334a.m23211s().m23248a("pref_fcm_token", ""));
                C6438i.m22579c("[WCPushApi] registerToServer: requestBody=" + eVar.mo23001a());
                C6359b c = C6359b.m23011c();
                c.f15812d = true;
                c.f15809a = true;
                c.f15810b = false;
                C6357a.m23036a(eVar, c);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static final void m22920a(String str) {
        synchronized (C6373a.class) {
            try {
                C15149k.m377b(str, "token");
                C6334a.m23211s().m23228c("pref_fcm_token", str);
                m22922a(new C6362e());
                m22915c();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static final void m22919a(String str, int i, AbstractC9132c<Void> cVar) {
        synchronized (C6373a.class) {
            try {
                C15149k.m377b(str, "topic");
                C15149k.m377b(cVar, "onCompleteListener");
                if (i == 1) {
                    C6436g.m22588a(str, cVar);
                } else if (i == -1) {
                    C6436g.m22587b(str, cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static final void m22918a(String str, String str2) {
        synchronized (C6373a.class) {
            try {
                C15149k.m377b(str, Person.KEY_KEY);
                C15149k.m377b(str2, "topic");
                C6438i.m22578d("[WCPushApi] prepare add topic : " + str2 + " for key : " + str);
                if (!Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}").matcher(str2).matches()) {
                    C6438i.m22578d("[WCPushApi] topic name [" + str2 + "] does not match the allowed format");
                    return;
                }
                TopicMap a = f15860a.m22924a();
                List<TopicObject> d = C15029u.m526d((Collection) a.getTopics());
                ArrayList<TopicObject> arrayList = new ArrayList();
                for (Object obj : d) {
                    if (((TopicObject) obj).getKey().equals(str)) {
                        arrayList.add(obj);
                    }
                }
                boolean z = true;
                for (TopicObject topicObject : arrayList) {
                    if (topicObject.getTopic().equals(str2)) {
                        z = false;
                        if (topicObject.getState() == -1) {
                            topicObject.setState(1);
                            z = false;
                        }
                    } else if (topicObject.getState() == 0) {
                        topicObject.setState(-1);
                    } else if (topicObject.getState() == 1) {
                        d.remove(topicObject);
                    }
                }
                if (z) {
                    TopicObject topicObject2 = new TopicObject(null, null, 0, 7, null);
                    topicObject2.setKey(str);
                    topicObject2.setTopic(str2);
                    topicObject2.setState(1);
                    d.add(topicObject2);
                    a.setTopics(d);
                    f15860a.m22916b(a);
                }
                f15860a.m22923a(a);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static final void m22917b() {
        synchronized (C6373a.class) {
            try {
                f15860a.m22923a(f15860a.m22924a());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static final void m22915c() {
        C6438i.m22578d("[WCPushApi] prepare updateTopics");
        TopicMap a = f15860a.m22924a();
        List<TopicObject> topics = a.getTopics();
        ArrayList<TopicObject> arrayList = new ArrayList();
        for (Object obj : topics) {
            TopicObject topicObject = (TopicObject) obj;
            boolean z = true;
            if (topicObject.getState() != 0) {
                z = topicObject.getState() == 1;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        for (TopicObject topicObject2 : arrayList) {
            topicObject2.setState(1);
        }
        a.setTopics(C15029u.m539b((Iterable) arrayList));
        f15860a.m22916b(a);
        f15860a.m22923a(a);
    }

    /* renamed from: a */
    public final TopicMap m22924a() {
        TopicMap topicMap;
        synchronized (this) {
            try {
                Object a = new Gson().m30982a(C6334a.m23211s().m23248a("pref_topics", ""), (Class<Object>) TopicMap.class);
                C15149k.m383a(a, "gson.fromJson(WCApiManag…\"), TopicMap::class.java)");
                topicMap = (TopicMap) a;
            } catch (Exception e) {
                topicMap = new TopicMap(null, 1, null);
            }
            if (!topicMap.getTopics().isEmpty()) {
                Pattern compile = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");
                List<TopicObject> topics = topicMap.getTopics();
                ArrayList arrayList = new ArrayList();
                for (Object obj : topics) {
                    if (compile.matcher(((TopicObject) obj).getTopic()).matches()) {
                        arrayList.add(obj);
                    }
                }
                topicMap.setTopics(arrayList);
            } else {
                TopicObject topicObject = new TopicObject(null, null, 0, 7, null);
                topicObject.setKey("topic_all");
                topicObject.setTopic("topic_all");
                topicObject.setState(1);
                topicMap.setTopics(C15020l.m567a(topicObject));
            }
            if (C6344e.m23196a()) {
                String a2 = new Gson().m30988a(topicMap);
                C6438i.m22578d("[WCPushApi] getTopicsFromPref topics : " + a2);
            }
        }
        return topicMap;
    }

    /* renamed from: a */
    public final void m22923a(TopicMap topicMap) {
        synchronized (this) {
            if (topicMap != null) {
                List<TopicObject> topics = topicMap.getTopics();
                ArrayList<TopicObject> arrayList = new ArrayList();
                for (Object obj : topics) {
                    if (((TopicObject) obj).getState() != 0) {
                        arrayList.add(obj);
                    }
                }
                for (TopicObject topicObject : arrayList) {
                    m22919a(topicObject.getTopic(), topicObject.getState(), new C6374a(topicObject));
                }
            }
        }
    }

    /* renamed from: b */
    public final void m22916b(TopicMap topicMap) {
        synchronized (this) {
            if (topicMap != null) {
                try {
                    String a = new Gson().m30988a(topicMap);
                    C6438i.m22578d("[WCPushApi] update topics : " + a);
                    C6334a.m23211s().m23228c("pref_topics", a);
                } catch (Exception e) {
                }
            }
        }
    }
}
