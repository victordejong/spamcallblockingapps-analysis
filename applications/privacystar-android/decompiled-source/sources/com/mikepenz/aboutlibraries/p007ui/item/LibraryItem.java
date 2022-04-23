package com.mikepenz.aboutlibraries.p007ui.item;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.p004v7.app.AlertDialog;
import android.support.p004v7.widget.CardView;
import android.support.p004v7.widget.RecyclerView;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.mikepenz.aboutlibraries.C1453R;
import com.mikepenz.aboutlibraries.LibsBuilder;
import com.mikepenz.aboutlibraries.LibsConfiguration;
import com.mikepenz.aboutlibraries.entity.Library;
import com.mikepenz.aboutlibraries.util.RippleForegroundListener;
import com.mikepenz.aboutlibraries.util.UIUtils;
import com.mikepenz.fastadapter.items.AbstractItem;
import java.util.List;
/* renamed from: com.mikepenz.aboutlibraries.ui.item.LibraryItem */
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/ui/item/LibraryItem.class */
public class LibraryItem extends AbstractItem<LibraryItem, ViewHolder> {
    public Library library;
    public LibsBuilder libsBuilder;
    private RippleForegroundListener rippleForegroundListener = new RippleForegroundListener(C1453R.C1456id.rippleForegroundListenerView);

    /* renamed from: com.mikepenz.aboutlibraries.ui.item.LibraryItem$ViewHolder */
    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/ui/item/LibraryItem$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        CardView card;
        View libraryBottomContainer;
        View libraryBottomDivider;
        TextView libraryCreator;
        TextView libraryDescription;
        View libraryDescriptionDivider;
        TextView libraryLicense;
        TextView libraryName;
        TextView libraryVersion;

        public ViewHolder(View view) {
            super(view);
            this.card = (CardView) view;
            this.card.setCardBackgroundColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_card, C1453R.color.about_libraries_card));
            this.libraryName = (TextView) view.findViewById(C1453R.C1456id.libraryName);
            this.libraryName.setTextColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_title_openSource, C1453R.color.about_libraries_title_openSource));
            this.libraryCreator = (TextView) view.findViewById(C1453R.C1456id.libraryCreator);
            this.libraryCreator.setTextColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_text_openSource, C1453R.color.about_libraries_text_openSource));
            this.libraryDescriptionDivider = view.findViewById(C1453R.C1456id.libraryDescriptionDivider);
            this.libraryDescriptionDivider.setBackgroundColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_dividerLight_openSource, C1453R.color.about_libraries_dividerLight_openSource));
            this.libraryDescription = (TextView) view.findViewById(C1453R.C1456id.libraryDescription);
            this.libraryDescription.setTextColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_text_openSource, C1453R.color.about_libraries_text_openSource));
            this.libraryBottomDivider = view.findViewById(C1453R.C1456id.libraryBottomDivider);
            this.libraryBottomDivider.setBackgroundColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_dividerLight_openSource, C1453R.color.about_libraries_dividerLight_openSource));
            this.libraryBottomContainer = view.findViewById(C1453R.C1456id.libraryBottomContainer);
            this.libraryVersion = (TextView) view.findViewById(C1453R.C1456id.libraryVersion);
            this.libraryVersion.setTextColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_text_openSource, C1453R.color.about_libraries_text_openSource));
            this.libraryLicense = (TextView) view.findViewById(C1453R.C1456id.libraryLicense);
            this.libraryLicense.setTextColor(UIUtils.getThemeColorFromAttrOrRes(view.getContext(), C1453R.C1454attr.about_libraries_text_openSource, C1453R.color.about_libraries_text_openSource));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openAuthorWebsite(Context context, String str) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLibraryWebsite(Context context, String str) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openLicense(Context context, LibsBuilder libsBuilder, Library library) {
        try {
            if (!libsBuilder.showLicenseDialog.booleanValue() || TextUtils.isEmpty(library.getLicense().getLicenseDescription())) {
                context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(library.getLicense().getLicenseWebsite())));
            } else {
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setMessage(Html.fromHtml(library.getLicense().getLicenseDescription()));
                builder.create().show();
            }
        } catch (Exception e) {
        }
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem, com.mikepenz.fastadapter.IItem
    public /* bridge */ /* synthetic */ void bindView(RecyclerView.ViewHolder viewHolder, List list) {
        bindView((ViewHolder) viewHolder, (List<Object>) list);
    }

    public void bindView(ViewHolder viewHolder, List<Object> list) {
        super.bindView((LibraryItem) viewHolder, list);
        final Context context = viewHolder.itemView.getContext();
        viewHolder.libraryName.setText(this.library.getLibraryName());
        viewHolder.libraryCreator.setText(this.library.getAuthor());
        if (TextUtils.isEmpty(this.library.getLibraryDescription())) {
            viewHolder.libraryDescription.setText(this.library.getLibraryDescription());
        } else {
            viewHolder.libraryDescription.setText(Html.fromHtml(this.library.getLibraryDescription()));
        }
        if ((!TextUtils.isEmpty(this.library.getLibraryVersion()) || this.library.getLicense() == null || !TextUtils.isEmpty(this.library.getLicense().getLicenseName())) && (this.libsBuilder.showVersion.booleanValue() || this.libsBuilder.showLicense.booleanValue())) {
            viewHolder.libraryBottomDivider.setVisibility(0);
            viewHolder.libraryBottomContainer.setVisibility(0);
            if (TextUtils.isEmpty(this.library.getLibraryVersion()) || !this.libsBuilder.showVersion.booleanValue()) {
                viewHolder.libraryVersion.setText("");
            } else {
                viewHolder.libraryVersion.setText(this.library.getLibraryVersion());
            }
            if (this.library.getLicense() == null || TextUtils.isEmpty(this.library.getLicense().getLicenseName()) || !this.libsBuilder.showLicense.booleanValue()) {
                viewHolder.libraryLicense.setText("");
            } else {
                viewHolder.libraryLicense.setText(this.library.getLicense().getLicenseName());
            }
        } else {
            viewHolder.libraryBottomDivider.setVisibility(8);
            viewHolder.libraryBottomContainer.setVisibility(8);
        }
        if (!TextUtils.isEmpty(this.library.getAuthorWebsite())) {
            viewHolder.libraryCreator.setOnTouchListener(this.rippleForegroundListener);
            viewHolder.libraryCreator.setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!(LibsConfiguration.getInstance().getListener() != null ? LibsConfiguration.getInstance().getListener().onLibraryAuthorClicked(view, LibraryItem.this.library) : false)) {
                        LibraryItem.this.openAuthorWebsite(context, LibraryItem.this.library.getAuthorWebsite());
                    }
                }
            });
            viewHolder.libraryCreator.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.2
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    boolean onLibraryAuthorLongClicked = LibsConfiguration.getInstance().getListener() != null ? LibsConfiguration.getInstance().getListener().onLibraryAuthorLongClicked(view, LibraryItem.this.library) : false;
                    boolean z = onLibraryAuthorLongClicked;
                    if (!onLibraryAuthorLongClicked) {
                        LibraryItem.this.openAuthorWebsite(context, LibraryItem.this.library.getAuthorWebsite());
                        z = true;
                    }
                    return z;
                }
            });
        } else {
            viewHolder.libraryCreator.setOnTouchListener(null);
            viewHolder.libraryCreator.setOnClickListener(null);
            viewHolder.libraryCreator.setOnLongClickListener(null);
        }
        if (!TextUtils.isEmpty(this.library.getLibraryWebsite()) || !TextUtils.isEmpty(this.library.getRepositoryLink())) {
            viewHolder.libraryDescription.setOnTouchListener(this.rippleForegroundListener);
            viewHolder.libraryDescription.setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!(LibsConfiguration.getInstance().getListener() != null ? LibsConfiguration.getInstance().getListener().onLibraryContentClicked(view, LibraryItem.this.library) : false)) {
                        LibraryItem.this.openLibraryWebsite(context, LibraryItem.this.library.getLibraryWebsite() != null ? LibraryItem.this.library.getLibraryWebsite() : LibraryItem.this.library.getRepositoryLink());
                    }
                }
            });
            viewHolder.libraryDescription.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.4
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    boolean onLibraryContentLongClicked = LibsConfiguration.getInstance().getListener() != null ? LibsConfiguration.getInstance().getListener().onLibraryContentLongClicked(view, LibraryItem.this.library) : false;
                    boolean z = onLibraryContentLongClicked;
                    if (!onLibraryContentLongClicked) {
                        LibraryItem.this.openLibraryWebsite(context, LibraryItem.this.library.getLibraryWebsite() != null ? LibraryItem.this.library.getLibraryWebsite() : LibraryItem.this.library.getRepositoryLink());
                        z = true;
                    }
                    return z;
                }
            });
        } else {
            viewHolder.libraryDescription.setOnTouchListener(null);
            viewHolder.libraryDescription.setOnClickListener(null);
            viewHolder.libraryDescription.setOnLongClickListener(null);
        }
        if (this.library.getLicense() == null || (TextUtils.isEmpty(this.library.getLicense().getLicenseWebsite()) && !this.libsBuilder.showLicenseDialog.booleanValue())) {
            viewHolder.libraryBottomContainer.setOnTouchListener(null);
            viewHolder.libraryBottomContainer.setOnClickListener(null);
            viewHolder.libraryBottomContainer.setOnLongClickListener(null);
        } else {
            viewHolder.libraryBottomContainer.setOnTouchListener(this.rippleForegroundListener);
            viewHolder.libraryBottomContainer.setOnClickListener(new View.OnClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!(LibsConfiguration.getInstance().getListener() != null ? LibsConfiguration.getInstance().getListener().onLibraryBottomClicked(view, LibraryItem.this.library) : false)) {
                        LibraryItem.this.openLicense(context, LibraryItem.this.libsBuilder, LibraryItem.this.library);
                    }
                }
            });
            viewHolder.libraryBottomContainer.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mikepenz.aboutlibraries.ui.item.LibraryItem.6
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    boolean onLibraryBottomLongClicked = LibsConfiguration.getInstance().getListener() != null ? LibsConfiguration.getInstance().getListener().onLibraryBottomLongClicked(view, LibraryItem.this.library) : false;
                    boolean z = onLibraryBottomLongClicked;
                    if (!onLibraryBottomLongClicked) {
                        LibraryItem.this.openLicense(context, LibraryItem.this.libsBuilder, LibraryItem.this.library);
                        z = true;
                    }
                    return z;
                }
            });
        }
        if (LibsConfiguration.getInstance().getLibsRecyclerViewListener() != null) {
            LibsConfiguration.getInstance().getLibsRecyclerViewListener().onBindViewHolder(viewHolder);
        }
    }

    @Override // com.mikepenz.fastadapter.IItem
    public int getLayoutRes() {
        return C1453R.C1457layout.listitem_opensource;
    }

    @Override // com.mikepenz.fastadapter.IItem
    public int getType() {
        return C1453R.C1456id.library_item_id;
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem
    public ViewHolder getViewHolder(View view) {
        return new ViewHolder(view);
    }

    @Override // com.mikepenz.fastadapter.items.AbstractItem, com.mikepenz.fastadapter.IItem
    public boolean isSelectable() {
        return false;
    }

    public LibraryItem withLibrary(Library library) {
        this.library = library;
        return this;
    }

    public LibraryItem withLibsBuilder(LibsBuilder libsBuilder) {
        this.libsBuilder = libsBuilder;
        return this;
    }
}
