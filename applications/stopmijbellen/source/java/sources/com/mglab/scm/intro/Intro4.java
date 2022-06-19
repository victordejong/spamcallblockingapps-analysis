package com.mglab.scm.intro;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import ba.AbstractC0762k;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import p007a6.C0028d;
import p149k8.C3400p;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/intro/Intro4.class */
public class Intro4 extends Fragment {

    /* renamed from: a */
    public Unbinder f7297a;
    @BindView
    public ImageView contacts;
    @BindView
    public ImageView copyCallLogIV;
    @BindView
    public ImageView copyContactsIV;
    @BindView
    public TextView dbDownloadTextView;
    @BindView
    public TextView descriptionTV;
    @BindView
    public ImageView downloadDBIV;
    @BindView
    public ProgressBar pbCallLog;
    @BindView
    public ProgressBar pbContacts;
    @BindView
    public ProgressBar pbDb;
    @BindView
    public ImageView phone;
    @BindView
    public TextView waitTV;

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ee, code lost:
        if (r0 >= 3) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005a, code lost:
        if ((r0.checkCallingOrSelfPermission("android.permission.READ_CALL_LOG") == 0) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005d, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a0, code lost:
        if ((r0.checkCallingOrSelfPermission("android.permission.READ_CALL_LOG") == 0) != false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01df  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3967a() {
        /*
            Method dump skipped, instructions count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mglab.scm.intro.Intro4.m3967a():void");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131493075, viewGroup, false);
        this.f7297a = ButterKnife.m7385a(this, inflate);
        if (!C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7400k(this);
        }
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7398m(this);
        }
        super.onDestroyView();
        this.f7297a.mo3937a();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(C3400p c3400p) {
        Objects.requireNonNull(c3400p);
        m3967a();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m3967a();
    }

    @OnClick
    @SuppressLint({"NonConstantResourceId"})
    public void onRetryClick() {
        C0028d.m8914f(4, C0748b.m7409b());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        m3967a();
    }
}
