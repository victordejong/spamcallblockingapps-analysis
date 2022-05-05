package zendesk.belvedere;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.app.FragmentManager;
import android.support.p004v7.app.AppCompatActivity;
import android.view.ViewGroup;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import zendesk.belvedere.PermissionManager;
import zendesk.belvedere.p041ui.C2612R;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/BelvedereUi.class */
public class BelvedereUi {
    private static final String EXTRA_MEDIA_INTENT = "extra_intent";
    private static final String FRAGMENT_TAG = "BelvedereDialog";
    private static final String FRAGMENT_TAG_POPUP = "belvedere_image_stream";

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/BelvedereUi$ImageStreamBuilder.class */
    public static class ImageStreamBuilder {
        private final Context context;
        private List<MediaResult> extraItems;
        private boolean fullScreenOnly;
        private long maxFileSize;
        private List<MediaIntent> mediaIntents;
        private boolean resolveMedia;
        private List<MediaResult> selectedItems;
        private List<Integer> touchableItems;

        private ImageStreamBuilder(Context context) {
            this.resolveMedia = true;
            this.mediaIntents = new ArrayList();
            this.selectedItems = new ArrayList();
            this.extraItems = new ArrayList();
            this.touchableItems = new ArrayList();
            this.maxFileSize = -1L;
            this.fullScreenOnly = false;
            this.context = context;
        }

        public void showPopup(AppCompatActivity appCompatActivity) {
            final ImageStream install = BelvedereUi.install(appCompatActivity);
            install.handlePermissions(this.mediaIntents, new PermissionManager.PermissionCallback() { // from class: zendesk.belvedere.BelvedereUi.ImageStreamBuilder.1
                @Override // zendesk.belvedere.PermissionManager.PermissionCallback
                public void onPermissionsDenied() {
                    FragmentActivity activity = install.getActivity();
                    if (activity != null) {
                        Toast.makeText(activity, C2612R.string.belvedere_permissions_denied, 0).show();
                    }
                }

                @Override // zendesk.belvedere.PermissionManager.PermissionCallback
                public void onPermissionsGranted(final List<MediaIntent> list) {
                    final FragmentActivity activity = install.getActivity();
                    if (activity != null && !activity.isChangingConfigurations()) {
                        final ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
                        viewGroup.post(new Runnable() { // from class: zendesk.belvedere.BelvedereUi.ImageStreamBuilder.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                UiConfig uiConfig = new UiConfig(list, ImageStreamBuilder.this.selectedItems, ImageStreamBuilder.this.extraItems, ImageStreamBuilder.this.resolveMedia, ImageStreamBuilder.this.touchableItems, ImageStreamBuilder.this.maxFileSize, ImageStreamBuilder.this.fullScreenOnly);
                                install.setImageStreamUi(ImageStreamUi.show(activity, viewGroup, install, uiConfig), uiConfig);
                            }
                        });
                    }
                }
            });
        }

        public ImageStreamBuilder withCameraIntent() {
            this.mediaIntents.add(Belvedere.from(this.context).camera().build());
            return this;
        }

        public ImageStreamBuilder withDocumentIntent(@NonNull String str, boolean z) {
            this.mediaIntents.add(Belvedere.from(this.context).document().allowMultiple(z).contentType(str).build());
            return this;
        }

        public ImageStreamBuilder withExtraItems(List<MediaResult> list) {
            this.extraItems = new ArrayList(list);
            return this;
        }

        public ImageStreamBuilder withFullScreenOnly(boolean z) {
            this.fullScreenOnly = z;
            return this;
        }

        public ImageStreamBuilder withMaxFileSize(long j) {
            this.maxFileSize = j;
            return this;
        }

        public ImageStreamBuilder withSelectedItems(List<MediaResult> list) {
            this.selectedItems = new ArrayList(list);
            return this;
        }

        public ImageStreamBuilder withTouchableItems(@IdRes int... iArr) {
            ArrayList arrayList = new ArrayList(iArr.length);
            for (int i : iArr) {
                arrayList.add(Integer.valueOf(i));
            }
            this.touchableItems = arrayList;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/BelvedereUi$UiConfig.class */
    public static class UiConfig implements Parcelable {
        public static final Parcelable.Creator<UiConfig> CREATOR = new Parcelable.Creator<UiConfig>() { // from class: zendesk.belvedere.BelvedereUi.UiConfig.1
            @Override // android.os.Parcelable.Creator
            public UiConfig createFromParcel(Parcel parcel) {
                return new UiConfig(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public UiConfig[] newArray(int i) {
                return new UiConfig[i];
            }
        };
        private final List<MediaResult> extraItems;
        private final boolean fullScreenOnly;
        private final List<MediaIntent> intents;
        private final long maxFileSize;
        private final boolean resolveMedia;
        private final List<MediaResult> selectedItems;
        private final List<Integer> touchableElements;

        UiConfig() {
            this.intents = new ArrayList();
            this.selectedItems = new ArrayList();
            this.extraItems = new ArrayList();
            this.touchableElements = new ArrayList();
            this.resolveMedia = true;
            this.maxFileSize = -1L;
            this.fullScreenOnly = false;
        }

        UiConfig(Parcel parcel) {
            this.intents = parcel.createTypedArrayList(MediaIntent.CREATOR);
            this.selectedItems = parcel.createTypedArrayList(MediaResult.CREATOR);
            this.extraItems = parcel.createTypedArrayList(MediaResult.CREATOR);
            this.touchableElements = new ArrayList();
            parcel.readList(this.touchableElements, Integer.class.getClassLoader());
            boolean z = false;
            this.resolveMedia = parcel.readInt() == 1;
            this.maxFileSize = parcel.readLong();
            this.fullScreenOnly = parcel.readInt() == 1 ? true : z;
        }

        UiConfig(List<MediaIntent> list, List<MediaResult> list2, List<MediaResult> list3, boolean z, List<Integer> list4, long j, boolean z2) {
            this.intents = list;
            this.selectedItems = list2;
            this.extraItems = list3;
            this.resolveMedia = z;
            this.touchableElements = list4;
            this.maxFileSize = j;
            this.fullScreenOnly = z2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<MediaResult> getExtraItems() {
            return this.extraItems;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<MediaIntent> getIntents() {
            return this.intents;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long getMaxFileSize() {
            return this.maxFileSize;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<MediaResult> getSelectedItems() {
            return this.selectedItems;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public List<Integer> getTouchableElements() {
            return this.touchableElements;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean showFullScreenOnly() {
            return this.fullScreenOnly;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeTypedList(this.intents);
            parcel.writeTypedList(this.selectedItems);
            parcel.writeTypedList(this.extraItems);
            parcel.writeList(this.touchableElements);
            parcel.writeInt(this.resolveMedia ? 1 : 0);
            parcel.writeLong(this.maxFileSize);
            parcel.writeInt(this.fullScreenOnly ? 1 : 0);
        }
    }

    private static Bundle getBundle(List<MediaIntent> list, List<MediaResult> list2, List<MediaResult> list3, boolean z, List<Integer> list4) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        if (list2 != null) {
            arrayList2.addAll(list2);
        }
        if (list3 != null) {
            arrayList3.addAll(list3);
        }
        UiConfig uiConfig = new UiConfig(arrayList, arrayList2, arrayList3, z, list4, -1L, false);
        Bundle bundle = new Bundle();
        bundle.putParcelable(EXTRA_MEDIA_INTENT, uiConfig);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static UiConfig getUiConfig(Bundle bundle) {
        UiConfig uiConfig = (UiConfig) bundle.getParcelable(EXTRA_MEDIA_INTENT);
        return uiConfig == null ? new UiConfig() : uiConfig;
    }

    public static ImageStreamBuilder imageStream(@NonNull Context context) {
        return new ImageStreamBuilder(context);
    }

    public static ImageStream install(@NonNull AppCompatActivity appCompatActivity) {
        ImageStream imageStream;
        FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(FRAGMENT_TAG_POPUP);
        if (findFragmentByTag instanceof ImageStream) {
            imageStream = (ImageStream) findFragmentByTag;
        } else {
            imageStream = new ImageStream();
            supportFragmentManager.beginTransaction().add(imageStream, FRAGMENT_TAG_POPUP).commit();
        }
        imageStream.setKeyboardHelper(KeyboardHelper.inject(appCompatActivity));
        return imageStream;
    }

    public static void showDialog(FragmentManager fragmentManager, List<MediaIntent> list) {
        if (list != null && list.size() != 0) {
            BelvedereDialog belvedereDialog = new BelvedereDialog();
            belvedereDialog.setArguments(getBundle(list, new ArrayList(0), new ArrayList(0), true, new ArrayList(0)));
            belvedereDialog.show(fragmentManager, FRAGMENT_TAG);
        }
    }

    public static void showDialog(FragmentManager fragmentManager, MediaIntent... mediaIntentArr) {
        if (mediaIntentArr != null && mediaIntentArr.length != 0) {
            showDialog(fragmentManager, Arrays.asList(mediaIntentArr));
        }
    }
}
