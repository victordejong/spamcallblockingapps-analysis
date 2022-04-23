package zendesk.support.request;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.view.animation.PathInterpolatorCompat;
import android.support.p004v7.util.DiffUtil;
import android.support.p004v7.util.ListUpdateCallback;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import zendesk.suas.Listener;
import zendesk.suas.State;
import zendesk.suas.StateSelector;
import zendesk.support.request.CellType;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentRequestAdapter.class */
public class ComponentRequestAdapter implements Listener<List<CellType.Base>> {
    private static final long UPDATE_TIME_WINDOW = 200;
    private final ListUpdateCallback listUpdateCallback;
    private final RecyclerView recyclerView;
    private final RequestAdapterSelector requestAdapterSelector;
    private final List<CellType.Base> requestMessageList;
    private Runnable updateRunnable;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentRequestAdapter$DiffCalculator.class */
    public static class DiffCalculator extends DiffUtil.Callback {
        private final List<CellType.Base> newList;
        private final List<CellType.Base> oldList;

        private DiffCalculator(List<CellType.Base> list, List<CellType.Base> list2) {
            this.oldList = list;
            this.newList = list2;
        }

        @Override // android.support.p004v7.util.DiffUtil.Callback
        public boolean areContentsTheSame(int i, int i2) {
            return this.oldList.get(i).areContentsTheSame(this.newList.get(i2));
        }

        @Override // android.support.p004v7.util.DiffUtil.Callback
        public boolean areItemsTheSame(int i, int i2) {
            return this.oldList.get(i).getUniqueId() == this.newList.get(i2).getUniqueId();
        }

        @Override // android.support.p004v7.util.DiffUtil.Callback
        public int getNewListSize() {
            return this.newList.size();
        }

        @Override // android.support.p004v7.util.DiffUtil.Callback
        public int getOldListSize() {
            return this.oldList.size();
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentRequestAdapter$RequestAdapter.class */
    static class RequestAdapter extends RecyclerView.Adapter<RequestViewHolder> {
        private final ComponentRequestAdapter dataSource;
        private int lastPosition = -1;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RequestAdapter(ComponentRequestAdapter componentRequestAdapter) {
            setHasStableIds(true);
            this.dataSource = componentRequestAdapter;
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.dataSource.getMessageCount();
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return this.dataSource.getMessageForPos(i).getUniqueId();
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return this.dataSource.getMessageForPos(i).getLayoutId();
        }

        @SuppressLint({"RecyclerView"})
        public void onBindViewHolder(@NonNull RequestViewHolder requestViewHolder, int i) {
            this.dataSource.getMessageForPos(i).bind(requestViewHolder);
            if (i > this.lastPosition && this.lastPosition != -1) {
                this.lastPosition = i;
                requestViewHolder.startAnimation();
            }
            if (this.lastPosition == -1) {
                this.lastPosition = i;
            }
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        @NonNull
        public RequestViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
            return new RequestViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false));
        }

        public void onViewDetachedFromWindow(@NonNull RequestViewHolder requestViewHolder) {
            super.onViewDetachedFromWindow((RequestAdapter) requestViewHolder);
            requestViewHolder.clearAnimation();
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentRequestAdapter$RequestAdapterSelector.class */
    static class RequestAdapterSelector implements StateSelector<List<CellType.Base>> {
        private final CellFactory messageFactory;

        RequestAdapterSelector(CellFactory cellFactory) {
            this.messageFactory = cellFactory;
        }

        @Override // zendesk.suas.StateSelector
        @Nullable
        public List<CellType.Base> selectData(@NonNull State state) {
            StateConversation fromState = StateConversation.fromState(state);
            StateSettings settings = StateConfig.fromState(state).getSettings();
            return this.messageFactory.generateCells(fromState.getMessages(), fromState.getUsers(), fromState.getStatus(), settings.getSystemMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/ComponentRequestAdapter$RequestViewHolder.class */
    public static class RequestViewHolder extends RecyclerView.ViewHolder {
        private static final long ANIMATION_DURATION = 250;
        private static final float ANIMATION_HEIGHT_RATIO = 0.6666667f;
        private static final TimeInterpolator TIME_INTERPOLATOR = PathInterpolatorCompat.create(0.2f, 0.0f, 0.4f, 1.0f);
        private ValueAnimator animation;
        @SuppressLint({"UseSparseArrays"})
        private final Map<Integer, View> viewCache = new HashMap();

        RequestViewHolder(View view) {
            super(view);
        }

        void clearAnimation() {
            if (this.animation != null) {
                this.animation.cancel();
                this.itemView.setTranslationY(0.0f);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public <E extends View> E findCachedView(@IdRes int i) {
            E e;
            synchronized (this.viewCache) {
                if (this.viewCache.containsKey(Integer.valueOf(i))) {
                    e = (E) this.viewCache.get(Integer.valueOf(i));
                } else {
                    e = (E) this.itemView.findViewById(i);
                    this.viewCache.put(Integer.valueOf(i), e);
                }
            }
            return e;
        }

        void startAnimation() {
            int measuredHeight = this.itemView.getMeasuredHeight();
            int i = measuredHeight;
            if (measuredHeight == 0) {
                this.itemView.measure(0, 0);
                i = this.itemView.getMeasuredHeight();
            }
            this.animation = ValueAnimator.ofFloat(i * ANIMATION_HEIGHT_RATIO, 0.0f);
            this.animation.setInterpolator(TIME_INTERPOLATOR);
            this.animation.setDuration(ANIMATION_DURATION);
            this.animation.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: zendesk.support.request.ComponentRequestAdapter.RequestViewHolder.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RequestViewHolder.this.itemView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            this.animation.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComponentRequestAdapter(ListUpdateCallback listUpdateCallback, CellFactory cellFactory, RecyclerView recyclerView) {
        this.updateRunnable = null;
        this.listUpdateCallback = listUpdateCallback;
        this.recyclerView = recyclerView;
        this.requestMessageList = new ArrayList();
        this.requestAdapterSelector = new RequestAdapterSelector(cellFactory);
    }

    @VisibleForTesting
    ComponentRequestAdapter(List<CellType.Base> list, ListUpdateCallback listUpdateCallback, RequestAdapterSelector requestAdapterSelector, RecyclerView recyclerView) {
        this.updateRunnable = null;
        this.requestMessageList = list;
        this.listUpdateCallback = listUpdateCallback;
        this.requestAdapterSelector = requestAdapterSelector;
        this.recyclerView = recyclerView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDataSet(List<CellType.Base> list, List<CellType.Base> list2) {
        DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(new DiffCalculator(list, list2), true);
        this.requestMessageList.clear();
        this.requestMessageList.addAll(list2);
        calculateDiff.dispatchUpdatesTo(this.listUpdateCallback);
    }

    int getMessageCount() {
        return this.requestMessageList.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CellType.Base getMessageForPos(int i) {
        return this.requestMessageList.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateSelector<List<CellType.Base>> getSelector() {
        return this.requestAdapterSelector;
    }

    public void update(@NonNull final List<CellType.Base> list) {
        this.recyclerView.removeCallbacks(this.updateRunnable);
        this.updateRunnable = new Runnable() { // from class: zendesk.support.request.ComponentRequestAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                ComponentRequestAdapter.this.updateDataSet(CollectionUtils.copyOf(ComponentRequestAdapter.this.requestMessageList), CollectionUtils.copyOf(list));
            }
        };
        this.recyclerView.postDelayed(this.updateRunnable, 200L);
    }
}
