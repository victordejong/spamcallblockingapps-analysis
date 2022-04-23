package zendesk.support.request;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.p001v4.view.ViewCompat;
import android.support.p001v4.view.animation.PathInterpolatorCompat;
import android.support.p004v7.app.AppCompatActivity;
import android.support.p004v7.util.ListUpdateCallback;
import android.support.p004v7.widget.DefaultItemAnimator;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.LinearSmoothScroller;
import android.support.p004v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import com.squareup.picasso.Picasso;
import com.zendesk.sdk.C1790R;
import javax.inject.Inject;
import zendesk.belvedere.BelvedereUi;
import zendesk.belvedere.ImageStream;
import zendesk.suas.CombinedSubscription;
import zendesk.suas.Store;
import zendesk.suas.Subscription;
import zendesk.support.request.CellType;
import zendesk.support.request.ComponentRequestAdapter;
import zendesk.support.request.ViewMessageComposer;
@SuppressLint({"ViewConstructor"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestViewConversationsEnabled.class */
public class RequestViewConversationsEnabled extends FrameLayout implements RequestView {
    private AppCompatActivity activity;
    @Inject

    /* renamed from: af */
    ActionFactory f1894af;
    @Inject
    CellFactory cellFactory;
    private ImagePickerDragAnimation imagePickerDragAnimation;
    private ImageStream imageStream;
    private ComponentMessageComposer messageComposerComponent;
    private ViewMessageComposer messageComposerView;
    @Inject
    Picasso picasso;
    private RecyclerView recyclerView;
    @Inject
    Store store;
    private Subscription subscription;
    private View toolbar;
    private View toolbarContainer;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation.class */
    public static class ImagePickerDragAnimation implements ImageStream.ScrollListener {
        private final Interpolator cubicBezierInterpolator = PathInterpolatorCompat.create(0.19f, 0.0f, 0.2f, 1.0f);
        private final View messageComposer;
        private final View recycler;
        private final View toolbar;
        private final View toolbarContainer;

        ImagePickerDragAnimation(View view, View view2, View view3, View view4) {
            this.toolbarContainer = view;
            this.messageComposer = view2;
            this.recycler = view3;
            this.toolbar = view4;
        }

        private void animateBackground(int i, float f) {
            float interpolation = (int) (this.cubicBezierInterpolator.getInterpolation(f * 0.3f) * (-1.0f) * i);
            this.messageComposer.setTranslationY(interpolation);
            this.recycler.setTranslationY(interpolation);
        }

        private void animateToolbar(int i, float f) {
            float f2 = i;
            int minimumHeight = ViewCompat.getMinimumHeight(this.toolbar);
            if (i > 0) {
                float f3 = f2 - (f * f2);
                float f4 = minimumHeight;
                if (f3 < f4) {
                    this.toolbarContainer.setTranslationY(f3 - f4);
                    return;
                }
            }
            this.toolbarContainer.setTranslationY(0.0f);
        }

        @Override // zendesk.belvedere.ImageStream.ScrollListener
        public void onScroll(int i, int i2, float f) {
            animateToolbar(i2, f);
            animateBackground(i2, f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestViewConversationsEnabled$RecyclerListener.class */
    public static class RecyclerListener implements ViewMessageComposer.OnHeightChangeListener, View.OnFocusChangeListener, View.OnLayoutChangeListener, ListUpdateCallback {
        private static final int FIXED_SCROLL_TIME = 50;
        private static final int SCROLL_INSTANT = 1;
        private static final int SCROLL_SMOOTH_FIXED_TIME = 3;
        private static final int SCROLL_SMOOTH_FIXED_VELOCITY = 2;
        private final LinearLayoutManager linearLayoutManager;
        private final int recyclerDefaultBottomPadding;
        private final RecyclerView recyclerView;

        RecyclerListener(RecyclerView recyclerView, LinearLayoutManager linearLayoutManager) {
            this.recyclerView = recyclerView;
            this.linearLayoutManager = linearLayoutManager;
            this.recyclerDefaultBottomPadding = recyclerView.getResources().getDimensionPixelOffset(C1790R.dimen.zs_request_recycler_padding_bottom);
        }

        private void postScrollToBottom(final int i) {
            this.recyclerView.post(new Runnable() { // from class: zendesk.support.request.RequestViewConversationsEnabled.RecyclerListener.3
                @Override // java.lang.Runnable
                public void run() {
                    RecyclerListener.this.scrollToBottom(i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void scrollToBottom(int i) {
            int itemCount = this.recyclerView.getAdapter().getItemCount() - 1;
            if (itemCount < 0) {
                return;
            }
            if (i == 1) {
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = this.recyclerView.findViewHolderForAdapterPosition(itemCount);
                this.linearLayoutManager.scrollToPositionWithOffset(itemCount, (this.recyclerView.getPaddingBottom() + ((findViewHolderForAdapterPosition == null || findViewHolderForAdapterPosition.itemView == null) ? 0 : findViewHolderForAdapterPosition.itemView.getHeight())) * (-1));
            } else if (i == 3) {
                LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(this.recyclerView.getContext()) { // from class: zendesk.support.request.RequestViewConversationsEnabled.RecyclerListener.2
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // android.support.p004v7.widget.LinearSmoothScroller
                    public int calculateTimeForScrolling(int i2) {
                        return 50;
                    }
                };
                linearSmoothScroller.setTargetPosition(itemCount);
                this.recyclerView.getLayoutManager().startSmoothScroll(linearSmoothScroller);
            } else if (i == 2) {
                LinearSmoothScroller linearSmoothScroller2 = new LinearSmoothScroller(this.recyclerView.getContext());
                linearSmoothScroller2.setTargetPosition(itemCount);
                this.recyclerView.getLayoutManager().startSmoothScroll(linearSmoothScroller2);
            }
        }

        @Override // android.support.p004v7.util.ListUpdateCallback
        public void onChanged(int i, int i2, Object obj) {
            this.recyclerView.getAdapter().notifyItemRangeChanged(i, i2, obj);
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                postScrollToBottom(2);
            }
        }

        @Override // zendesk.support.request.ViewMessageComposer.OnHeightChangeListener
        public void onHeightChange(final int i) {
            this.recyclerView.post(new Runnable() { // from class: zendesk.support.request.RequestViewConversationsEnabled.RecyclerListener.1
                @Override // java.lang.Runnable
                public void run() {
                    int paddingLeft = RecyclerListener.this.recyclerView.getPaddingLeft();
                    int paddingRight = RecyclerListener.this.recyclerView.getPaddingRight();
                    int paddingTop = RecyclerListener.this.recyclerView.getPaddingTop();
                    int i2 = RecyclerListener.this.recyclerDefaultBottomPadding;
                    int i3 = i2;
                    if (i > 0) {
                        i3 = i2 + i;
                    }
                    if (i3 != RecyclerListener.this.recyclerView.getPaddingBottom()) {
                        RecyclerListener.this.recyclerView.setPadding(paddingLeft, paddingTop, paddingRight, i3);
                        RecyclerListener.this.scrollToBottom(1);
                    }
                }
            });
        }

        @Override // android.support.p004v7.util.ListUpdateCallback
        public void onInserted(int i, int i2) {
            this.recyclerView.getAdapter().notifyItemRangeChanged(i, i2);
            postScrollToBottom(3);
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            if (i4 < i8) {
                postScrollToBottom(1);
            }
        }

        @Override // android.support.p004v7.util.ListUpdateCallback
        public void onMoved(int i, int i2) {
            this.recyclerView.getAdapter().notifyItemMoved(i, i2);
        }

        @Override // android.support.p004v7.util.ListUpdateCallback
        public void onRemoved(int i, int i2) {
            this.recyclerView.getAdapter().notifyItemRangeRemoved(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestViewConversationsEnabled$RequestItemAnimator.class */
    public static class RequestItemAnimator extends DefaultItemAnimator {
        private final ComponentRequestAdapter component;

        RequestItemAnimator(ComponentRequestAdapter componentRequestAdapter) {
            this.component = componentRequestAdapter;
            setSupportsChangeAnimations(false);
        }

        @Override // android.support.p004v7.widget.SimpleItemAnimator, android.support.p004v7.widget.RecyclerView.ItemAnimator
        public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView.ViewHolder viewHolder) {
            if (this.component.getMessageForPos(viewHolder.getAdapterPosition()) instanceof CellType.Attachment) {
                return true;
            }
            return super.canReuseUpdatedViewHolder(viewHolder);
        }
    }

    public RequestViewConversationsEnabled(@NonNull Context context) {
        super(context);
        viewInit(context);
    }

    public RequestViewConversationsEnabled(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        viewInit(context);
    }

    public RequestViewConversationsEnabled(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        viewInit(context);
    }

    private Subscription bindComponents(Store store) {
        return CombinedSubscription.from(bindMessageComposer(store), bindRecycler(store), bindDialogComponent(store));
    }

    private Subscription bindDialogComponent(Store store) {
        return store.addListener(StateUi.class, new ComponentDialog(this.activity, this.f1894af, store));
    }

    private Subscription bindMessageComposer(Store store) {
        this.messageComposerComponent = new ComponentMessageComposer(this.activity, this.imageStream, this.messageComposerView, store, this.f1894af);
        return store.addListener(this.messageComposerComponent.getSelector(), this.messageComposerComponent);
    }

    private Subscription bindRecycler(Store store) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.activity);
        RecyclerListener recyclerListener = new RecyclerListener(this.recyclerView, linearLayoutManager);
        ComponentRequestAdapter componentRequestAdapter = new ComponentRequestAdapter(recyclerListener, this.cellFactory, this.recyclerView);
        CellMarginDecorator cellMarginDecorator = new CellMarginDecorator(componentRequestAdapter, this.activity);
        RequestItemAnimator requestItemAnimator = new RequestItemAnimator(componentRequestAdapter);
        ComponentRequestAdapter.RequestAdapter requestAdapter = new ComponentRequestAdapter.RequestAdapter(componentRequestAdapter);
        this.recyclerView.setItemAnimator(requestItemAnimator);
        this.recyclerView.setLayoutManager(linearLayoutManager);
        this.recyclerView.addItemDecoration(cellMarginDecorator);
        this.recyclerView.setAdapter(requestAdapter);
        this.recyclerView.setNestedScrollingEnabled(false);
        this.messageComposerView.setOnHeightChangeListener(recyclerListener);
        this.messageComposerView.addOnFocusChangeListener(recyclerListener);
        this.recyclerView.addOnLayoutChangeListener(recyclerListener);
        return store.addListener(componentRequestAdapter.getSelector(), componentRequestAdapter);
    }

    private void bindViews() {
        this.imageStream = BelvedereUi.install(this.activity);
        this.recyclerView = (RecyclerView) findViewById(C1790R.C1793id.activity_request_recycler_view);
        this.messageComposerView = (ViewMessageComposer) findViewById(C1790R.C1793id.activity_request_message_composer);
        this.toolbarContainer = this.activity.findViewById(C1790R.C1793id.activity_request_appbar);
        this.toolbar = this.activity.findViewById(C1790R.C1793id.activity_request_toolbar);
        this.messageComposerView.init(this.imageStream);
        installDragAnimation();
    }

    private void installDragAnimation() {
        this.imagePickerDragAnimation = new ImagePickerDragAnimation(this.toolbarContainer, this.messageComposerView, this.recyclerView, this.toolbar);
        this.imageStream.addScrollListener(this.imagePickerDragAnimation);
    }

    private void viewInit(Context context) {
        inflate(context, C1790R.C1794layout.zs_view_request_conversations_enabled, this);
        this.activity = (AppCompatActivity) context;
    }

    @Override // zendesk.support.request.RequestView
    public boolean hasUnsavedInput() {
        return this.messageComposerComponent != null && this.messageComposerComponent.hasUnsavedInput();
    }

    @Override // zendesk.support.request.RequestView
    public boolean inflateMenu(MenuInflater menuInflater, Menu menu) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void init(RequestComponent requestComponent, boolean z) {
        requestComponent.inject(this);
        bindViews();
        this.subscription = bindComponents(this.store);
        this.subscription.informWithCurrentState();
        if (z) {
            this.store.dispatch(this.f1894af.loadCommentsFromCacheAsync());
            this.store.dispatch(this.f1894af.loadRequestAsync());
            this.store.dispatch(this.f1894af.initialLoadCommentsAsync());
            this.messageComposerView.requestFocusForInput();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.subscription != null) {
            this.subscription.removeListener();
        }
    }

    @Override // zendesk.support.request.RequestView
    public boolean onOptionsItemClicked(MenuItem menuItem) {
        return false;
    }
}
