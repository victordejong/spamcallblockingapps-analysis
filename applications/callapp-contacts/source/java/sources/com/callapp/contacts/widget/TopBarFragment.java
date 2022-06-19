package com.callapp.contacts.widget;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.balysv.materialmenu.C3521a;
import com.balysv.materialmenu.MaterialMenuView;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/TopBarFragment.class */
public class TopBarFragment extends Fragment {

    /* renamed from: a */
    private MaterialMenuView f29010a;

    /* renamed from: b */
    ViewGroup f29011b;

    /* renamed from: c */
    private TextView f29012c;

    /* renamed from: d */
    private TopBarEvents f29013d;

    /* renamed from: e */
    private boolean f29014e;

    /* renamed from: f */
    private String f29015f;

    /* renamed from: com.callapp.contacts.widget.TopBarFragment$2 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/TopBarFragment$2.class */
    public static /* synthetic */ class C81072 {

        /* renamed from: a */
        static final /* synthetic */ int[] f29017a;

        /* renamed from: b */
        static final /* synthetic */ int[] f29018b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[C3521a.EnumC3526b.values().length];
            f29018b = iArr;
            try {
                iArr[C3521a.EnumC3526b.ARROW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f29018b[C3521a.EnumC3526b.BURGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[TopBarIconStates.values().length];
            f29017a = iArr2;
            try {
                iArr2[TopBarIconStates.BACK.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f29017a[TopBarIconStates.TOGGLE_MENU.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/TopBarFragment$TopBarEvents.class */
    public interface TopBarEvents {
        /* renamed from: a */
        void mo26320a(TopBarIconStates topBarIconStates);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/TopBarFragment$TopBarIconStates.class */
    public enum TopBarIconStates {
        BACK,
        TOGGLE_MENU
    }

    /* renamed from: a */
    public final void m26553a(TopBarIconStates topBarIconStates, boolean z) {
        if (this.f29010a != null) {
            int i = C81072.f29017a[topBarIconStates.ordinal()];
            C3521a.EnumC3526b enumC3526b = i != 1 ? i != 2 ? C3521a.EnumC3526b.ARROW : C3521a.EnumC3526b.BURGER : C3521a.EnumC3526b.ARROW;
            if (!z) {
                this.f29010a.setIconState(enumC3526b);
                return;
            }
            MaterialMenuView materialMenuView = this.f29010a;
            materialMenuView.f13391b = enumC3526b;
            C3521a c3521a = materialMenuView.f13390a;
            synchronized (c3521a.f13394a) {
                if (c3521a.f13398e) {
                    c3521a.f13402i.end();
                }
                c3521a.f13400g = enumC3526b;
                c3521a.start();
            }
        }
    }

    protected int getBackgroundResource() {
        return 2131232172;
    }

    protected int getBgColor() {
        return 2131099784;
    }

    protected final TopBarIconStates getIconState() {
        int i;
        if (this.f29010a != null && (i = C81072.f29018b[this.f29010a.f13390a.f13399f.ordinal()]) != 1 && i == 2) {
            return TopBarIconStates.TOGGLE_MENU;
        }
        return TopBarIconStates.BACK;
    }

    protected View.OnClickListener getNewStateIconClickListener() {
        return new View.OnClickListener() { // from class: com.callapp.contacts.widget.TopBarFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopBarFragment.this.f29013d != null) {
                    TopBarIconStates iconState = TopBarFragment.this.getIconState();
                    TopBarFragment.this.f29013d.mo26320a(iconState);
                    AnalyticsManager.get().m28449a(Constants.TOP_BAR, "Icon clicked on top bar. icon:".concat(String.valueOf(iconState)), Constants.CLICK);
                }
            }
        };
    }

    protected int getRootViewResId() {
        return 2131559056;
    }

    public final boolean isLayoutReady() {
        return this.f29014e;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f29014e = false;
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(getRootViewResId(), viewGroup, false);
        this.f29011b = viewGroup2;
        ViewUtils.m27299b(viewGroup2, getBackgroundResource(), ThemeUtils.getColor(getBgColor()), ThemeUtils.getColor(getBgColor()), 0);
        ViewGroup viewGroup3 = this.f29011b;
        MaterialMenuView materialMenuView = (MaterialMenuView) viewGroup3.findViewById(2131363765);
        this.f29010a = materialMenuView;
        if (materialMenuView != null) {
            materialMenuView.setOnClickListener(getNewStateIconClickListener());
            this.f29010a.setIconState(C3521a.EnumC3526b.ARROW);
        }
        this.f29012c = (TextView) viewGroup3.findViewById(2131364417);
        return this.f29011b;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f29014e = false;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f29014e = true;
        String str = this.f29015f;
        if (str != null) {
            setTitleText(str);
            this.f29015f = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        MaterialMenuView materialMenuView = this.f29010a;
        if (materialMenuView != null) {
            materialMenuView.setVisible(true);
        }
    }

    public void setTitleText(String str) {
        if (!isLayoutReady()) {
            this.f29015f = str;
            return;
        }
        TextView textView = this.f29012c;
        if (textView == null) {
            return;
        }
        textView.setText(str);
    }
}
