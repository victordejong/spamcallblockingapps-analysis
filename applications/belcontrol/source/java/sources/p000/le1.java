package p000;

import android.app.Activity;
import android.widget.Adapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.recyclerview.widget.RecyclerView$g;
import com.mopub.nativeads.MoPubAdAdapter;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.MoPubRecyclerAdapter;
import com.mopub.nativeads.MoPubStaticNativeAdRenderer;
import com.mopub.nativeads.RequestParameters;
import com.mopub.nativeads.ViewBinder;
import java.util.EnumSet;
/* renamed from: le1 */
/* loaded from: classes3-dex2jar.jar:le1.class */
public class le1 {
    /* renamed from: a */
    public static void m1302a(Adapter adapter) {
        if (adapter == null || !(adapter instanceof MoPubAdAdapter)) {
            return;
        }
        ((MoPubAdAdapter) adapter).destroy();
    }

    /* renamed from: b */
    public static void m1301b(RecyclerView$g recyclerView$g) {
        if (recyclerView$g == null || !(recyclerView$g instanceof MoPubRecyclerAdapter)) {
            return;
        }
        ((MoPubRecyclerAdapter) recyclerView$g).destroy();
    }

    /* renamed from: c */
    public static int m1300c(ListAdapter listAdapter, int i) {
        return (listAdapter == null || !(listAdapter instanceof MoPubAdAdapter)) ? i : ((MoPubAdAdapter) listAdapter).getAdjustedPosition(i);
    }

    /* renamed from: d */
    public static int m1299d(ListAdapter listAdapter, int i) {
        int i2 = i;
        if (listAdapter != null) {
            if (!(listAdapter instanceof MoPubAdAdapter)) {
                i2 = i;
            } else {
                int count = listAdapter.getCount();
                MoPubAdAdapter moPubAdAdapter = (MoPubAdAdapter) listAdapter;
                while (true) {
                    i2 = i;
                    if (i >= count - 1) {
                        break;
                    } else if (!moPubAdAdapter.isAd(i)) {
                        i2 = i;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        return i2;
    }

    /* renamed from: e */
    public static void m1298e(ListView listView, String str) {
        ListAdapter adapter;
        if (listView == null || (adapter = listView.getAdapter()) == null || !(adapter instanceof MoPubAdAdapter)) {
            return;
        }
        ((MoPubAdAdapter) adapter).refreshAds(listView, str);
    }

    /* renamed from: f */
    public static void m1297f(RecyclerView$g recyclerView$g, String str) {
        if (recyclerView$g == null || !(recyclerView$g instanceof MoPubRecyclerAdapter)) {
            return;
        }
        ((MoPubRecyclerAdapter) recyclerView$g).loadAds(str, new RequestParameters.Builder().desiredAssets(EnumSet.of(RequestParameters.NativeAdAsset.TITLE, RequestParameters.NativeAdAsset.TEXT, RequestParameters.NativeAdAsset.CALL_TO_ACTION_TEXT, RequestParameters.NativeAdAsset.MAIN_IMAGE)).build());
    }

    /* renamed from: g */
    public static Adapter m1296g(Activity activity, Adapter adapter) {
        if (!fa1.m1833q() || fa1.m1832r().booleanValue()) {
            return adapter;
        }
        MoPubStaticNativeAdRenderer moPubStaticNativeAdRenderer = new MoPubStaticNativeAdRenderer(new ViewBinder.Builder(2131558608).titleId(2131362932).textId(2131362931).mainImageId(2131362756).iconImageId(2131362915).callToActionId(2131362914).privacyInformationIconImageId(2131362916).build());
        MoPubAdAdapter moPubAdAdapter = new MoPubAdAdapter(activity, adapter, MoPubNativeAdPositioning.serverPositioning());
        moPubAdAdapter.registerAdRenderer(moPubStaticNativeAdRenderer);
        return moPubAdAdapter;
    }

    /* renamed from: h */
    public static RecyclerView$g m1295h(Activity activity, RecyclerView$g recyclerView$g) {
        if (!fa1.m1833q() || fa1.m1832r().booleanValue()) {
            return recyclerView$g;
        }
        MoPubStaticNativeAdRenderer moPubStaticNativeAdRenderer = new MoPubStaticNativeAdRenderer(new ViewBinder.Builder(2131558608).titleId(2131362932).textId(2131362931).mainImageId(2131362756).iconImageId(2131362915).callToActionId(2131362914).privacyInformationIconImageId(2131362916).build());
        MoPubRecyclerAdapter moPubRecyclerAdapter = new MoPubRecyclerAdapter(activity, recyclerView$g, MoPubNativeAdPositioning.serverPositioning());
        moPubRecyclerAdapter.registerAdRenderer(moPubStaticNativeAdRenderer);
        return moPubRecyclerAdapter;
    }
}
