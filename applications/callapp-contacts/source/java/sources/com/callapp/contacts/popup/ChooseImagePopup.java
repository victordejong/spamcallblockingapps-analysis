package com.callapp.contacts.popup;

import android.app.Activity;
import android.view.View;
import android.widget.AdapterView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.HorizontalCircleImageGalleryCard.PhotoPresentableData;
import com.callapp.contacts.activity.contact.cards.framework.horizontal.gallery.PhotoGalleryAdapter;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.popup.contact.DialogSimpleWithContent;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/ChooseImagePopup.class */
public class ChooseImagePopup<Data extends HorizontalCircleImageGalleryCard.PhotoPresentableData> extends DialogSimpleWithContent {

    /* renamed from: a */
    private final int f26866a;

    /* renamed from: c */
    private final List<Data> f26867c;

    /* renamed from: d */
    private AdapterView.OnItemClickListener f26868d;

    public ChooseImagePopup(int i, List<Data> list) {
        this.f26866a = i;
        this.f26867c = list;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleWithContent
    public int getContentResId() {
        return 2131558605;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    public String getPositiveBtnText() {
        return Activities.getString(2131886784);
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    public DialogPopup.IDialogOnClickListener getPositiveListener() {
        return new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.popup.ChooseImagePopup.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity) {
                ChooseImagePopup.this.dismiss();
            }
        };
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimple
    public int getTitleResId() {
        return this.f26866a;
    }

    public void setItemClickedListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f26868d = onItemClickListener;
    }

    @Override // com.callapp.contacts.popup.contact.DialogSimpleWithContent, com.callapp.contacts.popup.contact.DialogSimple
    public void setupViews(View view) {
        super.setupViews(view);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(2131363648);
        recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setAdapter(new PhotoGalleryAdapter(this.f26867c, this.f26868d, null, 2131558537));
        ViewUtils.m27320a(view.findViewById(2131362349), ThemeUtils.getDrawable(2131232186));
        ViewUtils.m27320a(view.findViewById(2131362350), ThemeUtils.getDrawable(2131232188));
    }
}
