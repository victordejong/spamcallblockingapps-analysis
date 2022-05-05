package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.model.CompoundMessage;
import com.apptentive.android.sdk.model.StoredFile;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment;
import com.apptentive.android.sdk.module.messagecenter.view.MessageCenterRecyclerViewAdapter;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.image.ApptentiveImageGridView;
import com.apptentive.android.sdk.util.image.ImageItem;
import com.apptentive.android.sdk.view.ApptentiveMaterialIndeterminateProgressBar;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/OutgoingCompoundMessageHolder.class */
public class OutgoingCompoundMessageHolder extends MessageHolder {
    public View container;
    public ApptentiveImageGridView imageBandView;
    public TextView messageBodyView;
    public ApptentiveMaterialIndeterminateProgressBar progressBar;
    public View root;
    public TextView status;

    public OutgoingCompoundMessageHolder(View view) {
        super(view);
        this.root = view.findViewById(C0726R.C0729id.message_root);
        this.container = view.findViewById(C0726R.C0729id.apptentive_compound_message_body_container);
        this.progressBar = (ApptentiveMaterialIndeterminateProgressBar) view.findViewById(C0726R.C0729id.progressBar);
        this.messageBodyView = (TextView) view.findViewById(C0726R.C0729id.apptentive_compound_message_body);
        this.imageBandView = (ApptentiveImageGridView) view.findViewById(C0726R.C0729id.grid);
        this.status = (TextView) view.findViewById(C0726R.C0729id.status);
    }

    private int getStatusColor(Double d, boolean z) {
        if (d != null) {
            return Util.getThemeColor(this.itemView.getContext(), 16842808);
        }
        return z ? Util.getThemeColor(this.itemView.getContext(), C0726R.attr.apptentiveValidationFailedColor) : 0;
    }

    public void bindView(MessageCenterFragment messageCenterFragment, RecyclerView recyclerView, final MessageCenterRecyclerViewAdapter messageCenterRecyclerViewAdapter, CompoundMessage compoundMessage) {
        boolean z;
        String str;
        int i;
        super.bindView(messageCenterFragment, recyclerView, compoundMessage);
        this.imageBandView.setupUi();
        this.messageBodyView.setText(compoundMessage.getBody());
        Double createdAt = compoundMessage.getCreatedAt();
        int i2 = 0;
        if (createdAt == null || createdAt.doubleValue() > Double.MIN_VALUE) {
            z = createdAt == null && !messageCenterFragment.isPaused() && (compoundMessage.getAssociatedFiles() != null || !TextUtils.isEmpty(compoundMessage.getBody()));
            str = createStatus(createdAt, compoundMessage.isLastSent(), messageCenterFragment.isPaused());
        } else {
            str = this.itemView.getResources().getString(C0726R.string.apptentive_failed);
            z = false;
        }
        if (z) {
            this.progressBar.start();
            this.progressBar.setVisibility(0);
        } else {
            this.progressBar.stop();
            this.progressBar.setVisibility(8);
        }
        List<StoredFile> associatedFiles = compoundMessage.getAssociatedFiles();
        if (associatedFiles == null || associatedFiles.size() <= 0) {
            i = 0;
        } else {
            this.root.measure(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), 0);
            i = (this.container.getMeasuredWidth() - this.container.getPaddingLeft()) - this.container.getPaddingRight();
        }
        if (associatedFiles == null || associatedFiles.size() == 0) {
            this.imageBandView.setVisibility(8);
        } else {
            this.imageBandView.setVisibility(0);
            this.imageBandView.setAdapterItemSize(i, this.itemView.getResources().getInteger(C0726R.integer.apptentive_image_grid_default_column_number));
            ArrayList arrayList = new ArrayList();
            for (StoredFile storedFile : associatedFiles) {
                arrayList.add(new ImageItem(storedFile.getSourceUriOrPath(), storedFile.getLocalFilePath(), storedFile.getMimeType(), storedFile.getCreationTime()));
            }
            this.imageBandView.setData(arrayList);
            this.imageBandView.setListener(new ApptentiveImageGridView.ImageItemClickedListener(this) { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.OutgoingCompoundMessageHolder.1
                @Override // com.apptentive.android.sdk.util.image.ApptentiveImageGridView.ImageItemClickedListener
                public void onClick(int i3, ImageItem imageItem) {
                    if (messageCenterRecyclerViewAdapter.getListener() != null) {
                        messageCenterRecyclerViewAdapter.getListener().onClickAttachment(i3, imageItem);
                    }
                }
            });
        }
        this.status.setText(str);
        this.status.setTextColor(getStatusColor(createdAt, messageCenterFragment.isPaused()));
        TextView textView = this.status;
        if (TextUtils.isEmpty(str)) {
            i2 = 8;
        }
        textView.setVisibility(i2);
    }

    protected String createStatus(Double d, boolean z, boolean z2) {
        String str = null;
        String str2 = null;
        if (d == null) {
            if (z2) {
                str2 = this.itemView.getResources().getString(C0726R.string.apptentive_failed);
            }
            return str2;
        }
        if (z) {
            str = this.itemView.getResources().getString(C0726R.string.apptentive_sent);
        }
        return str;
    }
}
