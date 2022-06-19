package com.truecaller.details_view.p162ui.optionmenu;

import com.truecaller.details_view.C3857R;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0012\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/truecaller/details_view/ui/optionmenu/OptionMenu;", "", "", "id", "I", "getId", "()I", "<init>", "(Ljava/lang/String;II)V", "SHARE", "SAVE_CONTACT", "COPY_CONTACT", "COPY_NAME", "COPY_PHONE", "DELETE_CONTACT", "DELETE_IDENTIFIED_CONTACT", "SEARCH_WEB", "FAVORITE", "UNFAVORITE", "EDIT", "details-view_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.details_view.ui.optionmenu.OptionMenu */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/optionmenu/OptionMenu.class */
public enum OptionMenu {
    SHARE(C3857R.C3859id.action_share),
    SAVE_CONTACT(C3857R.C3859id.action_save),
    COPY_CONTACT(C3857R.C3859id.action_copy_contact),
    COPY_NAME(C3857R.C3859id.action_copy_name),
    COPY_PHONE(C3857R.C3859id.action_copy_number),
    DELETE_CONTACT(C3857R.C3859id.action_delete_contact),
    DELETE_IDENTIFIED_CONTACT(C3857R.C3859id.action_delete_identified_contact),
    SEARCH_WEB(C3857R.C3859id.action_search_web),
    FAVORITE(C3857R.C3859id.action_favorite_contact),
    UNFAVORITE(C3857R.C3859id.action_unfavorite_contact),
    EDIT(C3857R.C3859id.action_edit_contact);
    

    /* renamed from: id */
    private final int f11784id;

    OptionMenu(int i) {
        this.f11784id = i;
    }

    public final int getId() {
        return this.f11784id;
    }
}
