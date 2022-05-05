package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.criteo.publisher.p027t.AbstractC2135r;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
@RequiresApi(api = 17)
/* renamed from: com.criteo.publisher.t.l */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/l.class */
public class C2126l extends AbstractC2135r {

    /* renamed from: c */
    public static final String f2419c = "l";
    @NonNull

    /* renamed from: a */
    public final C2129n f2420a;
    @NonNull

    /* renamed from: b */
    public final ConcurrentMap<File, C2148y> f2421b = new ConcurrentHashMap();

    public C2126l(@NonNull C2129n nVar) {
        this.f2420a = nVar;
    }

    @NonNull
    /* renamed from: a */
    private C2148y m35678a(@NonNull File file) {
        C2148y yVar = this.f2421b.get(file);
        C2148y yVar2 = yVar;
        if (yVar == null) {
            yVar2 = this.f2420a.m35655a(file);
            C2148y putIfAbsent = this.f2421b.putIfAbsent(file, yVar2);
            if (putIfAbsent != null) {
                yVar2 = putIfAbsent;
            }
        }
        return yVar2;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2135r
    @NonNull
    /* renamed from: a */
    public Collection<AbstractC2127m> mo35643a() {
        Collection<File> b = this.f2420a.m35653b();
        ArrayList arrayList = new ArrayList(b.size());
        for (File file : b) {
            try {
                arrayList.add(m35678a(file).m35607b());
            } catch (IOException e) {
            }
        }
        return arrayList;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2135r
    /* renamed from: a */
    public void mo35641a(@NonNull String str, @NonNull AbstractC2131o oVar) {
        try {
            m35678a(this.f2420a.m35654a(str)).m35609a(oVar);
        } catch (IOException e) {
        }
    }

    @Override // com.criteo.publisher.p027t.AbstractC2135r
    /* renamed from: a */
    public void mo35640a(@NonNull String str, @NonNull AbstractC2135r.AbstractC2136a aVar) {
        try {
            m35678a(this.f2420a.m35654a(str)).m35608a(aVar);
        } catch (IOException e) {
        }
    }

    @Override // com.criteo.publisher.p027t.AbstractC2135r
    /* renamed from: a */
    public boolean mo35642a(@NonNull String str) {
        return this.f2420a.m35653b().contains(this.f2420a.m35654a(str));
    }

    @Override // com.criteo.publisher.p027t.AbstractC2135r
    /* renamed from: b */
    public int mo35639b() {
        int i = 0;
        for (File file : this.f2420a.m35653b()) {
            i = (int) (i + file.length());
        }
        return i;
    }
}
