package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import androidx.core.util.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentHostCallback.class */
public abstract class FragmentHostCallback<E> extends FragmentContainer {
    @Nullable

    /* renamed from: f */
    private final Activity f3759f;
    @NonNull

    /* renamed from: g */
    private final Context f3760g;
    @NonNull

    /* renamed from: h */
    private final Handler f3761h;

    /* renamed from: i */
    final FragmentManager f3762i;

    FragmentHostCallback(@Nullable Activity activity, @NonNull Context context, @NonNull Handler handler, int i) {
        this.f3762i = new FragmentManagerImpl();
        this.f3759f = activity;
        Preconditions.m19336e(context, "context == null");
        this.f3760g = context;
        Preconditions.m19336e(handler, "handler == null");
        this.f3761h = handler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentHostCallback(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    @Override // androidx.fragment.app.FragmentContainer
    @Nullable
    /* renamed from: b */
    public View mo18466b(int i) {
        return null;
    }

    @Override // androidx.fragment.app.FragmentContainer
    /* renamed from: c */
    public boolean mo18465c() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: d */
    public Activity m18464d() {
        return this.f3759f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: e */
    public Context m18463e() {
        return this.f3760g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: f */
    public Handler m18462f() {
        return this.f3761h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void mo18461g(@NonNull Fragment fragment) {
    }

    /* renamed from: h */
    public void mo18460h(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
    }

    @Nullable
    /* renamed from: i */
    public abstract E mo18459i();

    @NonNull
    /* renamed from: j */
    public LayoutInflater mo18458j() {
        return LayoutInflater.from(this.f3760g);
    }

    /* renamed from: k */
    public void mo18457k(@NonNull Fragment fragment, @NonNull String[] strArr, int i) {
    }

    /* renamed from: l */
    public boolean mo18456l(@NonNull Fragment fragment) {
        return true;
    }

    /* renamed from: m */
    public boolean mo18455m(@NonNull String str) {
        return false;
    }

    /* renamed from: n */
    public void mo18454n(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, @Nullable Bundle bundle) {
        if (i == -1) {
            this.f3760g.startActivity(intent);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: o */
    public void mo18453o(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, @Nullable Intent intent, int i2, int i3, int i4, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        if (i == -1) {
            ActivityCompat.m19853q(this.f3759f, intentSender, i, intent, i2, i3, i4, bundle);
            return;
        }
        throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
    }

    /* renamed from: p */
    public void mo18452p() {
    }
}
