package zendesk.belvedere;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.app.Fragment;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import zendesk.belvedere.BelvedereUi;
import zendesk.belvedere.PermissionManager;
import zendesk.belvedere.p041ui.C2612R;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStream.class */
public class ImageStream extends Fragment {
    private PermissionManager permissionManager;
    private WeakReference<KeyboardHelper> keyboardHelper = new WeakReference<>(null);
    private List<WeakReference<Listener>> imageStreamListener = new ArrayList();
    private List<WeakReference<ScrollListener>> imageStreamScrollListener = new ArrayList();
    private ImageStreamUi imageStreamPopup = null;
    private BelvedereUi.UiConfig uiConfig = null;
    private boolean wasOpen = false;

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStream$Listener.class */
    public interface Listener {
        void onDismissed();

        void onMediaDeselected(List<MediaResult> list);

        void onMediaSelected(List<MediaResult> list);

        void onVisible();
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStream$ScrollListener.class */
    public interface ScrollListener {
        void onScroll(int i, int i2, float f);
    }

    public void addListener(Listener listener) {
        this.imageStreamListener.add(new WeakReference<>(listener));
    }

    public void addScrollListener(ScrollListener scrollListener) {
        this.imageStreamScrollListener.add(new WeakReference<>(scrollListener));
    }

    public void dismiss() {
        if (isAttachmentsPopupVisible()) {
            this.imageStreamPopup.dismiss();
        }
    }

    public KeyboardHelper getKeyboardHelper() {
        return this.keyboardHelper.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handlePermissions(List<MediaIntent> list, PermissionManager.PermissionCallback permissionCallback) {
        this.permissionManager.handlePermissions(this, list, permissionCallback);
    }

    public boolean isAttachmentsPopupVisible() {
        return this.imageStreamPopup != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyDismissed() {
        for (WeakReference<Listener> weakReference : this.imageStreamListener) {
            Listener listener = weakReference.get();
            if (listener != null) {
                listener.onDismissed();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyImageDeselected(List<MediaResult> list) {
        for (WeakReference<Listener> weakReference : this.imageStreamListener) {
            Listener listener = weakReference.get();
            if (listener != null) {
                listener.onMediaDeselected(list);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyImageSelected(List<MediaResult> list) {
        for (WeakReference<Listener> weakReference : this.imageStreamListener) {
            Listener listener = weakReference.get();
            if (listener != null) {
                listener.onMediaSelected(list);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyScrollListener(int i, int i2, float f) {
        for (WeakReference<ScrollListener> weakReference : this.imageStreamScrollListener) {
            ScrollListener scrollListener = weakReference.get();
            if (scrollListener != null) {
                scrollListener.onScroll(i, i2, f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyVisible() {
        for (WeakReference<Listener> weakReference : this.imageStreamListener) {
            Listener listener = weakReference.get();
            if (listener != null) {
                listener.onVisible();
            }
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        Belvedere.from(getContext()).getFilesFromActivityOnResult(i, i2, intent, new Callback<List<MediaResult>>() { // from class: zendesk.belvedere.ImageStream.1
            public void success(List<MediaResult> list) {
                ArrayList arrayList = new ArrayList(list.size());
                for (MediaResult mediaResult : list) {
                    if (mediaResult.getSize() <= ImageStream.this.uiConfig.getMaxFileSize() || ImageStream.this.uiConfig.getMaxFileSize() == -1) {
                        arrayList.add(mediaResult);
                    }
                }
                if (arrayList.size() != list.size()) {
                    Toast.makeText(ImageStream.this.getContext(), C2612R.string.belvedere_image_stream_file_too_large, 0).show();
                }
                ImageStream.this.notifyImageSelected(arrayList);
            }
        }, false);
    }

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
        this.permissionManager = new PermissionManager(getContext());
    }

    @Override // android.support.p001v4.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.imageStreamPopup != null) {
            this.imageStreamPopup.dismiss();
            this.wasOpen = true;
            return;
        }
        this.wasOpen = false;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (!this.permissionManager.onRequestPermissionsResult(this, i, strArr, iArr)) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setImageStreamUi(ImageStreamUi imageStreamUi, BelvedereUi.UiConfig uiConfig) {
        this.imageStreamPopup = imageStreamUi;
        if (uiConfig != null) {
            this.uiConfig = uiConfig;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setKeyboardHelper(KeyboardHelper keyboardHelper) {
        this.keyboardHelper = new WeakReference<>(keyboardHelper);
    }

    public boolean wasOpen() {
        return this.wasOpen;
    }
}
