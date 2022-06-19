package com.criteo.publisher.p246f;

import android.util.AtomicFile;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.p246f.AbstractC8326w;
import com.criteo.publisher.p256m0.C8442m;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.jvm.functions.Function0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.criteo.publisher.f.r */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/r.class */
public final class C8318r extends AbstractC8326w {

    /* renamed from: b */
    private final C8322t f29961b;

    /* renamed from: a */
    private final C8402g f29960a = C8404h.m25741a(getClass());

    /* renamed from: c */
    private final ConcurrentMap<File, C8298h> f29962c = new ConcurrentHashMap();

    /* renamed from: com.criteo.publisher.f.r$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/r$a.class */
    public final class C8319a implements Function0<C8298h> {

        /* renamed from: a */
        final /* synthetic */ File f29963a;

        C8319a(File file) {
            C8318r.this = r4;
            this.f29963a = file;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C8298h invoke() {
            C8322t c8322t = C8318r.this.f29961b;
            File file = this.f29963a;
            String name = file.getName();
            return new C8298h(name.substring(0, name.length() - 4), new AtomicFile(file), c8322t.f29965a);
        }
    }

    public C8318r(C8322t c8322t) {
        this.f29961b = c8322t;
    }

    /* renamed from: a */
    private C8298h m25885a(File file) {
        return (C8298h) C8442m.m25678a(this.f29962c, file, new C8319a(file));
    }

    @Override // com.criteo.publisher.p246f.AbstractC8326w
    /* renamed from: a */
    public final Collection<AbstractC8320s> mo25854a() {
        Collection<File> m25859a = this.f29961b.m25859a();
        ArrayList arrayList = new ArrayList(m25859a.size());
        for (File file : m25859a) {
            try {
                arrayList.add(m25885a(file).m25913a());
            } catch (IOException e) {
                this.f29960a.m25743a("Error while reading metric", e);
            }
        }
        return arrayList;
    }

    @Override // com.criteo.publisher.p246f.AbstractC8326w
    /* renamed from: a */
    public final void mo25852a(String str, AbstractC8324u abstractC8324u) {
        try {
            m25885a(this.f29961b.m25858a(str)).m25911a(abstractC8324u);
        } catch (IOException e) {
            this.f29960a.m25743a("Error while moving metric", e);
        }
    }

    @Override // com.criteo.publisher.p246f.AbstractC8326w
    /* renamed from: a */
    public final void mo25851a(String str, AbstractC8326w.AbstractC8327a abstractC8327a) {
        try {
            m25885a(this.f29961b.m25858a(str)).m25910a(abstractC8327a);
        } catch (IOException e) {
            this.f29960a.m25743a("Error while updating metric", e);
        }
    }

    @Override // com.criteo.publisher.p246f.AbstractC8326w
    /* renamed from: a */
    public final boolean mo25853a(String str) {
        return this.f29961b.m25859a().contains(this.f29961b.m25858a(str));
    }

    @Override // com.criteo.publisher.p246f.AbstractC8326w
    /* renamed from: b */
    public final int mo25850b() {
        Iterator<File> it2 = this.f29961b.m25859a().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it2.hasNext()) {
                i = (int) (i2 + it2.next().length());
            } else {
                return i2;
            }
        }
    }
}
