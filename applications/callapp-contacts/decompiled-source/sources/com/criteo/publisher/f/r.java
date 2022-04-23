package com.criteo.publisher.f;

import android.util.AtomicFile;
import com.criteo.publisher.f.w;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.m;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import kotlin.jvm.functions.Function0;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/r.class */
final class r extends w {

    /* renamed from: b  reason: collision with root package name */
    private final t f17317b;

    /* renamed from: a  reason: collision with root package name */
    private final g f17316a = h.a(getClass());

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentMap<File, h> f17318c = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/r$a.class */
    public final class a implements Function0<h> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f17319a;

        a(File file) {
            this.f17319a = file;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ h invoke() {
            t tVar = r.this.f17317b;
            File file = this.f17319a;
            String name = file.getName();
            return new h(name.substring(0, name.length() - 4), new AtomicFile(file), tVar.f17321a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(t tVar) {
        this.f17317b = tVar;
    }

    private h a(File file) {
        return (h) m.a(this.f17318c, file, new a(file));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.w
    public final Collection<s> a() {
        Collection<File> a2 = this.f17317b.a();
        ArrayList arrayList = new ArrayList(a2.size());
        for (File file : a2) {
            try {
                arrayList.add(a(file).a());
            } catch (IOException e) {
                this.f17316a.a("Error while reading metric", e);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.w
    public final void a(String str, u uVar) {
        try {
            a(this.f17317b.a(str)).a(uVar);
        } catch (IOException e) {
            this.f17316a.a("Error while moving metric", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.w
    public final void a(String str, w.a aVar) {
        try {
            a(this.f17317b.a(str)).a(aVar);
        } catch (IOException e) {
            this.f17316a.a("Error while updating metric", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.w
    public final boolean a(String str) {
        return this.f17317b.a().contains(this.f17317b.a(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.w
    public final int b() {
        int i = 0;
        for (File file : this.f17317b.a()) {
            i = (int) (i + file.length());
        }
        return i;
    }
}
