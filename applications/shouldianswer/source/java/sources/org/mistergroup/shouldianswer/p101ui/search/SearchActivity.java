package org.mistergroup.shouldianswer.p101ui.search;

import android.os.Bundle;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.p097a.AbstractC2184cs;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
/* renamed from: org.mistergroup.shouldianswer.ui.search.SearchActivity */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchActivity.class */
public final class SearchActivity extends ActivityC2499a {

    /* renamed from: l */
    public static final C2833a f8411l = new C2833a(null);

    /* renamed from: m */
    private AbstractC2184cs f8412m;

    /* renamed from: org.mistergroup.shouldianswer.ui.search.SearchActivity$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/search/SearchActivity$a.class */
    public static final class C2833a {
        private C2833a() {
        }

        public /* synthetic */ C2833a(C1691e c1691e) {
            this();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(2130771998, 2130771997);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.ActivityC2499a, androidx.appcompat.app.ActivityC0092e, androidx.fragment.app.ActivityC0711c, androidx.activity.ActivityC0046b, androidx.core.app.ActivityC0438d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(2130771996, 2130771998);
        ViewDataBinding m5845a = C0651f.m5845a(this, 2131558499);
        C1694h.m3122a((Object) m5845a, "DataBindingUtil.setConte…R.layout.search_activity)");
        this.f8412m = (AbstractC2184cs) m5845a;
    }
}
