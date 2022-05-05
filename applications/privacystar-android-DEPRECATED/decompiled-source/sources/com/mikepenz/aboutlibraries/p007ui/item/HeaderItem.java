package com.mikepenz.aboutlibraries.p007ui.item;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.p004v7.app.AlertDialog;
import android.support.p004v7.widget.RecyclerView;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.mikepenz.aboutlibraries.C1453R;
import com.mikepenz.aboutlibraries.Libs;
import com.mikepenz.aboutlibraries.LibsBuilder;
import com.mikepenz.aboutlibraries.LibsConfiguration;
import com.mikepenz.aboutlibraries.util.MovementCheck;
import com.mikepenz.aboutlibraries.util.UIUtils;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.mikepenz.iconics.Iconics;
import java.util.List;
/* renamed from: com.mikepenz.aboutlibraries.ui.item.HeaderItem */
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/ui/item/HeaderItem.class */
public class HeaderItem extends AbstractItem<HeaderItem, ViewHolder> {
    private Drawable aboutIcon;
    private Integer aboutVersionCode;
    private String aboutVersionName;
    public LibsBuilder libsBuilder;

    /* renamed from: com.mikepenz.aboutlibraries.ui.item.HeaderItem$ViewHolder */
    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/ui/item/HeaderItem$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView aboutAppDescription;
        TextView aboutAppName;
        View aboutDivider;
        ImageView aboutIcon;
        Button aboutSpecial1;
        Button aboutSpecial2;
        Button aboutSpecial3;
        View aboutSpecialContainer;
        TextView aboutVersion;

        public ViewHolder(View view) {
            super(view);
            this.aboutIcon = (ImageView) view.findViewById(C1453R.C1456id.aboutIcon);
            this.aboutAppName = (TextView) view.findViewById(C1453R.C1456id.aboutName);
            this.aboutAppName.setTextColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_title_description, C1453R.color.about_libraries_title_description));
            this.aboutSpecialContainer = view.findViewById(C1453R.C1456id.aboutSpecialContainer);
            this.aboutSpecial1 = (Button) view.findViewById(C1453R.C1456id.aboutSpecial1);
            this.aboutSpecial2 = (Button) view.findViewById(C1453R.C1456id.aboutSpecial2);
            this.aboutSpecial3 = (Button) view.findViewById(C1453R.C1456id.aboutSpecial3);
            this.aboutVersion = (TextView) view.findViewById(C1453R.C1456id.aboutVersion);
            this.aboutVersion.setTextColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_text_description, C1453R.color.about_libraries_text_description));
            this.aboutDivider = view.findViewById(C1453R.C1456id.aboutDivider);
            this.aboutDivider.setBackgroundColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_divider_description, C1453R.color.about_libraries_divider_description));
            this.aboutAppDescription = (TextView) view.findViewById(C1453R.C1456id.aboutDescription);
            this.aboutAppDescription.setTextColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_text_description, C1453R.color.about_libraries_text_description));
        }
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem, com.mikepenz.fastadapter.IItem
    public /* bridge */ /* synthetic */ void bindView(RecyclerView.ViewHolder viewHolder, List list) {
        bindView((ViewHolder) viewHolder, (List<Object>) list);
    }

    public void bindView(ViewHolder viewHolder, List<Object> list) {
        super.bindView((HeaderItem) viewHolder, list);
        final Context context = viewHolder.itemView.getContext();
        if (this.libsBuilder.aboutShowIcon == null || !this.libsBuilder.aboutShowIcon.booleanValue() || this.aboutIcon == null) {
            viewHolder.aboutIcon.setVisibility(8);
        } else {
            viewHolder.aboutIcon.setImageDrawable(this.aboutIcon);
            viewHolder.aboutIcon.setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (LibsConfiguration.getInstance().getListener() != null) {
                        LibsConfiguration.getInstance().getListener().onIconClicked(view);
                    }
                }
            });
            viewHolder.aboutIcon.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    return LibsConfiguration.getInstance().getListener() != null && LibsConfiguration.getInstance().getListener().onIconLongClicked(view);
                }
            });
        }
        if (!TextUtils.isEmpty(this.libsBuilder.aboutAppName)) {
            viewHolder.aboutAppName.setText(this.libsBuilder.aboutAppName);
        } else {
            viewHolder.aboutAppName.setVisibility(8);
        }
        viewHolder.aboutSpecialContainer.setVisibility(8);
        viewHolder.aboutSpecial1.setVisibility(8);
        viewHolder.aboutSpecial2.setVisibility(8);
        viewHolder.aboutSpecial3.setVisibility(8);
        if (!TextUtils.isEmpty(this.libsBuilder.aboutAppSpecial1) && (!TextUtils.isEmpty(this.libsBuilder.aboutAppSpecial1Description) || LibsConfiguration.getInstance().getListener() != null)) {
            viewHolder.aboutSpecial1.setText(this.libsBuilder.aboutAppSpecial1);
            new Iconics.IconicsBuilder().ctx(context).m318on(viewHolder.aboutSpecial1).build();
            viewHolder.aboutSpecial1.setVisibility(0);
            viewHolder.aboutSpecial1.setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!(LibsConfiguration.getInstance().getListener() != null ? LibsConfiguration.getInstance().getListener().onExtraClicked(view, Libs.SpecialButton.SPECIAL1) : false) && !TextUtils.isEmpty(HeaderItem.this.libsBuilder.aboutAppSpecial1Description)) {
                        try {
                            AlertDialog.Builder builder = new AlertDialog.Builder(context);
                            builder.setMessage(Html.fromHtml(HeaderItem.this.libsBuilder.aboutAppSpecial1Description));
                            builder.create().show();
                        } catch (Exception e) {
                        }
                    }
                }
            });
            viewHolder.aboutSpecialContainer.setVisibility(0);
        }
        if (!TextUtils.isEmpty(this.libsBuilder.aboutAppSpecial2) && (!TextUtils.isEmpty(this.libsBuilder.aboutAppSpecial2Description) || LibsConfiguration.getInstance().getListener() != null)) {
            viewHolder.aboutSpecial2.setText(this.libsBuilder.aboutAppSpecial2);
            new Iconics.IconicsBuilder().ctx(context).m318on(viewHolder.aboutSpecial2).build();
            viewHolder.aboutSpecial2.setVisibility(0);
            viewHolder.aboutSpecial2.setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!(LibsConfiguration.getInstance().getListener() != null ? LibsConfiguration.getInstance().getListener().onExtraClicked(view, Libs.SpecialButton.SPECIAL2) : false) && !TextUtils.isEmpty(HeaderItem.this.libsBuilder.aboutAppSpecial2Description)) {
                        try {
                            AlertDialog.Builder builder = new AlertDialog.Builder(context);
                            builder.setMessage(Html.fromHtml(HeaderItem.this.libsBuilder.aboutAppSpecial2Description));
                            builder.create().show();
                        } catch (Exception e) {
                        }
                    }
                }
            });
            viewHolder.aboutSpecialContainer.setVisibility(0);
        }
        if (!TextUtils.isEmpty(this.libsBuilder.aboutAppSpecial3) && (!TextUtils.isEmpty(this.libsBuilder.aboutAppSpecial3Description) || LibsConfiguration.getInstance().getListener() != null)) {
            viewHolder.aboutSpecial3.setText(this.libsBuilder.aboutAppSpecial3);
            new Iconics.IconicsBuilder().ctx(context).m318on(viewHolder.aboutSpecial3).build();
            viewHolder.aboutSpecial3.setVisibility(0);
            viewHolder.aboutSpecial3.setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.HeaderItem.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!(LibsConfiguration.getInstance().getListener() != null ? LibsConfiguration.getInstance().getListener().onExtraClicked(view, Libs.SpecialButton.SPECIAL3) : false) && !TextUtils.isEmpty(HeaderItem.this.libsBuilder.aboutAppSpecial3Description)) {
                        try {
                            AlertDialog.Builder builder = new AlertDialog.Builder(context);
                            builder.setMessage(Html.fromHtml(HeaderItem.this.libsBuilder.aboutAppSpecial3Description));
                            builder.create().show();
                        } catch (Exception e) {
                        }
                    }
                }
            });
            viewHolder.aboutSpecialContainer.setVisibility(0);
        }
        if (this.libsBuilder.aboutVersionString != null) {
            viewHolder.aboutVersion.setText(this.libsBuilder.aboutVersionString);
        } else if (this.libsBuilder.aboutShowVersion != null && this.libsBuilder.aboutShowVersion.booleanValue()) {
            TextView textView = viewHolder.aboutVersion;
            textView.setText(context.getString(C1453R.string.version) + " " + this.aboutVersionName + " (" + this.aboutVersionCode + ")");
        } else if (this.libsBuilder.aboutShowVersionName != null && this.libsBuilder.aboutShowVersionName.booleanValue()) {
            TextView textView2 = viewHolder.aboutVersion;
            textView2.setText(context.getString(C1453R.string.version) + " " + this.aboutVersionName);
        } else if (this.libsBuilder.aboutShowVersionCode == null || !this.libsBuilder.aboutShowVersionCode.booleanValue()) {
            viewHolder.aboutVersion.setVisibility(8);
        } else {
            TextView textView3 = viewHolder.aboutVersion;
            textView3.setText(context.getString(C1453R.string.version) + " " + this.aboutVersionCode);
        }
        if (!TextUtils.isEmpty(this.libsBuilder.aboutDescription)) {
            viewHolder.aboutAppDescription.setText(Html.fromHtml(this.libsBuilder.aboutDescription));
            new Iconics.IconicsBuilder().ctx(context).m317on(viewHolder.aboutAppDescription).build();
            viewHolder.aboutAppDescription.setMovementMethod(MovementCheck.getInstance());
        } else {
            viewHolder.aboutAppDescription.setVisibility(8);
        }
        if ((!this.libsBuilder.aboutShowIcon.booleanValue() && !this.libsBuilder.aboutShowVersion.booleanValue()) || TextUtils.isEmpty(this.libsBuilder.aboutDescription)) {
            viewHolder.aboutDivider.setVisibility(8);
        }
        if (LibsConfiguration.getInstance().getLibsRecyclerViewListener() != null) {
            LibsConfiguration.getInstance().getLibsRecyclerViewListener().onBindViewHolder(viewHolder);
        }
    }

    @Override // com.mikepenz.fastadapter.IItem
    public int getLayoutRes() {
        return C1453R.C1457layout.listheader_opensource;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public int getType() {
        return C1453R.C1456id.header_item_id;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public ViewHolder getViewHolder(View view) {
        return new ViewHolder(view);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem, com.mikepenz.fastadapter.IItem
    public boolean isSelectable() {
        return false;
    }

    public HeaderItem withAboutIcon(Drawable drawable) {
        this.aboutIcon = drawable;
        return this;
    }

    public HeaderItem withAboutVersionCode(Integer num) {
        this.aboutVersionCode = num;
        return this;
    }

    public HeaderItem withAboutVersionName(String str) {
        this.aboutVersionName = str;
        return this;
    }

    public HeaderItem withLibsBuilder(LibsBuilder libsBuilder) {
        this.libsBuilder = libsBuilder;
        return this;
    }
}
