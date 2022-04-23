package com.apptentive.android.sdk.module.messagecenter.view.holder;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.util.Linkify;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.apptentive.android.sdk.C0726R;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterFragment;
import com.apptentive.android.sdk.module.messagecenter.model.Composer;
import com.apptentive.android.sdk.module.messagecenter.view.MessageCenterRecyclerViewAdapter;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.image.ApptentiveImageGridView;
import com.apptentive.android.sdk.util.image.ImageItem;
import com.apptentive.android.sdk.view.ApptentiveAlertDialog;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/holder/MessageComposerHolder.class */
public class MessageComposerHolder extends RecyclerView.ViewHolder {
    private ImageButton attachButton;
    private ApptentiveImageGridView attachments;
    private ImageButton closeButton;
    private List<ImageItem> images = new ArrayList();
    private int maxAllowedAttachments;
    public EditText message;
    private ImageButton sendButton;
    private TextWatcher textWatcher;
    private TextView title;

    public MessageComposerHolder(View view) {
        super(view);
        this.closeButton = (ImageButton) view.findViewById(C0726R.C0729id.close_button);
        this.title = (TextView) view.findViewById(C0726R.C0729id.title);
        this.attachButton = (ImageButton) view.findViewById(C0726R.C0729id.attach_button);
        this.sendButton = (ImageButton) view.findViewById(C0726R.C0729id.send_button);
        this.message = (EditText) view.findViewById(C0726R.C0729id.message);
        this.attachments = (ApptentiveImageGridView) view.findViewById(C0726R.C0729id.attachments);
        this.maxAllowedAttachments = view.getResources().getInteger(C0726R.integer.apptentive_image_grid_default_attachments_total);
        ColorStateList e = ContextCompat.m19674e(view.getContext(), Util.getResourceIdFromAttribute(view.getContext().getTheme(), C0726R.attr.apptentiveButtonTintColorStateList));
        Drawable r = DrawableCompat.m19495r(this.closeButton.getDrawable());
        DrawableCompat.m19498o(r, e);
        this.closeButton.setImageDrawable(r);
        Drawable r2 = DrawableCompat.m19495r(this.sendButton.getDrawable());
        DrawableCompat.m19498o(r2, e);
        this.sendButton.setImageDrawable(r2);
        Drawable r3 = DrawableCompat.m19495r(this.attachButton.getDrawable());
        DrawableCompat.m19498o(r3, e);
        this.attachButton.setImageDrawable(r3);
    }

    private void addAdditionalAttachItem() {
        ArrayList arrayList = new ArrayList(this.images);
        if (arrayList.size() < this.maxAllowedAttachments) {
            arrayList.add(new ImageItem("", "", "Image/*", 0L));
        }
        this.attachments.setData(arrayList);
    }

    public void addImagesToImageAttachmentBand(List<ImageItem> list) {
        if (list != null && list.size() != 0) {
            this.attachments.setupLayoutListener();
            this.attachments.setVisibility(0);
            this.images.addAll(list);
            setAttachButtonState();
            addAdditionalAttachItem();
            this.attachments.notifyDataSetChanged();
        }
    }

    public void bindView(final MessageCenterFragment messageCenterFragment, final MessageCenterRecyclerViewAdapter messageCenterRecyclerViewAdapter, final Composer composer) {
        this.title.setText(composer.title);
        this.title.setContentDescription(composer.title);
        this.closeButton.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!TextUtils.isEmpty(MessageComposerHolder.this.message.getText().toString().trim()) || !MessageComposerHolder.this.images.isEmpty()) {
                    Bundle bundle = new Bundle();
                    bundle.putString("message", composer.closeBody);
                    bundle.putString("positive", composer.closeDiscard);
                    bundle.putString("negative", composer.closeCancel);
                    ApptentiveAlertDialog.show(messageCenterFragment, bundle, 20);
                } else if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onCancelComposing();
                }
            }
        }));
        this.sendButton.setContentDescription(composer.sendButton);
        this.sendButton.setOnClickListener(Util.guarded(new View.OnClickListener(this) { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onFinishComposing();
                }
            }
        }));
        this.message.setHint(composer.messageHint);
        this.message.removeTextChangedListener(this.textWatcher);
        TextWatcher textWatcher = new TextWatcher(this) { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().afterComposingTextChanged(editable.toString());
                }
                Linkify.addLinks(editable, 15);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().beforeComposingTextChanged(charSequence);
                }
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onComposingTextChanged(charSequence);
                }
            }
        };
        this.textWatcher = textWatcher;
        this.message.addTextChangedListener(textWatcher);
        this.attachButton.setOnClickListener(Util.guarded(new View.OnClickListener(this) { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onAttachImage();
                }
            }
        }));
        this.attachments.setupUi();
        this.attachments.setupLayoutListener();
        this.attachments.setListener(new ApptentiveImageGridView.ImageItemClickedListener(this) { // from class: com.apptentive.android.sdk.module.messagecenter.view.holder.MessageComposerHolder.5
            @Override // com.apptentive.android.sdk.util.image.ApptentiveImageGridView.ImageItemClickedListener
            public void onClick(int i, ImageItem imageItem) {
                if (messageCenterRecyclerViewAdapter.getListener() != null) {
                    messageCenterRecyclerViewAdapter.getListener().onClickAttachment(i, imageItem);
                }
            }
        });
        this.attachments.setAdapterIndicator(C0726R.C0728drawable.apptentive_remove_button);
        this.attachments.setImageIndicatorCallback(messageCenterFragment);
        clearImageAttachmentBand();
        this.attachments.setVisibility(8);
        this.attachments.setData(new ArrayList());
        setAttachButtonState();
        if (messageCenterRecyclerViewAdapter.getListener() != null) {
            messageCenterRecyclerViewAdapter.getListener().onComposingViewCreated(this, this.message, this.attachments);
        }
    }

    public void clearImageAttachmentBand() {
        this.attachments.setVisibility(8);
        this.images.clear();
        this.attachments.setData(null);
    }

    public void onViewAttachedToWindow() {
        this.message.setEnabled(false);
        this.message.setEnabled(true);
    }

    public void removeImageFromImageAttachmentBand(int i) {
        this.images.remove(i);
        this.attachments.setupLayoutListener();
        setAttachButtonState();
        if (this.images.size() == 0) {
            this.attachments.setVisibility(8);
        } else {
            addAdditionalAttachItem();
        }
    }

    public void setAttachButtonState() {
        setButtonState(this.attachButton, this.images.size() < this.maxAllowedAttachments);
    }

    public void setButtonState(ImageButton imageButton, boolean z) {
        imageButton.setEnabled(z);
        if (z) {
            if (Build.VERSION.SDK_INT < 23) {
                imageButton.setColorFilter(Util.getThemeColor(this.itemView.getContext(), C0726R.attr.apptentiveButtonTintColor));
            }
        } else if (Build.VERSION.SDK_INT < 23) {
            imageButton.setColorFilter(Util.getThemeColor(this.itemView.getContext(), C0726R.attr.apptentiveButtonTintColorDisabled));
        }
    }

    public void setSendButtonState() {
        setButtonState(this.sendButton, !TextUtils.isEmpty(this.message.getText().toString().trim()) || !this.images.isEmpty());
    }
}
