package com.mikepenz.iconics.context;

import android.content.Context;
import android.support.p004v7.view.menu.ActionMenuItemView;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.mikepenz.iconics.Iconics;
import com.mikepenz.iconics.IconicsDrawable;
import com.mikepenz.iconics.core.C1486R;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/context/IconicsFactory.class */
class IconicsFactory {
    public View onViewCreated(View view, Context context, AttributeSet attributeSet) {
        if (!(view == null || view.getTag(C1486R.C1489id.iconics_tag_id) == Boolean.TRUE)) {
            onViewCreatedInternal(view, context, attributeSet);
            view.setTag(C1486R.C1489id.iconics_tag_id, Boolean.TRUE);
        }
        return view;
    }

    void onViewCreatedInternal(View view, final Context context, AttributeSet attributeSet) {
        IconicsDrawable iconicsDrawable;
        if (attributeSet != null) {
            if (view instanceof ActionMenuItemView) {
                IconicsDrawable iconicsDrawable2 = IconicsAttrsApplier.getIconicsDrawable(context, attributeSet);
                if (iconicsDrawable2 != null) {
                    ((ActionMenuItemView) view).setIcon(iconicsDrawable2);
                }
            } else if (view instanceof EditText) {
                new Iconics.IconicsBuilder().ctx(context).m317on((TextView) view).build();
            } else if (view instanceof TextView) {
                TextView textView = (TextView) view;
                new Iconics.IconicsBuilder().ctx(context).m317on(textView).build();
                textView.addTextChangedListener(new TextWatcher() { // from class: com.mikepenz.iconics.context.IconicsFactory.1
                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                        Iconics.styleEditable(context, editable);
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }
                });
            } else if ((view instanceof ImageView) && (iconicsDrawable = IconicsAttrsApplier.getIconicsDrawable(context, attributeSet)) != null) {
                ((ImageView) view).setImageDrawable(iconicsDrawable);
            }
        }
    }
}
