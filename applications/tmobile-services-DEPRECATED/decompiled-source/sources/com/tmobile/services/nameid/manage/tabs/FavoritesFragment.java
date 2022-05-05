package com.tmobile.services.nameid.manage.tabs;

import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.manage.Manage;
import java.util.HashMap;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000b\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u001c\u0010\u0006\u001a\u00020\u00058\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u001c\u0010\u000b\u001a\u00020\n8\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u00020\n8\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u000eR\u001c\u0010\u0011\u001a\u00020\n8\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcom/tmobile/services/nameid/manage/tabs/FavoritesFragment;", "Lcom/tmobile/services/nameid/manage/tabs/ManageTabFragment;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "getManageTabType", "()Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "", "LOG_TAG", "Ljava/lang/String;", "getLOG_TAG", "()Ljava/lang/String;", "", "emptyHeaderRes", "I", "getEmptyHeaderRes", "()I", "emptyImageRes", "getEmptyImageRes", "emptySubtextRes", "getEmptySubtextRes", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/tabs/FavoritesFragment.class */
public final class FavoritesFragment extends ManageTabFragment {
    @NotNull

    /* renamed from: l */
    private final String f13568l = "FavoritesFragment";

    /* renamed from: m */
    private final int f13569m = C1517R.C1519drawable.ic_illustrations_love;

    /* renamed from: n */
    private final int f13570n = C1517R.string.manage_approved_list_header;

    /* renamed from: o */
    private final int f13571o = C1517R.string.manage_allow_list_no_items_subtitle;

    /* renamed from: p */
    private HashMap f13572p;

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTabFragment
    /* renamed from: G0 */
    public void mo6477G0() {
        HashMap hashMap = this.f13572p;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTabFragment
    /* renamed from: J0 */
    public int mo6476J0() {
        return this.f13570n;
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTabFragment
    /* renamed from: K0 */
    public int mo6475K0() {
        return this.f13569m;
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTabFragment
    /* renamed from: L0 */
    public int mo6474L0() {
        return this.f13571o;
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTabFragment
    @NotNull
    /* renamed from: M0 */
    public String mo6473M0() {
        return this.f13568l;
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTabFragment
    @NotNull
    /* renamed from: N0 */
    public Manage.PNBTab mo6472N0() {
        return Manage.PNBTab.Favorite.f13505e;
    }

    @Override // com.tmobile.services.nameid.manage.tabs.ManageTabFragment, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo6477G0();
    }
}
