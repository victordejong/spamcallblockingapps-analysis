package zendesk.belvedere;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import zendesk.belvedere.FixedWidthImageView;
import zendesk.belvedere.ImageStreamAdapter;
import zendesk.belvedere.SelectableView;
import zendesk.belvedere.p041ui.C2612R;
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamItems.class */
class ImageStreamItems {
    private static final int PIC_CAMERA = C2612R.C2614drawable.belvedere_ic_camera_black;
    private static final int LAYOUT_GRID = C2612R.C2616layout.belvedere_stream_list_item_square_static;

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamItems$Item.class */
    static abstract class Item {

        /* renamed from: id */
        private final long f1824id = UUID.randomUUID().hashCode();
        private boolean isSelected = false;
        private final int layoutId;
        private final MediaResult mediaResult;

        Item(int i, MediaResult mediaResult) {
            this.layoutId = i;
            this.mediaResult = mediaResult;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract void bind(View view);

        /* JADX INFO: Access modifiers changed from: package-private */
        public long getId() {
            return this.f1824id;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getLayoutId() {
            return this.layoutId;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public MediaResult getMediaResult() {
            return this.mediaResult;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isSelected() {
            return this.isSelected;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void setSelected(boolean z) {
            this.isSelected = z;
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamItems$StaticItem.class */
    static class StaticItem extends Item {
        private final int iconId;
        private final View.OnClickListener onClickListener;

        private StaticItem(int i, int i2, View.OnClickListener onClickListener) {
            super(i, null);
            this.iconId = i2;
            this.onClickListener = onClickListener;
        }

        @Override // zendesk.belvedere.ImageStreamItems.Item
        public void bind(View view) {
            ((ImageView) view.findViewById(C2612R.C2615id.list_item_static_image)).setImageResource(this.iconId);
            view.findViewById(C2612R.C2615id.list_item_static_click_area).setOnClickListener(this.onClickListener);
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamItems$StreamItemFile.class */
    static class StreamItemFile extends Item {
        private final ImageStreamAdapter.Listener listener;
        private final MediaResult mediaResult;
        private final ResolveInfo resolveInfo;

        StreamItemFile(ImageStreamAdapter.Listener listener, MediaResult mediaResult, Context context) {
            super(C2612R.C2616layout.belvedere_stream_list_item_genric_file, mediaResult);
            this.mediaResult = mediaResult;
            this.resolveInfo = getAppInfoForFile(mediaResult.getName(), context);
            this.listener = listener;
        }

        private ResolveInfo getAppInfoForFile(String str, Context context) {
            PackageManager packageManager = context.getPackageManager();
            MediaResult file = Belvedere.from(context).getFile("tmp", str);
            if (file == null) {
                return null;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(file.getUri());
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            if (queryIntentActivities == null || queryIntentActivities.size() <= 0) {
                return null;
            }
            return queryIntentActivities.get(0);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // zendesk.belvedere.ImageStreamItems.Item
        public void bind(View view) {
            Context context = view.getContext();
            ImageView imageView = (ImageView) view.findViewById(C2612R.C2615id.list_item_file_icon);
            TextView textView = (TextView) view.findViewById(C2612R.C2615id.list_item_file_title);
            TextView textView2 = (TextView) view.findViewById(C2612R.C2615id.list_item_file_label);
            SelectableView selectableView = (SelectableView) view.findViewById(C2612R.C2615id.list_item_file_holder);
            selectableView.setContentDescriptionStrings(context.getString(C2612R.string.belvedere_stream_item_unselect_file_desc, this.mediaResult.getName()), context.getString(C2612R.string.belvedere_stream_item_select_file_desc, this.mediaResult.getName()));
            textView.setText(this.mediaResult.getName());
            if (this.resolveInfo != null) {
                PackageManager packageManager = context.getPackageManager();
                textView2.setText(this.resolveInfo.loadLabel(packageManager));
                imageView.setImageDrawable(this.resolveInfo.loadIcon(packageManager));
            } else {
                textView2.setText(C2612R.string.belvedere_image_stream_unknown_app);
                imageView.setImageResource(17301651);
            }
            selectableView.setSelected(isSelected());
            selectableView.setSelectionListener(new SelectableView.SelectionListener() { // from class: zendesk.belvedere.ImageStreamItems.StreamItemFile.1
                @Override // zendesk.belvedere.SelectableView.SelectionListener
                public boolean onSelectionChanged(boolean z) {
                    return StreamItemFile.this.listener.onSelectionChanged(StreamItemFile.this);
                }
            });
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamItems$StreamItemImage.class */
    static class StreamItemImage extends Item {
        private FixedWidthImageView.CalculatedDimensions dimensions;
        private final ImageStreamAdapter.Listener listener;
        private final MediaResult mediaResult;

        StreamItemImage(ImageStreamAdapter.Listener listener, MediaResult mediaResult) {
            super(C2612R.C2616layout.belvedere_stream_list_item, mediaResult);
            this.listener = listener;
            this.mediaResult = mediaResult;
        }

        @Override // zendesk.belvedere.ImageStreamItems.Item
        public void bind(View view) {
            Context context = view.getContext();
            FixedWidthImageView fixedWidthImageView = (FixedWidthImageView) view.findViewById(C2612R.C2615id.list_item_image);
            SelectableView selectableView = (SelectableView) view.findViewById(C2612R.C2615id.list_item_selectable);
            selectableView.setContentDescriptionStrings(context.getString(C2612R.string.belvedere_stream_item_unselect_image_desc, this.mediaResult.getName()), context.getString(C2612R.string.belvedere_stream_item_select_image_desc, this.mediaResult.getName()));
            if (this.dimensions != null) {
                fixedWidthImageView.showImage(Picasso.with(context), this.mediaResult.getOriginalUri(), this.dimensions);
            } else {
                fixedWidthImageView.showImage(Picasso.with(context), this.mediaResult.getOriginalUri(), this.mediaResult.getWidth(), this.mediaResult.getHeight(), new FixedWidthImageView.DimensionsCallback() { // from class: zendesk.belvedere.ImageStreamItems.StreamItemImage.1
                    @Override // zendesk.belvedere.FixedWidthImageView.DimensionsCallback
                    public void onImageDimensionsFound(FixedWidthImageView.CalculatedDimensions calculatedDimensions) {
                        StreamItemImage.this.dimensions = calculatedDimensions;
                    }
                });
            }
            selectableView.setSelected(isSelected());
            selectableView.setSelectionListener(new SelectableView.SelectionListener() { // from class: zendesk.belvedere.ImageStreamItems.StreamItemImage.2
                @Override // zendesk.belvedere.SelectableView.SelectionListener
                public boolean onSelectionChanged(boolean z) {
                    return StreamItemImage.this.listener.onSelectionChanged(StreamItemImage.this);
                }
            });
        }
    }

    ImageStreamItems() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StaticItem forCameraSquare(final ImageStreamAdapter.Listener listener) {
        return new StaticItem(LAYOUT_GRID, PIC_CAMERA, new View.OnClickListener() { // from class: zendesk.belvedere.ImageStreamItems.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ImageStreamAdapter.Listener.this.onOpenCamera();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<Item> fromMediaResults(List<MediaResult> list, ImageStreamAdapter.Listener listener, Context context) {
        ArrayList arrayList = new ArrayList(list.size());
        for (MediaResult mediaResult : list) {
            if (mediaResult.getMimeType() == null || !mediaResult.getMimeType().startsWith("image")) {
                arrayList.add(new StreamItemFile(listener, mediaResult, context));
            } else {
                arrayList.add(new StreamItemImage(listener, mediaResult));
            }
        }
        return arrayList;
    }
}
