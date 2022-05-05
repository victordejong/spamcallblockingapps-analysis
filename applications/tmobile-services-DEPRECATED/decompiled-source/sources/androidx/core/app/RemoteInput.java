package androidx.core.app;

import android.app.RemoteInput;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteInput.class */
public final class RemoteInput {

    /* renamed from: a */
    private final String f2971a;

    /* renamed from: b */
    private final CharSequence f2972b;

    /* renamed from: c */
    private final CharSequence[] f2973c;

    /* renamed from: d */
    private final boolean f2974d;

    /* renamed from: e */
    private final int f2975e;

    /* renamed from: f */
    private final Bundle f2976f;

    /* renamed from: g */
    private final Set<String> f2977g;

    /* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteInput$Builder.class */
    public static final class Builder {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteInput$EditChoicesBeforeSending.class */
    public @interface EditChoicesBeforeSending {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteInput$Source.class */
    public @interface Source {
    }

    @RequiresApi
    /* renamed from: a */
    static android.app.RemoteInput m19704a(RemoteInput remoteInput) {
        RemoteInput.Builder addExtras = new RemoteInput.Builder(remoteInput.m19696i()).setLabel(remoteInput.m19697h()).setChoices(remoteInput.m19700e()).setAllowFreeFormInput(remoteInput.m19702c()).addExtras(remoteInput.m19698g());
        if (Build.VERSION.SDK_INT >= 29) {
            addExtras.setEditChoicesBeforeSending(remoteInput.m19699f());
        }
        return addExtras.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi
    /* renamed from: b */
    public static android.app.RemoteInput[] m19703b(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
        for (int i = 0; i < remoteInputArr.length; i++) {
            remoteInputArr2[i] = m19704a(remoteInputArr[i]);
        }
        return remoteInputArr2;
    }

    /* renamed from: c */
    public boolean m19702c() {
        return this.f2974d;
    }

    /* renamed from: d */
    public Set<String> m19701d() {
        return this.f2977g;
    }

    /* renamed from: e */
    public CharSequence[] m19700e() {
        return this.f2973c;
    }

    /* renamed from: f */
    public int m19699f() {
        return this.f2975e;
    }

    /* renamed from: g */
    public Bundle m19698g() {
        return this.f2976f;
    }

    /* renamed from: h */
    public CharSequence m19697h() {
        return this.f2972b;
    }

    /* renamed from: i */
    public String m19696i() {
        return this.f2971a;
    }

    /* renamed from: j */
    public boolean m19695j() {
        return !m19702c() && (m19700e() == null || m19700e().length == 0) && m19701d() != null && !m19701d().isEmpty();
    }
}
