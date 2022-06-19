package com.callapp.contacts.popup.contact;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ImageUtils;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/ShareAdapter.class */
public class ShareAdapter extends AdapterText<ItemIconAndText> {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/ShareAdapter$ItemIconAndText.class */
    public static class ItemIconAndText extends AdapterText.ItemText {

        /* renamed from: a */
        final int f27275a;

        public ItemIconAndText(int i, int i2) {
            this(i, Activities.getString(i2), i2);
        }

        public ItemIconAndText(int i, String str, int i2) {
            super(str, i2);
            this.f27275a = i;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/popup/contact/ShareAdapter$ViewHolderIconAndText.class */
    class ViewHolderIconAndText extends AdapterText.ViewHolderText {

        /* renamed from: a */
        final ImageView f27276a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ViewHolderIconAndText(ImageView imageView, TextView textView) {
            super(textView);
            ShareAdapter.this = r4;
            this.f27276a = imageView;
        }
    }

    public ShareAdapter(Context context, int i, List<ItemIconAndText> list) {
        super(context, i, list);
    }

    public ShareAdapter(Context context, int i, ItemIconAndText... itemIconAndTextArr) {
        this(context, i, Arrays.asList(itemIconAndTextArr));
    }

    @Override // com.callapp.contacts.popup.contact.AdapterText
    /* renamed from: a */
    protected final AdapterText.ViewHolderText mo27941a(View view) {
        return new ViewHolderIconAndText((ImageView) view.findViewById(2131363179), (TextView) view.findViewById(2131363156));
    }

    @Override // com.callapp.contacts.popup.contact.AdapterText
    /* renamed from: a */
    public final /* synthetic */ void mo27940a(AdapterText.ViewHolderText viewHolderText, ItemIconAndText itemIconAndText) {
        ItemIconAndText itemIconAndText2 = itemIconAndText;
        super.mo27940a(viewHolderText, itemIconAndText2);
        ViewHolderIconAndText viewHolderIconAndText = (ViewHolderIconAndText) viewHolderText;
        if (itemIconAndText2.f27275a == 0) {
            viewHolderIconAndText.f27276a.setVisibility(8);
        } else {
            ImageUtils.m27530a(viewHolderIconAndText.f27276a, itemIconAndText2.f27275a);
        }
    }
}
