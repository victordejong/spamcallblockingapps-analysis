package com.callapp.contacts.popup.contact;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterIconAndText.class */
public class AdapterIconAndText extends AdapterText<ItemIconAndText> {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterIconAndText$ItemIconAndText.class */
    public static class ItemIconAndText extends AdapterText.ItemText {

        /* renamed from: a  reason: collision with root package name */
        final int f15412a;

        public ItemIconAndText(int i, int i2) {
            this(i, Activities.getString(i2), i2);
        }

        public ItemIconAndText(int i, String str, int i2) {
            super(str, i2);
            this.f15412a = i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/AdapterIconAndText$ViewHolderIconAndText.class */
    class ViewHolderIconAndText extends AdapterText.ViewHolderText {

        /* renamed from: a  reason: collision with root package name */
        final ImageView f15413a;

        ViewHolderIconAndText(ImageView imageView, TextView textView) {
            super(textView);
            this.f15413a = imageView;
        }
    }

    public AdapterIconAndText(Context context, int i, List<ItemIconAndText> list) {
        super(context, i, list);
    }

    public AdapterIconAndText(Context context, int i, ItemIconAndText... itemIconAndTextArr) {
        this(context, i, Arrays.asList(itemIconAndTextArr));
    }

    @Override // com.callapp.contacts.popup.contact.AdapterText
    protected final AdapterText.ViewHolderText a(View view) {
        return new ViewHolderIconAndText((ImageView) view.findViewById(2131363179), (TextView) view.findViewById(2131363156));
    }

    @Override // com.callapp.contacts.popup.contact.AdapterText
    protected final /* synthetic */ void a(AdapterText.ViewHolderText viewHolderText, ItemIconAndText itemIconAndText) {
        ItemIconAndText itemIconAndText2 = itemIconAndText;
        super.a(viewHolderText, itemIconAndText2);
        ViewHolderIconAndText viewHolderIconAndText = (ViewHolderIconAndText) viewHolderText;
        if (itemIconAndText2.f15412a == 0) {
            viewHolderIconAndText.f15413a.setVisibility(8);
        } else {
            ImageUtils.a(viewHolderIconAndText.f15413a, itemIconAndText2.f15412a, new PorterDuffColorFilter(ThemeUtils.getColor(2131099783), PorterDuff.Mode.SRC_IN));
        }
    }
}
