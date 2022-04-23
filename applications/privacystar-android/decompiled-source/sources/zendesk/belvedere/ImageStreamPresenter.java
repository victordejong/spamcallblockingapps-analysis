package zendesk.belvedere;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
import zendesk.belvedere.ImageStreamAdapter;
import zendesk.belvedere.ImageStreamItems;
import zendesk.belvedere.ImageStreamMvp;
import zendesk.belvedere.p041ui.C2612R;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamPresenter.class */
public class ImageStreamPresenter implements ImageStreamMvp.Presenter {
    private final ImageStream imageStreamBackend;
    private final ImageStreamAdapter.Listener imageStreamListener = new ImageStreamAdapter.Listener() { // from class: zendesk.belvedere.ImageStreamPresenter.3
        @Override // zendesk.belvedere.ImageStreamAdapter.Listener
        public void onOpenCamera() {
            if (ImageStreamPresenter.this.model.hasCameraIntent()) {
                ImageStreamPresenter.this.view.openMediaIntent(ImageStreamPresenter.this.model.getCameraIntent(), ImageStreamPresenter.this.imageStreamBackend);
            }
        }

        @Override // zendesk.belvedere.ImageStreamAdapter.Listener
        public boolean onSelectionChanged(ImageStreamItems.Item item) {
            MediaResult mediaResult = item.getMediaResult();
            long maxFileSize = ImageStreamPresenter.this.model.getMaxFileSize();
            boolean z = true;
            if ((mediaResult == null || mediaResult.getSize() > maxFileSize) && maxFileSize != -1) {
                z = false;
                ImageStreamPresenter.this.view.showToast(C2612R.string.belvedere_image_stream_file_too_large);
            } else {
                item.setSelected(!item.isSelected());
                ImageStreamPresenter.this.view.updateToolbarTitle(ImageStreamPresenter.this.setItemSelected(mediaResult, item.isSelected()).size());
                ArrayList arrayList = new ArrayList();
                arrayList.add(mediaResult);
                if (item.isSelected()) {
                    ImageStreamPresenter.this.imageStreamBackend.notifyImageSelected(arrayList);
                } else {
                    ImageStreamPresenter.this.imageStreamBackend.notifyImageDeselected(arrayList);
                }
            }
            return z;
        }
    };
    private final ImageStreamMvp.Model model;
    private final ImageStreamMvp.View view;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageStreamPresenter(ImageStreamMvp.Model model, ImageStreamMvp.View view, ImageStream imageStream) {
        this.model = model;
        this.view = view;
        this.imageStreamBackend = imageStream;
    }

    private void initMenu() {
        if (this.model.hasGooglePhotosIntent()) {
            this.view.showGooglePhotosMenuItem(new View.OnClickListener() { // from class: zendesk.belvedere.ImageStreamPresenter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ImageStreamPresenter.this.view.openMediaIntent(ImageStreamPresenter.this.model.getGooglePhotosIntent(), ImageStreamPresenter.this.imageStreamBackend);
                }
            });
        }
        if (this.model.hasDocumentIntent()) {
            this.view.showDocumentMenuItem(new View.OnClickListener() { // from class: zendesk.belvedere.ImageStreamPresenter.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ImageStreamPresenter.this.view.openMediaIntent(ImageStreamPresenter.this.model.getDocumentIntent(), ImageStreamPresenter.this.imageStreamBackend);
                }
            });
        }
    }

    private void presentStream() {
        boolean z = this.model.showFullScreenOnly() || this.view.shouldShowFullScreen();
        this.view.initViews(z);
        this.view.showImageStream(this.model.getLatestImages(), this.model.getSelectedMediaResults(), z, this.model.hasCameraIntent(), this.imageStreamListener);
        this.imageStreamBackend.notifyVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<MediaResult> setItemSelected(MediaResult mediaResult, boolean z) {
        return z ? this.model.addToSelectedItems(mediaResult) : this.model.removeFromSelectedItems(mediaResult);
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Presenter
    public void dismiss() {
        this.imageStreamBackend.setImageStreamUi(null, null);
        this.imageStreamBackend.notifyScrollListener(0, 0, 0.0f);
        this.imageStreamBackend.notifyDismissed();
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Presenter
    public void init() {
        presentStream();
        initMenu();
        this.view.updateToolbarTitle(this.model.getSelectedMediaResults().size());
    }

    @Override // zendesk.belvedere.ImageStreamMvp.Presenter
    public void onImageStreamScrolled(int i, int i2, float f) {
        if (f >= 0.0f) {
            this.imageStreamBackend.notifyScrollListener(i, i2, f);
        }
    }
}
