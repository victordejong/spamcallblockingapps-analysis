package com.truecaller.spamcategories.p178ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import com.truecaller.spamcategories.C4502R;
import com.truecaller.spamcategories.SpamCategoryRequest;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p288a0.p289a.AbstractC7369c;
import p193e.p194a.p288a0.p289a.C7358a;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u0001:\u0001\u0011B\u0007¢\u0006\u0004\b\u0010\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\bR\u001d\u0010\u000f\u001a\u00020\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/truecaller/spamcategories/ui/SpamCategoriesActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "()V", "onPause", "Landroid/graphics/drawable/ColorDrawable;", "d", "Ls1/g;", "getWindowBackgroundColor", "()Landroid/graphics/drawable/ColorDrawable;", "windowBackgroundColor", "<init>", "a", "spamcategories_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.spamcategories.ui.SpamCategoriesActivity */
/* loaded from: classes12-dex2jar.jar:com/truecaller/spamcategories/ui/SpamCategoriesActivity.class */
public final class SpamCategoriesActivity extends AbstractC7369c {

    /* renamed from: d */
    public final g f14934d = C25225a.m3978P1(new C4512b());

    /* renamed from: com.truecaller.spamcategories.ui.SpamCategoriesActivity$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/spamcategories/ui/SpamCategoriesActivity$a.class */
    public static final class C4511a {
        /* renamed from: a */
        public static final Intent m34732a(Context context, SpamCategoryRequest spamCategoryRequest) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(spamCategoryRequest, "spamCategoryRequest");
            Intent putExtra = new Intent(context, SpamCategoriesActivity.class).putExtra("request", spamCategoryRequest);
            l.d(putExtra, "Intent(context, SpamCate…EST, spamCategoryRequest)");
            return putExtra;
        }
    }

    /* renamed from: com.truecaller.spamcategories.ui.SpamCategoriesActivity$b */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/spamcategories/ui/SpamCategoriesActivity$b.class */
    public static final class C4512b extends m implements a<ColorDrawable> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4512b() {
            super(0);
            SpamCategoriesActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [android.content.Context, com.truecaller.spamcategories.ui.SpamCategoriesActivity] */
        public Object invoke() {
            ?? r0 = SpamCategoriesActivity.this;
            int i = C4502R.color.color_bottom_sheet_background;
            Object obj = C26467a.f74235a;
            return new ColorDrawable(C26467a.C26471d.m1787a(r0, i));
        }
    }

    /* renamed from: pa */
    public static final Intent m34733pa(Context context, SpamCategoryRequest spamCategoryRequest) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(spamCategoryRequest, "spamCategoryRequest");
        Intent putExtra = new Intent(context, SpamCategoriesActivity.class).putExtra("request", spamCategoryRequest);
        l.d(putExtra, "Intent(context, SpamCate…EST, spamCategoryRequest)");
        return putExtra;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        SpamCategoriesActivity.super.onCreate(bundle);
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        C17422k.m16065n(theme, false, 1);
        getWindow().setBackgroundDrawable((ColorDrawable) this.f14934d.getValue());
        Parcelable parcelableExtra = getIntent().getParcelableExtra("request");
        if (parcelableExtra != null) {
            SpamCategoryRequest spamCategoryRequest = (SpamCategoryRequest) parcelableExtra;
            l.e(spamCategoryRequest, "spamCategoryRequest");
            C7358a c7358a = new C7358a();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("request", spamCategoryRequest);
            c7358a.setArguments(bundle2);
            c7358a.show(getSupportFragmentManager(), (String) null);
            return;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onPause() {
        SpamCategoriesActivity.super.onPause();
        overridePendingTransition(0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStart() {
        SpamCategoriesActivity.super.onStart();
        overridePendingTransition(0, 0);
    }
}
