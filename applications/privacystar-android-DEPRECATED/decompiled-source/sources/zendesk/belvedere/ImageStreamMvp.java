package zendesk.belvedere;

import android.view.View;
import java.util.List;
import zendesk.belvedere.ImageStreamAdapter;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamMvp.class */
interface ImageStreamMvp {

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamMvp$Model.class */
    public interface Model {
        List<MediaResult> addToSelectedItems(MediaResult mediaResult);

        MediaIntent getCameraIntent();

        MediaIntent getDocumentIntent();

        MediaIntent getGooglePhotosIntent();

        List<MediaResult> getLatestImages();

        long getMaxFileSize();

        List<MediaResult> getSelectedMediaResults();

        boolean hasCameraIntent();

        boolean hasDocumentIntent();

        boolean hasGooglePhotosIntent();

        List<MediaResult> removeFromSelectedItems(MediaResult mediaResult);

        boolean showFullScreenOnly();
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamMvp$Presenter.class */
    public interface Presenter {
        void dismiss();

        void init();

        void onImageStreamScrolled(int i, int i2, float f);
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamMvp$View.class */
    public interface View {
        void initViews(boolean z);

        void openMediaIntent(MediaIntent mediaIntent, ImageStream imageStream);

        boolean shouldShowFullScreen();

        void showDocumentMenuItem(View.OnClickListener onClickListener);

        void showGooglePhotosMenuItem(View.OnClickListener onClickListener);

        void showImageStream(List<MediaResult> list, List<MediaResult> list2, boolean z, boolean z2, ImageStreamAdapter.Listener listener);

        void showToast(int i);

        void updateToolbarTitle(int i);
    }
}
