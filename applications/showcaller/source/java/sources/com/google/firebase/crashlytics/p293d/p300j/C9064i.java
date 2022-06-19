package com.google.firebase.crashlytics.p293d.p300j;

import android.content.Context;
import com.google.firebase.crashlytics.p293d.C8898b;
import java.io.File;
/* renamed from: com.google.firebase.crashlytics.d.j.i */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/j/i.class */
public class C9064i implements AbstractC9063h {

    /* renamed from: a */
    private final Context f39225a;

    public C9064i(Context context) {
        this.f39225a = context;
    }

    @Override // com.google.firebase.crashlytics.p293d.p300j.AbstractC9063h
    /* renamed from: a */
    public String mo1992a() {
        return new File(this.f39225a.getFilesDir(), ".com.google.firebase.crashlytics").getPath();
    }

    @Override // com.google.firebase.crashlytics.p293d.p300j.AbstractC9063h
    /* renamed from: b */
    public File mo1991b() {
        return m1990c(new File(this.f39225a.getFilesDir(), ".com.google.firebase.crashlytics"));
    }

    /* renamed from: c */
    File m1990c(File file) {
        if (file == null) {
            C8898b.m2397f().m2392k("Null File");
            return null;
        } else if (file.exists() || file.mkdirs()) {
            return file;
        } else {
            C8898b.m2397f().m2392k("Couldn't create file");
            return null;
        }
    }
}
