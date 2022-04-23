package com.callapp.contacts.widget;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.balysv.materialmenu.MaterialMenuView;
import com.balysv.materialmenu.a;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/TopBarFragment.class */
public class TopBarFragment extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private MaterialMenuView f16670a;

    /* renamed from: b  reason: collision with root package name */
    ViewGroup f16671b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f16672c;

    /* renamed from: d  reason: collision with root package name */
    private TopBarEvents f16673d;
    private boolean e;
    private String f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.widget.TopBarFragment$2  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/TopBarFragment$2.class */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16675a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f16676b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.b.values().length];
            f16676b = iArr;
            try {
                iArr[a.b.ARROW.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f16676b[a.b.BURGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[TopBarIconStates.values().length];
            f16675a = iArr2;
            try {
                iArr2[TopBarIconStates.BACK.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f16675a[TopBarIconStates.TOGGLE_MENU.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/TopBarFragment$TopBarEvents.class */
    public interface TopBarEvents {
        void a(TopBarIconStates topBarIconStates);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/TopBarFragment$TopBarIconStates.class */
    public enum TopBarIconStates {
        BACK,
        TOGGLE_MENU
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(TopBarIconStates topBarIconStates, boolean z) {
        if (this.f16670a != null) {
            int i = AnonymousClass2.f16675a[topBarIconStates.ordinal()];
            a.b bVar = i != 1 ? i != 2 ? a.b.ARROW : a.b.BURGER : a.b.ARROW;
            if (z) {
                MaterialMenuView materialMenuView = this.f16670a;
                materialMenuView.f7175b = bVar;
                a aVar = materialMenuView.f7174a;
                synchronized (aVar.f7176a) {
                    if (aVar.e) {
                        aVar.i.end();
                    }
                    aVar.g = bVar;
                    aVar.start();
                }
                return;
            }
            this.f16670a.setIconState(bVar);
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
        if (!(this.f16670a == null || (i = AnonymousClass2.f16676b[this.f16670a.f7174a.f.ordinal()]) == 1 || i != 2)) {
            return TopBarIconStates.TOGGLE_MENU;
        }
        return TopBarIconStates.BACK;
    }

    protected View.OnClickListener getNewStateIconClickListener() {
        return new View.OnClickListener() { // from class: com.callapp.contacts.widget.TopBarFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TopBarFragment.this.f16673d != null) {
                    TopBarIconStates iconState = TopBarFragment.this.getIconState();
                    TopBarFragment.this.f16673d.a(iconState);
                    AnalyticsManager.get().a(Constants.TOP_BAR, "Icon clicked on top bar. icon:".concat(String.valueOf(iconState)), Constants.CLICK);
                }
            }
        };
    }

    protected int getRootViewResId() {
        return 2131559056;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isLayoutReady() {
        return this.e;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.e = false;
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(getRootViewResId(), viewGroup, false);
        this.f16671b = viewGroup2;
        ViewUtils.b(viewGroup2, getBackgroundResource(), ThemeUtils.getColor(getBgColor()), ThemeUtils.getColor(getBgColor()), 0);
        ViewGroup viewGroup3 = this.f16671b;
        MaterialMenuView materialMenuView = (MaterialMenuView) viewGroup3.findViewById(2131363765);
        this.f16670a = materialMenuView;
        if (materialMenuView != null) {
            materialMenuView.setOnClickListener(getNewStateIconClickListener());
            this.f16670a.setIconState(a.b.ARROW);
        }
        this.f16672c = (TextView) viewGroup3.findViewById(2131364417);
        return this.f16671b;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.e = false;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.e = true;
        String str = this.f;
        if (str != null) {
            setTitleText(str);
            this.f = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle bundle) {
        super.onViewStateRestored(bundle);
        MaterialMenuView materialMenuView = this.f16670a;
        if (materialMenuView != null) {
            materialMenuView.setVisible(true);
        }
    }

    public void setTitleText(String str) {
        if (!isLayoutReady()) {
            this.f = str;
            return;
        }
        TextView textView = this.f16672c;
        if (textView != null) {
            textView.setText(str);
        }
    }
}
