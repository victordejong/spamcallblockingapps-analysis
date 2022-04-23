package com.scand.realmbrowser;

import android.content.Context;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/RealmBrowser.class */
public class RealmBrowser {

    /* renamed from: c */
    private static RealmBrowser f12525c = new RealmBrowser();

    /* renamed from: a */
    private Map<Class<? extends RealmObject>, RealmConfiguration> f12526a = new HashMap();

    /* renamed from: b */
    private List<RealmConfiguration> f12527b = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/RealmBrowser$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private Context f12528a;

        /* renamed from: b */
        private RealmBrowser f12529b = RealmBrowser.m7730f();

        public Builder(Context context) {
            this.f12528a = context;
        }

        /* renamed from: a */
        public Builder m7727a(Realm realm, Class<? extends RealmObject> cls) {
            m7725c(realm.m3164J(), cls);
            return this;
        }

        /* renamed from: b */
        public Builder m7726b(Realm realm, List<Class<? extends RealmObject>> list) {
            for (Class<? extends RealmObject> cls : list) {
                m7727a(realm, cls);
            }
            return this;
        }

        /* renamed from: c */
        public Builder m7725c(RealmConfiguration realmConfiguration, Class<? extends RealmObject> cls) {
            this.f12529b.f12526a.put(cls, realmConfiguration);
            this.f12529b.m7733c(realmConfiguration);
            return this;
        }

        /* renamed from: d */
        public void m7724d() {
            BrowserActivity.m7840j(this.f12528a);
        }
    }

    private RealmBrowser() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m7733c(RealmConfiguration realmConfiguration) {
        if (this.f12527b.isEmpty()) {
            this.f12527b.add(realmConfiguration);
            return;
        }
        for (RealmConfiguration realmConfiguration2 : this.f12527b) {
            if (realmConfiguration2.m2987l().equals(realmConfiguration.m2987l())) {
                return;
            }
        }
        this.f12527b.add(realmConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static RealmBrowser m7730f() {
        return f12525c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public List<RealmConfiguration> m7732d() {
        return this.f12527b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public List<Class<? extends RealmObject>> m7731e(RealmConfiguration realmConfiguration) {
        ArrayList arrayList = new ArrayList();
        for (Class<? extends RealmObject> cls : this.f12526a.keySet()) {
            if (this.f12526a.get(cls).m2987l().equals(realmConfiguration.m2987l())) {
                arrayList.add(cls);
            }
        }
        Collections.sort(arrayList, new Comparator<Class<? extends RealmObject>>(this) { // from class: com.scand.realmbrowser.RealmBrowser.1
            /* renamed from: a */
            public int compare(Class<? extends RealmObject> cls2, Class<? extends RealmObject> cls3) {
                return cls2.getSimpleName().compareTo(cls3.getSimpleName());
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public RealmConfiguration m7729g(Class<? extends RealmObject> cls) {
        return this.f12526a.get(cls);
    }
}
