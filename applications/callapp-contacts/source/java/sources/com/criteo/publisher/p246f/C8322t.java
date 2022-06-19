package com.criteo.publisher.p246f;

import android.content.Context;
import com.criteo.publisher.p256m0.C8433g;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
/* renamed from: com.criteo.publisher.f.t */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/t.class */
public final class C8322t {

    /* renamed from: a */
    final C8325v f29965a;

    /* renamed from: b */
    private final Context f29966b;

    /* renamed from: c */
    private final C8433g f29967c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.f.t$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/t$a.class */
    public final class C8323a implements FilenameFilter {
        C8323a(C8322t c8322t) {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return str.endsWith(".csm");
        }
    }

    public C8322t(Context context, C8433g c8433g, C8325v c8325v) {
        this.f29966b = context;
        this.f29967c = c8433g;
        this.f29965a = c8325v;
    }

    /* renamed from: b */
    private File m25857b() {
        return this.f29966b.getDir(C8433g.m25690e(), 0);
    }

    /* renamed from: b */
    private static String m25856b(String str) {
        return str + ".csm";
    }

    /* renamed from: a */
    public final File m25858a(String str) {
        return new File(m25857b(), m25856b(str));
    }

    /* renamed from: a */
    public final Collection<File> m25859a() {
        File[] listFiles = m25857b().listFiles(new C8323a(this));
        return listFiles == null ? Collections.emptyList() : Arrays.asList(listFiles);
    }
}
