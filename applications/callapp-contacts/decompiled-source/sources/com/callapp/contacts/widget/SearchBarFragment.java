package com.callapp.contacts.widget;

import android.os.Bundle;
import android.view.View;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.TopBarFragment;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SearchBarFragment.class */
public class SearchBarFragment extends SimpleSearchBarFragment {

    /* renamed from: c  reason: collision with root package name */
    private FragState f16593c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.widget.SearchBarFragment$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SearchBarFragment$2.class */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16595a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[FragState.values().length];
            f16595a = iArr;
            try {
                iArr[FragState.SEARCH_CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f16595a[FragState.SEARCH_OPENED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SearchBarFragment$FragState.class */
    public enum FragState {
        SEARCH_CLOSED,
        SEARCH_OPENED
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FragState fragState, boolean z) {
        this.f16593c = fragState;
        if (!isLayoutReady()) {
            return;
        }
        if (AnonymousClass2.f16595a[fragState.ordinal()] != 2) {
            c();
            a(true);
            a(TopBarFragment.TopBarIconStates.TOGGLE_MENU, z);
            return;
        }
        a(StringUtils.a((CharSequence) getSearchText()));
        a(TopBarFragment.TopBarIconStates.BACK, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment
    public final void a() {
        super.a();
        a(FragState.SEARCH_OPENED, true);
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment, com.callapp.contacts.widget.TopBarFragment
    protected int getBgColor() {
        return 2131099943;
    }

    @Override // com.callapp.contacts.widget.TopBarFragment
    protected View.OnClickListener getNewStateIconClickListener() {
        return new View.OnClickListener() { // from class: com.callapp.contacts.widget.SearchBarFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (AnonymousClass2.f16595a[SearchBarFragment.this.f16593c.ordinal()] != 2) {
                    AnalyticsManager.get().a(Constants.SEARCH_BAR_FRAGMENMT, "Toggle Slide Menu");
                    return;
                }
                AnalyticsManager.get().a(Constants.SEARCH_BAR_FRAGMENMT, "Closing Search from arrow button");
                SearchBarFragment.this.a(FragState.SEARCH_CLOSED, true);
                SearchBarFragment.this.setSearchText("");
            }
        };
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment, com.callapp.contacts.widget.TopBarFragment
    protected int getRootViewResId() {
        return 2131558694;
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment
    protected int getSearchBoxHintColor() {
        return ThemeUtils.getColor(2131099919);
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment
    protected int getSearchBoxTextColor() {
        return ThemeUtils.getColor(2131099819);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(FragState.SEARCH_CLOSED, false);
    }
}
