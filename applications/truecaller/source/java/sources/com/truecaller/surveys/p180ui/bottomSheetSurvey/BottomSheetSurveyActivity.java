package com.truecaller.surveys.p180ui.bottomSheetSurvey;

import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Window;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p918j.p919a.p920a.AbstractC15381g;
import p193e.p194a.p918j.p919a.p920a.C15373c;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "()V", "onPause", "<init>", "surveys_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.surveys.ui.bottomSheetSurvey.BottomSheetSurveyActivity */
/* loaded from: classes14-dex2jar.jar:com/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyActivity.class */
public final class BottomSheetSurveyActivity extends AbstractC15381g {
    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        BottomSheetSurveyActivity.super.onCreate(bundle);
        Resources.Theme theme = getTheme();
        l.d(theme, "theme");
        C17422k.m16065n(theme, false, 1);
        Window window = getWindow();
        Object obj = C26467a.f74235a;
        window.setBackgroundDrawable(new ColorDrawable(C26467a.C26471d.m1787a(this, 17170445)));
        new C15373c().show(getSupportFragmentManager(), C15373c.class.getCanonicalName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onPause() {
        BottomSheetSurveyActivity.super.onPause();
        overridePendingTransition(0, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStart() {
        BottomSheetSurveyActivity.super.onStart();
        overridePendingTransition(0, 0);
    }
}
