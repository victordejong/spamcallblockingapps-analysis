package com.asus.updatesdk.activity;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.asus.updatesdk.AppInfo;
import com.asus.updatesdk.R;
import com.asus.updatesdk.ZenUiFamily;
import com.asus.updatesdk.utility.GeneralUtils;
import com.bumptech.glide.a;
import com.bumptech.glide.e;
import com.bumptech.glide.g.b.d;
import com.bumptech.glide.load.resource.a.b;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/activity/AppInfoAdapter.class */
public class AppInfoAdapter extends ArrayAdapter<AppInfo> {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<AppInfo> f3123a;

    /* renamed from: b  reason: collision with root package name */
    private Context f3124b;
    private int c;
    private int d;
    private int e;

    /* renamed from: com.asus.updatesdk.activity.AppInfoAdapter$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/activity/AppInfoAdapter$2.class */
    static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3127a = new int[ZenUiFamily.AppStatus.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:14:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0033 -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f3127a[ZenUiFamily.AppStatus.IMPORTANT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3127a[ZenUiFamily.AppStatus.UP_TO_DATE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3127a[ZenUiFamily.AppStatus.NOT_INSTALLED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/activity/AppInfoAdapter$ViewHolder.class */
    public static class ViewHolder {

        /* renamed from: a  reason: collision with root package name */
        TextView f3128a;

        /* renamed from: b  reason: collision with root package name */
        TextView f3129b;
        TextView c;
        TextView d;
        RatingBar e;
        ImageView f;
        TextView g;
        ImageView h;
        RelativeLayout i;

        ViewHolder() {
        }
    }

    public AppInfoAdapter(Context context, int i, ArrayList<AppInfo> arrayList) {
        super(context, i, arrayList);
        this.f3123a = arrayList;
        this.f3124b = context;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        final ViewHolder viewHolder;
        int i2;
        int i3;
        if (view == null) {
            ViewHolder viewHolder2 = new ViewHolder();
            view = ((LayoutInflater) this.f3124b.getSystemService("layout_inflater")).inflate(R.layout.ud_sdk_listview_item, viewGroup, false);
            viewHolder2.f3128a = (TextView) view.findViewById(R.id.ud_sdk_item_app_title);
            viewHolder2.f3129b = (TextView) view.findViewById(R.id.ud_sdk_item_app_rating);
            viewHolder2.c = (TextView) view.findViewById(R.id.ud_sdk_item_app_downloads);
            viewHolder2.d = (TextView) view.findViewById(R.id.ud_sdk_slogan_text_view);
            viewHolder2.e = (RatingBar) view.findViewById(R.id.ud_sdk_item_app_rating_bar);
            viewHolder2.f = (ImageView) view.findViewById(R.id.ud_sdk_item_image_view_icon);
            viewHolder2.g = (TextView) view.findViewById(R.id.ud_sdk_list_view_button_text);
            viewHolder2.h = (ImageView) view.findViewById(R.id.ud_sdk_list_view_button);
            viewHolder2.i = (RelativeLayout) view.findViewById(R.id.ud_sdk_important_relativeLayout);
            view.setTag(viewHolder2);
            viewHolder = viewHolder2;
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        String appName = GeneralUtils.getAppName(this.f3124b, this.f3123a.get(i).getPackageName());
        if (appName != null) {
            viewHolder.f3128a.setText(appName);
        } else {
            viewHolder.f3128a.setText(this.f3123a.get(i).getTitle());
        }
        viewHolder.d.setText(this.f3123a.get(i).getSlogan());
        viewHolder.f3129b.setText(String.valueOf(this.f3123a.get(i).getRating()));
        viewHolder.c.setText("(" + this.f3123a.get(i).getDownloadCounts() + "K " + this.f3124b.getResources().getString(R.string.ud_sdk_downloads) + ")");
        viewHolder.e.setRating(this.f3123a.get(i).getRating());
        if (this.f3123a.get(i).getIconBitmap() != null) {
            e.a(viewHolder.f);
            viewHolder.f.setImageBitmap(this.f3123a.get(i).getIconBitmap());
        } else {
            e.b(this.f3124b).a(this.f3123a.get(i).getPlayImageUrl()).a(R.mipmap.ud_sdk_none_image_icon).a((a<String>) new d(viewHolder.f) { // from class: com.asus.updatesdk.activity.AppInfoAdapter.1
                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.bumptech.glide.g.b.d
                public final void a(b bVar) {
                    super.a(bVar);
                    viewHolder.f.setImageDrawable(bVar);
                }

                @Override // com.bumptech.glide.g.b.e, com.bumptech.glide.g.b.a, com.bumptech.glide.g.b.j
                public void onLoadFailed(Exception exc, Drawable drawable) {
                    super.onLoadFailed(exc, drawable);
                    e.b(AppInfoAdapter.this.f3124b).a(((AppInfo) AppInfoAdapter.this.f3123a.get(i)).getCDNImageUrl()).a(R.mipmap.ud_sdk_none_image_icon).b(R.mipmap.ud_sdk_none_image_icon).a(viewHolder.f);
                }
            });
        }
        switch (AnonymousClass2.f3127a[this.f3123a.get(i).getStatus().ordinal()]) {
            case 1:
                i2 = R.string.ud_sdk_update;
                i3 = this.f3124b.getResources().getColor(R.color.ud_sdk_important_remind_color);
                viewHolder.i.setVisibility(0);
                break;
            case 2:
                i2 = R.string.ud_sdk_open;
                i3 = this.e;
                viewHolder.i.setVisibility(8);
                break;
            case 3:
                i2 = R.string.ud_sdk_install;
                i3 = this.c;
                viewHolder.i.setVisibility(8);
                break;
            default:
                i2 = R.string.ud_sdk_update;
                i3 = this.d;
                viewHolder.i.setVisibility(8);
                break;
        }
        viewHolder.h.setColorFilter(i3);
        viewHolder.g.setText(i2);
        return view;
    }

    public void setItemButtonColor(int i, int i2, int i3) {
        this.c = i;
        this.d = i2;
        this.e = i3;
        notifyDataSetChanged();
    }
}
