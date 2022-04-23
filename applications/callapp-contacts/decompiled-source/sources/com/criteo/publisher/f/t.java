package com.criteo.publisher.f;

import android.content.Context;
import com.criteo.publisher.m0.g;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    final v f17321a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f17322b;

    /* renamed from: c  reason: collision with root package name */
    private final g f17323c;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/t$a.class */
    final class a implements FilenameFilter {
        a(t tVar) {
        }

        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return str.endsWith(".csm");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Context context, g gVar, v vVar) {
        this.f17322b = context;
        this.f17323c = gVar;
        this.f17321a = vVar;
    }

    private File b() {
        return this.f17322b.getDir(g.e(), 0);
    }

    private static String b(String str) {
        return str + ".csm";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final File a(String str) {
        return new File(b(), b(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Collection<File> a() {
        File[] listFiles = b().listFiles(new a(this));
        return listFiles == null ? Collections.emptyList() : Arrays.asList(listFiles);
    }
}
