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

    /* renamed from: c */
    private FragState f28884c;

    /* renamed from: com.callapp.contacts.widget.SearchBarFragment$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SearchBarFragment$2.class */
    public static /* synthetic */ class C80812 {

        /* renamed from: a */
        static final /* synthetic */ int[] f28886a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[FragState.values().length];
            f28886a = iArr;
            try {
                iArr[FragState.SEARCH_CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f28886a[FragState.SEARCH_OPENED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SearchBarFragment$FragState.class */
    public enum FragState {
        SEARCH_CLOSED,
        SEARCH_OPENED
    }

    /* renamed from: a */
    public void m26637a(FragState fragState, boolean z) {
        this.f28884c = fragState;
        if (isLayoutReady()) {
            if (C80812.f28886a[fragState.ordinal()] == 2) {
                m26620a(StringUtils.m26059a((CharSequence) getSearchText()));
                m26553a(TopBarFragment.TopBarIconStates.BACK, z);
                return;
            }
            m26616c();
            m26620a(true);
            m26553a(TopBarFragment.TopBarIconStates.TOGGLE_MENU, z);
        }
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment
    /* renamed from: a */
    public final void mo26622a() {
        super.mo26622a();
        m26637a(FragState.SEARCH_OPENED, true);
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
                if (C80812.f28886a[SearchBarFragment.this.f28884c.ordinal()] != 2) {
                    AnalyticsManager.get().m28450a(Constants.SEARCH_BAR_FRAGMENMT, "Toggle Slide Menu");
                    return;
                }
                AnalyticsManager.get().m28450a(Constants.SEARCH_BAR_FRAGMENMT, "Closing Search from arrow button");
                SearchBarFragment.this.m26637a(FragState.SEARCH_CLOSED, true);
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
        m26637a(FragState.SEARCH_CLOSED, false);
    }
}
