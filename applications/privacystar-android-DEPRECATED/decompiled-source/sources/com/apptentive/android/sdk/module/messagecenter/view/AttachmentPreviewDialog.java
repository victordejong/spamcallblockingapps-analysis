package com.apptentive.android.sdk.module.messagecenter.view;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.p001v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader;
import com.apptentive.android.sdk.util.image.ImageItem;
import com.apptentive.android.sdk.util.image.PreviewImageView;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/messagecenter/view/AttachmentPreviewDialog.class */
public class AttachmentPreviewDialog extends DialogFragment implements DialogInterface.OnDismissListener, PreviewImageView.GestureCallback {
    private static final String KEY_CONVERSATION_TOKEN = "token";
    private static final String KEY_IMAGE = "image";
    private ImageButton closeButton;
    private String conversationToken;
    private ImageItem currentImage;
    private ViewGroup header;
    private int height;
    private View previewContainer;
    private ImageView previewImagePlaceholderView;
    private PreviewImageView previewImageView;
    private ProgressBar progressBar;
    private int width;

    public static AttachmentPreviewDialog newInstance(ImageItem imageItem, String str) {
        AttachmentPreviewDialog attachmentPreviewDialog = new AttachmentPreviewDialog();
        Bundle bundle = new Bundle();
        bundle.putParcelable(KEY_IMAGE, imageItem);
        bundle.putString("token", str);
        attachmentPreviewDialog.setArguments(bundle);
        return attachmentPreviewDialog;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, C0724R.C0730style.ApptentiveTheme_Base_Versioned_TranslucentStatus_FullScreen);
    }

    @Override // android.support.p001v4.app.DialogFragment
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog onCreateDialog = super.onCreateDialog(bundle);
        onCreateDialog.getWindow().requestFeature(1);
        onCreateDialog.getWindow().getAttributes().windowAnimations = C0724R.C0730style.ApptentiveDialogAnimation;
        onCreateDialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(onCreateDialog.getWindow().getAttributes());
        layoutParams.gravity = 80;
        layoutParams.width = -1;
        layoutParams.height = -1;
        onCreateDialog.getWindow().setAttributes(layoutParams);
        return onCreateDialog;
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C0724R.C0728layout.apptentive_dialog_image_preview, viewGroup);
        try {
            this.previewContainer = inflate.findViewById(C0724R.C0727id.preview_container);
            this.progressBar = (ProgressBar) inflate.findViewById(C0724R.C0727id.preview_progress);
            this.previewImageView = (PreviewImageView) inflate.findViewById(C0724R.C0727id.preview_image);
            this.previewImagePlaceholderView = (ImageView) inflate.findViewById(C0724R.C0727id.preview_image_placeholder);
            this.previewImageView.setGestureCallback(this);
            this.header = (ViewGroup) inflate.findViewById(C0724R.C0727id.header_bar);
            this.closeButton = (ImageButton) this.header.findViewById(C0724R.C0727id.close_dialog);
            this.closeButton.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.messagecenter.view.AttachmentPreviewDialog.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AttachmentPreviewDialog.this.dismiss();
                }
            }));
            this.progressBar.setVisibility(0);
            this.currentImage = (ImageItem) getArguments().getParcelable(KEY_IMAGE);
            this.conversationToken = getArguments().getString("token");
            this.width = layoutInflater.getContext().getResources().getDisplayMetrics().widthPixels;
            this.height = layoutInflater.getContext().getResources().getDisplayMetrics().heightPixels;
            this.previewContainer.setLayoutParams(new LinearLayout.LayoutParams(this.width, this.height));
            ApptentiveAttachmentLoader.getInstance().load(this.conversationToken, this.currentImage.originalPath, this.currentImage.localCachePath, 0, this.previewImageView, this.width, this.height, true, new ApptentiveAttachmentLoader.LoaderCallback() { // from class: com.apptentive.android.sdk.module.messagecenter.view.AttachmentPreviewDialog.2
                @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                public void onDownloadProgress(int i) {
                }

                @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                public void onDownloadStart() {
                    if (AttachmentPreviewDialog.this.progressBar != null) {
                        AttachmentPreviewDialog.this.progressBar.setVisibility(0);
                    }
                }

                @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                public void onLoadTerminated() {
                    if (AttachmentPreviewDialog.this.progressBar != null) {
                        AttachmentPreviewDialog.this.progressBar.setVisibility(8);
                    }
                }

                @Override // com.apptentive.android.sdk.util.image.ApptentiveAttachmentLoader.LoaderCallback
                public void onLoaded(ImageView imageView, int i, Bitmap bitmap) {
                    if (AttachmentPreviewDialog.this.progressBar != null) {
                        AttachmentPreviewDialog.this.progressBar.setVisibility(8);
                    }
                    if (AttachmentPreviewDialog.this.previewImageView == imageView) {
                        AttachmentPreviewDialog.this.previewContainer.setVisibility(0);
                        if (!bitmap.isRecycled()) {
                            AttachmentPreviewDialog.this.previewImageView.setImageBitmap(bitmap);
                            AttachmentPreviewDialog.this.previewImagePlaceholderView.setVisibility(8);
                        }
                    }
                }
            });
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onCreateView()", AttachmentPreviewDialog.class.getSimpleName());
        }
        return inflate;
    }

    @Override // com.apptentive.android.sdk.util.image.PreviewImageView.GestureCallback
    public void onFlingDetected() {
        dismiss();
    }

    @Override // com.apptentive.android.sdk.util.image.PreviewImageView.GestureCallback
    public void onSingleTapDetected() {
        if (this.closeButton.getVisibility() == 8) {
            this.closeButton.setVisibility(0);
        } else {
            this.closeButton.setVisibility(8);
        }
    }
}
