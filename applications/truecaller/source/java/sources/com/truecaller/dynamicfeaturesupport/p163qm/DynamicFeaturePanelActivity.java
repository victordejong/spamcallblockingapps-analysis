package com.truecaller.dynamicfeaturesupport.p163qm;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.dynamicfeaturesupport.C3885R;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1188r3.p1190k.AbstractC19925d;
import p193e.p194a.p1188r3.p1190k.AbstractC19926e;
import p193e.p194a.p1188r3.p1190k.AbstractC19930i;
import p193e.p194a.p1188r3.p1190k.C19920a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b4\u0010\u0019J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u001d\u0010\f\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u000e\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010+\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b*\u0010\u001cR\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b-\u0010.R\u0016\u00101\u001a\u00020&8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b0\u0010(R\u0016\u00103\u001a\u00020,8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b2\u0010.¨\u00065"}, d2 = {"Lcom/truecaller/dynamicfeaturesupport/qm/DynamicFeaturePanelActivity;", "Ln3/b/a/h;", "Le/a/r3/k/e;", "Le/a/r3/k/a$a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;", "list", "x3", "(Ljava/util/List;)V", "F7", "", "message", "m", "(Ljava/lang/String;)V", "dynamicFeature", "", "installed", "aa", "(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;Z)V", "onDestroy", "()V", "Le/a/r3/k/a;", "j", "Le/a/r3/k/a;", "installedModuleAdapter", "Le/a/r3/k/d;", "d", "Le/a/r3/k/d;", "getPresenter$dynamic_features_support_release", "()Le/a/r3/k/d;", "setPresenter$dynamic_features_support_release", "(Le/a/r3/k/d;)V", "presenter", "Landroidx/recyclerview/widget/RecyclerView;", "e", "Landroidx/recyclerview/widget/RecyclerView;", "availableModuleRcv", "g", "availableModuleAdapter", "Landroid/widget/TextView;", "i", "Landroid/widget/TextView;", "installedModuleHint", "h", "installedModuleRcv", "f", "availableModuleHint", "<init>", "dynamic-features-support_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.dynamicfeaturesupport.qm.DynamicFeaturePanelActivity */
/* loaded from: classes8-dex2jar.jar:com/truecaller/dynamicfeaturesupport/qm/DynamicFeaturePanelActivity.class */
public final class DynamicFeaturePanelActivity extends AbstractC19930i implements AbstractC19926e, C19920a.AbstractC19921a {
    @Inject

    /* renamed from: d */
    public AbstractC19925d f11842d;

    /* renamed from: e */
    public RecyclerView f11843e;

    /* renamed from: f */
    public TextView f11844f;

    /* renamed from: g */
    public C19920a f11845g;

    /* renamed from: h */
    public RecyclerView f11846h;

    /* renamed from: i */
    public TextView f11847i;

    /* renamed from: j */
    public C19920a f11848j;

    @Override // p193e.p194a.p1188r3.p1190k.AbstractC19926e
    /* renamed from: F7 */
    public void mo11810F7(List<? extends DynamicFeature> list) {
        l.e(list, "list");
        if (list.isEmpty()) {
            TextView textView = this.f11847i;
            if (textView == null) {
                l.l("installedModuleHint");
                throw null;
            }
            textView.setVisibility(0);
            RecyclerView recyclerView = this.f11846h;
            if (recyclerView != null) {
                recyclerView.setVisibility(8);
                return;
            } else {
                l.l("installedModuleRcv");
                throw null;
            }
        }
        TextView textView2 = this.f11847i;
        if (textView2 == null) {
            l.l("installedModuleHint");
            throw null;
        }
        textView2.setVisibility(8);
        RecyclerView recyclerView2 = this.f11846h;
        if (recyclerView2 == null) {
            l.l("installedModuleRcv");
            throw null;
        }
        recyclerView2.setVisibility(0);
        C19920a c19920a = this.f11848j;
        if (c19920a == null) {
            l.l("installedModuleAdapter");
            throw null;
        }
        l.e(list, "newItems");
        List<DynamicFeature> list2 = c19920a.f56364a;
        list2.clear();
        list2.addAll(list);
        c19920a.notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1188r3.p1190k.C19920a.AbstractC19921a
    /* renamed from: aa */
    public void mo11812aa(DynamicFeature dynamicFeature, boolean z) {
        l.e(dynamicFeature, "dynamicFeature");
        AbstractC19925d abstractC19925d = this.f11842d;
        if (abstractC19925d != null) {
            abstractC19925d.mo11803v8(this, dynamicFeature, z);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1188r3.p1190k.AbstractC19926e
    /* renamed from: m */
    public void mo11809m(String str) {
        l.e(str, "message");
        Toast.makeText((Context) this, (CharSequence) str, 1).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        DynamicFeaturePanelActivity.super.onCreate(bundle);
        setContentView(C3885R.layout.activity_dynamic_feature_panel);
        View findViewById = findViewById(C3885R.C3887id.availableModuleHint);
        l.d(findViewById, "findViewById(R.id.availableModuleHint)");
        this.f11844f = (TextView) findViewById;
        View findViewById2 = findViewById(C3885R.C3887id.availableModuleRcv);
        l.d(findViewById2, "findViewById(R.id.availableModuleRcv)");
        RecyclerView recyclerView = (RecyclerView) findViewById2;
        this.f11843e = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        C19920a c19920a = new C19920a(this, false);
        this.f11845g = c19920a;
        RecyclerView recyclerView2 = this.f11843e;
        if (recyclerView2 == null) {
            l.l("availableModuleRcv");
            throw null;
        }
        recyclerView2.setAdapter(c19920a);
        View findViewById3 = findViewById(C3885R.C3887id.installedModuleHint);
        l.d(findViewById3, "findViewById(R.id.installedModuleHint)");
        this.f11847i = (TextView) findViewById3;
        View findViewById4 = findViewById(C3885R.C3887id.installedModuleRcv);
        l.d(findViewById4, "findViewById(R.id.installedModuleRcv)");
        RecyclerView recyclerView3 = (RecyclerView) findViewById4;
        this.f11846h = recyclerView3;
        recyclerView3.setLayoutManager(new LinearLayoutManager(this));
        C19920a c19920a2 = new C19920a(this, true);
        this.f11848j = c19920a2;
        RecyclerView recyclerView4 = this.f11846h;
        if (recyclerView4 == null) {
            l.l("installedModuleRcv");
            throw null;
        }
        recyclerView4.setAdapter(c19920a2);
        AbstractC19925d abstractC19925d = this.f11842d;
        if (abstractC19925d != null) {
            abstractC19925d.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onDestroy() {
        DynamicFeaturePanelActivity.super.onDestroy();
        AbstractC19925d abstractC19925d = this.f11842d;
        if (abstractC19925d != null) {
            abstractC19925d.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1188r3.p1190k.AbstractC19926e
    /* renamed from: x3 */
    public void mo11808x3(List<? extends DynamicFeature> list) {
        l.e(list, "list");
        if (list.isEmpty()) {
            TextView textView = this.f11844f;
            if (textView == null) {
                l.l("availableModuleHint");
                throw null;
            }
            textView.setVisibility(0);
            RecyclerView recyclerView = this.f11843e;
            if (recyclerView != null) {
                recyclerView.setVisibility(8);
                return;
            } else {
                l.l("availableModuleRcv");
                throw null;
            }
        }
        TextView textView2 = this.f11844f;
        if (textView2 == null) {
            l.l("availableModuleHint");
            throw null;
        }
        textView2.setVisibility(8);
        RecyclerView recyclerView2 = this.f11843e;
        if (recyclerView2 == null) {
            l.l("availableModuleRcv");
            throw null;
        }
        recyclerView2.setVisibility(0);
        C19920a c19920a = this.f11845g;
        if (c19920a == null) {
            l.l("availableModuleAdapter");
            throw null;
        }
        l.e(list, "newItems");
        List<DynamicFeature> list2 = c19920a.f56364a;
        list2.clear();
        list2.addAll(list);
        c19920a.notifyDataSetChanged();
    }
}
