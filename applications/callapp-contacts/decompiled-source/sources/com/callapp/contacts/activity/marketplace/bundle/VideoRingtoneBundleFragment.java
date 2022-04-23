package com.callapp.contacts.activity.marketplace.bundle;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.activity.marketplace.videoRingtone.ItemSnapHelper;
import com.callapp.contacts.activity.marketplace.videoRingtone.OnSnapPositionChangeListener;
import com.callapp.contacts.activity.marketplace.videoRingtone.SnapOnScrollListener;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� 82\u00020\u00012\u00020\u0002:\u00018B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010&\u001a\u00020'J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+H\u0016J&\u0010,\u001a\u0004\u0018\u00010\u000b2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u0001002\b\u00101\u001a\u0004\u0018\u000102H\u0016J\b\u00103\u001a\u00020)H\u0016J\u0010\u00104\u001a\u00020)2\u0006\u00105\u001a\u00020'H\u0016J\u0006\u00106\u001a\u00020)J\u0006\u00107\u001a\u00020)R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\b\u0012\u0004\u0012\u00020\u0018`\u0019X\u0082.¢\u0006\u0002\n��R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u00069"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/OnSnapPositionChangeListener;", "()V", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "rootView", "Landroid/view/View;", "getRootView", "()Landroid/view/View;", "setRootView", "(Landroid/view/View;)V", "snapOnScrollListener", "Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;", "getSnapOnScrollListener", "()Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;", "setSnapOnScrollListener", "(Lcom/callapp/contacts/activity/marketplace/videoRingtone/SnapOnScrollListener;)V", "videoBundleDataList", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;", "Lkotlin/collections/ArrayList;", "videoRingtoneBundleAdapter", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleAdapter;", "getVideoRingtoneBundleAdapter", "()Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleAdapter;", "setVideoRingtoneBundleAdapter", "(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleAdapter;)V", "videoRingtoneBundleInterface", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleInterface;", "getVideoRingtoneBundleInterface", "()Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleInterface;", "setVideoRingtoneBundleInterface", "(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleInterface;)V", "getSelectedIndex", "", "onAttach", "", "context", "Landroid/content/Context;", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDetach", "onSnapPositionChange", "position", "onSwipeLeft", "onSwipeRight", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment.class */
public final class VideoRingtoneBundleFragment extends Fragment implements OnSnapPositionChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public RecyclerView f13244a;

    /* renamed from: b  reason: collision with root package name */
    VideoRingtoneBundleAdapter f13245b;
    private View e;
    private VideoRingtoneBundleInterface f;
    private SnapOnScrollListener g;
    private ArrayList<VideoRingtoneBundleData> h;

    /* renamed from: d  reason: collision with root package name */
    public static final Companion f13243d = new Companion(null);

    /* renamed from: c  reason: collision with root package name */
    static int f13242c = -1;

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u000b\u001a\u00020\f2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0011"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$Companion;", "", "()V", "EXTRA_VIDEO_DATA", "", "selectedVideoRingtoneIndex", "", "getSelectedVideoRingtoneIndex", "()I", "setSelectedVideoRingtoneIndex", "(I)V", "newInstance", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment;", "videoBundleDataList", "Ljava/util/ArrayList;", "Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;", "Lkotlin/collections/ArrayList;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static VideoRingtoneBundleFragment a(ArrayList<VideoRingtoneBundleData> videoBundleDataList) {
            p.d(videoBundleDataList, "videoBundleDataList");
            VideoRingtoneBundleFragment videoRingtoneBundleFragment = new VideoRingtoneBundleFragment();
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("extra_video_data", videoBundleDataList);
            v vVar = v.f38654a;
            videoRingtoneBundleFragment.setArguments(bundle);
            return videoRingtoneBundleFragment;
        }

        public final int getSelectedVideoRingtoneIndex() {
            return VideoRingtoneBundleFragment.f13242c;
        }

        public final void setSelectedVideoRingtoneIndex(int i) {
            VideoRingtoneBundleFragment.f13242c = i;
        }
    }

    @Override // com.callapp.contacts.activity.marketplace.videoRingtone.OnSnapPositionChangeListener
    public final void a(int i) {
        f13242c = i;
        RecyclerView recyclerView = this.f13244a;
        if (recyclerView == null) {
            p.a("recyclerView");
        }
        RecyclerView.i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager != null) {
            layoutManager.getChildAt(i);
        }
        VideoRingtoneBundleInterface videoRingtoneBundleInterface = this.f;
        if (videoRingtoneBundleInterface != null) {
            videoRingtoneBundleInterface.c(i);
        }
    }

    public final RecyclerView getRecyclerView() {
        RecyclerView recyclerView = this.f13244a;
        if (recyclerView == null) {
            p.a("recyclerView");
        }
        return recyclerView;
    }

    public final int getSelectedIndex() {
        return f13242c;
    }

    public final VideoRingtoneBundleInterface getVideoRingtoneBundleInterface() {
        return this.f;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        p.d(context, "context");
        super.onAttach(context);
        if (context instanceof VideoRingtoneBundleInterface) {
            this.f = (VideoRingtoneBundleInterface) context;
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            ArrayList<VideoRingtoneBundleData> parcelableArrayList = arguments.getParcelableArrayList("extra_video_data");
            Objects.requireNonNull(parcelableArrayList, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleData> /* = java.util.ArrayList<com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleData> */");
            this.h = parcelableArrayList;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        p.d(inflater, "inflater");
        View inflate = inflater.inflate(2131559127, viewGroup, false);
        this.e = inflate;
        RecyclerView recyclerView = inflate != null ? (RecyclerView) inflate.findViewById(2131362629) : null;
        p.a(recyclerView);
        this.f13244a = recyclerView;
        if (recyclerView == null) {
            p.a("recyclerView");
        }
        recyclerView.setVisibility(0);
        RecyclerView recyclerView2 = this.f13244a;
        if (recyclerView2 == null) {
            p.a("recyclerView");
        }
        recyclerView2.setHasFixedSize(true);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext(), 0, false);
        RecyclerView recyclerView3 = this.f13244a;
        if (recyclerView3 == null) {
            p.a("recyclerView");
        }
        recyclerView3.setLayoutManager(linearLayoutManager);
        ArrayList<VideoRingtoneBundleData> arrayList = this.h;
        if (arrayList == null) {
            p.a("videoBundleDataList");
        }
        this.f13245b = new VideoRingtoneBundleAdapter(arrayList, getContext());
        RecyclerView recyclerView4 = this.f13244a;
        if (recyclerView4 == null) {
            p.a("recyclerView");
        }
        recyclerView4.a(new RecyclerView.j() { // from class: com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleFragment$onCreateView$1
            @Override // androidx.recyclerview.widget.RecyclerView.j
            public final void a(View view) {
                p.d(view, "view");
                if (VideoRingtoneBundleFragment.f13243d.getSelectedVideoRingtoneIndex() == -1) {
                    VideoRingtoneBundleFragment.f13243d.setSelectedVideoRingtoneIndex(0);
                    VideoRingtoneBundleInterface videoRingtoneBundleInterface = VideoRingtoneBundleFragment.this.getVideoRingtoneBundleInterface();
                    if (videoRingtoneBundleInterface != null) {
                        videoRingtoneBundleInterface.a(view);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.j
            public final void b(View view) {
                p.d(view, "view");
            }
        });
        VideoRingtoneBundleAdapter videoRingtoneBundleAdapter = this.f13245b;
        if (videoRingtoneBundleAdapter != null) {
            videoRingtoneBundleAdapter.registerAdapterDataObserver(new RecyclerView.c() { // from class: com.callapp.contacts.activity.marketplace.bundle.VideoRingtoneBundleFragment$onCreateView$2
                @Override // androidx.recyclerview.widget.RecyclerView.c
                public final void onChanged() {
                    if (VideoRingtoneBundleFragment.f13243d.getSelectedVideoRingtoneIndex() != -1) {
                        VideoRingtoneBundleFragment.this.getRecyclerView().d(VideoRingtoneBundleFragment.f13243d.getSelectedVideoRingtoneIndex());
                    }
                }
            });
        }
        RecyclerView recyclerView5 = this.f13244a;
        if (recyclerView5 == null) {
            p.a("recyclerView");
        }
        recyclerView5.setAdapter(this.f13245b);
        ItemSnapHelper itemSnapHelper = new ItemSnapHelper();
        RecyclerView recyclerView6 = this.f13244a;
        if (recyclerView6 == null) {
            p.a("recyclerView");
        }
        itemSnapHelper.a(recyclerView6);
        this.g = new SnapOnScrollListener(itemSnapHelper, SnapOnScrollListener.Behavior.NOTIFY_ON_SCROLL_STATE_IDLE, this, 2131230831, false);
        RecyclerView recyclerView7 = this.f13244a;
        if (recyclerView7 == null) {
            p.a("recyclerView");
        }
        SnapOnScrollListener snapOnScrollListener = this.g;
        p.a(snapOnScrollListener);
        recyclerView7.a(snapOnScrollListener);
        return this.e;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        this.f = null;
    }
}
