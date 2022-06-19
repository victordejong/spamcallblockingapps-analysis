package com.millennialmedia.internal;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.millennialmedia.C0764R;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.ViewUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/SizableStateManager.class */
public class SizableStateManager {
    private static final String TAG = "SizableStateManager";
    public static final int closeAreaSize = EnvironmentUtils.getApplicationContext().getResources().getDimensionPixelSize(C0764R.dimen.mmadsdk_mraid_resize_close_area_size);
    private ExpandStateManager expandStateManager;
    private ResizeContainer resizeContainer;
    private RestoreState restoreState;
    private SizableListener sizableListener;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/SizableStateManager$ExpandParams.class */
    public static class ExpandParams {
        public int height;
        public boolean immersive;
        public int orientation;
        public boolean showCloseIndicator;
        public boolean showLoadingSpinner;
        public boolean transparent;
        public String url;
        public int width;
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/SizableStateManager$ExpandStateManager.class */
    public class ExpandStateManager {
        private static final long CLOSE_BUTTON_APPEARANCE_DELAY = 1100;
        private ThreadUtils.ScheduledRunnable closeButtonShowRunnable = null;
        private ImageView closeControl;
        private boolean closeIndicatorShowing;
        private ProgressBar loadingSpinner;
        private MMActivity mmExpandActivity;

        public ExpandStateManager() {
            SizableStateManager.this = r4;
        }

        public void showCloseIndicator() {
            ImageView imageView;
            if (this.closeButtonShowRunnable == null && (imageView = this.closeControl) != null) {
                imageView.setImageDrawable(imageView.getResources().getDrawable(C0764R.C0765drawable.mmadsdk_close));
                this.closeControl.setScaleType(ImageView.ScaleType.FIT_CENTER);
                this.closeIndicatorShowing = true;
            }
        }

        public void attachCloseControl() {
            if (this.closeControl == null) {
                ImageView imageView = new ImageView(this.mmExpandActivity.getRootView().getContext());
                this.closeControl = imageView;
                imageView.setBackgroundColor(0);
                int i = SizableStateManager.closeAreaSize;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
                layoutParams.addRule(11);
                this.closeControl.setLayoutParams(layoutParams);
                this.closeControl.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.SizableStateManager.ExpandStateManager.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ExpandStateManager.this.close();
                    }
                });
            }
            ViewUtils.attachView(this.mmExpandActivity.getRootView(), this.closeControl);
            this.closeControl.bringToFront();
        }

        public void close() {
            if (!ThreadUtils.isUiThread()) {
                MMLog.m4068e(SizableStateManager.TAG, "close must be called on the UI thread");
                return;
            }
            MMActivity mMActivity = this.mmExpandActivity;
            if (mMActivity == null) {
                return;
            }
            mMActivity.finish();
        }

        public boolean expand(final View view, final ExpandParams expandParams, MMActivity.MMActivityConfig mMActivityConfig) {
            if (!ThreadUtils.isUiThread()) {
                MMLog.m4068e(SizableStateManager.TAG, "expand must be called on the UI thread");
                return false;
            }
            MMActivity.launch(view.getContext(), mMActivityConfig, new MMActivity.MMActivityListener() { // from class: com.millennialmedia.internal.SizableStateManager.ExpandStateManager.3
                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onCreate(MMActivity mMActivity) {
                    boolean z;
                    if (ExpandStateManager.this.mmExpandActivity == null) {
                        SizableStateManager.this.sizableListener.onExpanding();
                        ExpandParams expandParams2 = expandParams;
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(expandParams2.width, expandParams2.height);
                        layoutParams.addRule(13);
                        view.setLayoutParams(layoutParams);
                        z = true;
                        SizableStateManager.this.notifyStateWhenReady(view, SizableState.STATE_EXPANDED);
                    } else {
                        z = false;
                    }
                    ExpandStateManager.this.mmExpandActivity = mMActivity;
                    ViewUtils.attachView(mMActivity.getRootView(), view);
                    ExpandStateManager.this.attachCloseControl();
                    if (z && expandParams.showCloseIndicator) {
                        ExpandStateManager.this.showCloseIndicatorDelay();
                    } else if (ExpandStateManager.this.closeIndicatorShowing) {
                        ExpandStateManager.this.showCloseIndicator();
                    }
                    if (expandParams.showLoadingSpinner) {
                        ExpandStateManager.this.showLoadingSpinner();
                    }
                }

                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onDestroy(MMActivity mMActivity) {
                    if (mMActivity.isFinishing()) {
                        SizableStateManager.this.restoreDefaultState(true);
                        ExpandStateManager.this.mmExpandActivity = null;
                    }
                }

                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onLaunchFailed() {
                    SizableStateManager.this.sizableListener.onExpandFailed();
                }
            });
            return true;
        }

        public void hideCloseIndicator() {
            ThreadUtils.ScheduledRunnable scheduledRunnable = this.closeButtonShowRunnable;
            if (scheduledRunnable != null) {
                scheduledRunnable.cancel();
                this.closeButtonShowRunnable = null;
            }
            ImageView imageView = this.closeControl;
            if (imageView != null) {
                imageView.setImageDrawable(null);
                this.closeIndicatorShowing = false;
            }
        }

        public void hideLoadingSpinner() {
            ProgressBar progressBar = this.loadingSpinner;
            if (progressBar != null) {
                progressBar.setVisibility(8);
                ViewUtils.removeFromParent(this.loadingSpinner);
                this.loadingSpinner = null;
            }
        }

        public void setOrientation(int i) {
            this.mmExpandActivity.setOrientation(i);
        }

        public void showCloseIndicatorDelay() {
            if (this.closeButtonShowRunnable == null) {
                this.closeButtonShowRunnable = ThreadUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.SizableStateManager.ExpandStateManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ExpandStateManager.this.closeButtonShowRunnable = null;
                        ExpandStateManager.this.showCloseIndicator();
                    }
                }, CLOSE_BUTTON_APPEARANCE_DELAY);
            }
        }

        public void showLoadingSpinner() {
            if (this.mmExpandActivity == null) {
                return;
            }
            if (this.loadingSpinner == null) {
                ProgressBar progressBar = new ProgressBar(this.mmExpandActivity.getRootView().getContext());
                this.loadingSpinner = progressBar;
                progressBar.setIndeterminate(true);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(13);
                this.loadingSpinner.setLayoutParams(layoutParams);
            }
            ViewUtils.attachView(this.mmExpandActivity.getRootView(), this.loadingSpinner);
            this.loadingSpinner.bringToFront();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/SizableStateManager$ResizeContainer.class */
    public class ResizeContainer extends RelativeLayout {
        private View closeControl;
        private Rect contentRect;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResizeContainer(Context context) {
            super(context);
            SizableStateManager.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0091  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private android.graphics.Rect calculateCloseAreaRect(java.lang.String r5, android.graphics.Rect r6) {
            /*
                r4 = this;
                android.graphics.Rect r0 = new android.graphics.Rect
                r1 = r0
                r1.<init>()
                r7 = r0
                r0 = r5
                java.lang.String r1 = "center"
                boolean r0 = r0.contains(r1)
                if (r0 == 0) goto L4b
                r0 = r6
                int r0 = r0.left
                r8 = r0
                r0 = r6
                int r0 = r0.right
                r9 = r0
                int r0 = com.millennialmedia.internal.SizableStateManager.closeAreaSize
                r10 = r0
                r0 = r7
                r1 = r8
                r2 = r9
                int r1 = r1 + r2
                r2 = r10
                int r1 = r1 - r2
                r2 = 2
                int r1 = r1 / r2
                r0.left = r1
                r0 = r5
                java.lang.String r1 = "center"
                boolean r0 = r0.equals(r1)
                if (r0 == 0) goto L4b
                r0 = r7
                r1 = r6
                int r1 = r1.top
                r2 = r6
                int r2 = r2.bottom
                int r1 = r1 + r2
                r2 = r10
                int r1 = r1 - r2
                r2 = 2
                int r1 = r1 / r2
                r0.top = r1
            L4b:
                r0 = r5
                java.lang.String r1 = "top"
                boolean r0 = r0.startsWith(r1)
                if (r0 == 0) goto L63
                r0 = r6
                int r0 = r0.top
                r10 = r0
            L5a:
                r0 = r7
                r1 = r10
                r0.top = r1
                goto L79
            L63:
                r0 = r5
                java.lang.String r1 = "bottom"
                boolean r0 = r0.startsWith(r1)
                if (r0 == 0) goto L79
                r0 = r6
                int r0 = r0.bottom
                int r1 = com.millennialmedia.internal.SizableStateManager.closeAreaSize
                int r0 = r0 - r1
                r10 = r0
                goto L5a
            L79:
                r0 = r5
                java.lang.String r1 = "left"
                boolean r0 = r0.endsWith(r1)
                if (r0 == 0) goto L91
                r0 = r6
                int r0 = r0.left
                r10 = r0
            L88:
                r0 = r7
                r1 = r10
                r0.left = r1
                goto La7
            L91:
                r0 = r5
                java.lang.String r1 = "right"
                boolean r0 = r0.endsWith(r1)
                if (r0 == 0) goto La7
                r0 = r6
                int r0 = r0.right
                int r1 = com.millennialmedia.internal.SizableStateManager.closeAreaSize
                int r0 = r0 - r1
                r10 = r0
                goto L88
            La7:
                r0 = r7
                int r0 = r0.left
                r10 = r0
                int r0 = com.millennialmedia.internal.SizableStateManager.closeAreaSize
                r8 = r0
                r0 = r7
                r1 = r10
                r2 = r8
                int r1 = r1 + r2
                r0.right = r1
                r0 = r7
                r1 = r7
                int r1 = r1.top
                r2 = r8
                int r1 = r1 + r2
                r0.bottom = r1
                r0 = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.SizableStateManager.ResizeContainer.calculateCloseAreaRect(java.lang.String, android.graphics.Rect):android.graphics.Rect");
        }

        public void attachCloseControl(Context context, String str) {
            if (this.closeControl == null) {
                View view = new View(context);
                this.closeControl = view;
                view.setBackgroundColor(0);
                this.closeControl.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.SizableStateManager.ResizeContainer.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        ResizeContainer.this.close();
                    }
                });
                ViewUtils.attachView(this, this.closeControl);
            }
            int i = SizableStateManager.closeAreaSize;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
            if (!str.equals("top-right")) {
                if (!str.equals("top-center")) {
                    if (str.equals("bottom-left")) {
                        layoutParams.addRule(12);
                    } else if (str.equals("bottom-center")) {
                        layoutParams.addRule(12);
                    } else if (str.equals("bottom-right")) {
                        layoutParams.addRule(12);
                    } else if (str.equals(TtmlNode.CENTER)) {
                        layoutParams.addRule(13);
                    }
                    this.closeControl.setLayoutParams(layoutParams);
                    this.closeControl.bringToFront();
                }
                layoutParams.addRule(14);
                this.closeControl.setLayoutParams(layoutParams);
                this.closeControl.bringToFront();
            }
            layoutParams.addRule(11);
            this.closeControl.setLayoutParams(layoutParams);
            this.closeControl.bringToFront();
        }

        public void close() {
            if (!ThreadUtils.isUiThread()) {
                MMLog.m4068e(SizableStateManager.TAG, "close must be called on the UI thread");
                return;
            }
            SizableStateManager.this.restoreDefaultState(true);
            ViewUtils.removeFromParent(this);
        }

        public boolean resize(View view, ResizeParams resizeParams) {
            Point point;
            String str;
            String str2;
            if (!ThreadUtils.isUiThread()) {
                str = SizableStateManager.TAG;
                str2 = "resize must be called on the UI thread";
            } else {
                if (this.contentRect == null) {
                    this.contentRect = ViewUtils.getContentDimensions(view, null);
                }
                Rect rect = new Rect();
                if (SizableStateManager.this.restoreState == null) {
                    point = ViewUtils.getViewPositionOnScreen(view);
                    rect.left = point.x + resizeParams.offsetX;
                } else {
                    rect.left = SizableStateManager.this.restoreState.pos.x + resizeParams.offsetX;
                    point = SizableStateManager.this.restoreState.pos;
                }
                rect.top = point.y + resizeParams.offsetY;
                rect.right = rect.left + resizeParams.width;
                rect.bottom = rect.top + resizeParams.height;
                if (!resizeParams.allowOffScreen) {
                    shiftRectOnScreen(rect, this.contentRect);
                    if (!this.contentRect.contains(rect)) {
                        str = SizableStateManager.TAG;
                        str2 = "Resized view would not appear on screen";
                    }
                }
                if (this.contentRect.contains(calculateCloseAreaRect(resizeParams.customClosePosition, rect))) {
                    SizableStateManager.this.sizableListener.onResizing(resizeParams.width, resizeParams.height);
                    if (SizableStateManager.this.restoreState == null) {
                        SizableStateManager.this.saveDefaultState(view);
                        ViewGroup decorView = ViewUtils.getDecorView(view);
                        if (decorView == null) {
                            str = SizableStateManager.TAG;
                            str2 = "Unable to resize to root view";
                        } else {
                            ViewUtils.attachView(this, view);
                            ViewUtils.attachView(decorView, this);
                            ViewGroup viewGroup = (ViewGroup) SizableStateManager.this.restoreState.parentContainerRef.get();
                            if (viewGroup != null) {
                                viewGroup.setVisibility(4);
                            }
                        }
                    }
                    view.setLayoutParams(new RelativeLayout.LayoutParams(resizeParams.width, resizeParams.height));
                    ViewGroup.LayoutParams layoutParams = getLayoutParams();
                    layoutParams.width = resizeParams.width;
                    layoutParams.height = resizeParams.height;
                    setLayoutParams(layoutParams);
                    setTranslationX(rect.left);
                    setTranslationY(rect.top);
                    attachCloseControl(getContext(), resizeParams.customClosePosition);
                    SizableStateManager.this.notifyStateWhenReady(view, SizableState.STATE_RESIZED);
                    return true;
                }
                str = SizableStateManager.TAG;
                str2 = "Close area would not appear on screen";
            }
            MMLog.m4068e(str, str2);
            return false;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void shiftRectOnScreen(android.graphics.Rect r5, android.graphics.Rect r6) {
            /*
                r4 = this;
                r0 = r5
                int r0 = r0.left
                r7 = r0
                r0 = r6
                int r0 = r0.left
                r8 = r0
                r0 = 0
                r9 = r0
                r0 = r7
                r1 = r8
                if (r0 >= r1) goto L1d
            L14:
                r0 = r8
                r1 = r7
                int r0 = r0 - r1
                r8 = r0
                goto L34
            L1d:
                r0 = r5
                int r0 = r0.right
                r7 = r0
                r0 = r6
                int r0 = r0.right
                r8 = r0
                r0 = r7
                r1 = r8
                if (r0 <= r1) goto L31
                goto L14
            L31:
                r0 = 0
                r8 = r0
            L34:
                r0 = r5
                int r0 = r0.top
                r10 = r0
                r0 = r6
                int r0 = r0.top
                r7 = r0
                r0 = r10
                r1 = r7
                if (r0 >= r1) goto L4d
                r0 = r7
                r1 = r10
                int r0 = r0 - r1
                r7 = r0
                goto L69
            L4d:
                r0 = r5
                int r0 = r0.bottom
                r11 = r0
                r0 = r6
                int r0 = r0.bottom
                r10 = r0
                r0 = r9
                r7 = r0
                r0 = r11
                r1 = r10
                if (r0 <= r1) goto L69
                r0 = r10
                r1 = r11
                int r0 = r0 - r1
                r7 = r0
            L69:
                r0 = r5
                r1 = r8
                r2 = r7
                r0.offset(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.millennialmedia.internal.SizableStateManager.ResizeContainer.shiftRectOnScreen(android.graphics.Rect, android.graphics.Rect):void");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/SizableStateManager$ResizeParams.class */
    public static class ResizeParams {
        public boolean allowOffScreen;
        public String customClosePosition;
        public int height;
        public int offsetX;
        public int offsetY;
        public int width;
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/SizableStateManager$RestoreState.class */
    public class RestoreState {
        private ViewGroup.LayoutParams layoutParams;
        private WeakReference<ViewGroup> parentContainerRef;
        private Point pos;
        private Point size;
        private View view;

        private RestoreState() {
            SizableStateManager.this = r4;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/SizableStateManager$SizableListener.class */
    public interface SizableListener {
        void onCollapsed();

        void onCollapsing();

        void onExpandFailed();

        void onExpanded();

        void onExpanding();

        void onResized(int i, int i2);

        void onResizing(int i, int i2);

        void onUnresized(int i, int i2);

        void onUnresizing(int i, int i2);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/SizableStateManager$SizableState.class */
    public enum SizableState {
        STATE_RESIZED,
        STATE_UNRESIZED,
        STATE_EXPANDED,
        STATE_COLLAPSED
    }

    public SizableStateManager(SizableListener sizableListener) {
        this.sizableListener = sizableListener;
    }

    public void notifyStateWhenReady(final View view, final SizableState sizableState) {
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.millennialmedia.internal.SizableStateManager.2
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                final int i9 = i3 - i;
                final int i10 = i4 - i2;
                if (i9 <= 0 || i10 <= 0) {
                    return;
                }
                view.removeOnLayoutChangeListener(this);
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.SizableStateManager.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        View$OnLayoutChangeListenerC08132 view$OnLayoutChangeListenerC08132 = View$OnLayoutChangeListenerC08132.this;
                        SizableState sizableState2 = sizableState;
                        if (sizableState2 == SizableState.STATE_RESIZED) {
                            SizableStateManager.this.sizableListener.onResized(i9, i10);
                        } else if (sizableState2 == SizableState.STATE_EXPANDED) {
                            SizableStateManager.this.sizableListener.onExpanded();
                        } else if (sizableState2 == SizableState.STATE_UNRESIZED) {
                            SizableStateManager.this.sizableListener.onUnresized(i9, i10);
                        } else if (sizableState2 != SizableState.STATE_COLLAPSED) {
                        } else {
                            SizableStateManager.this.sizableListener.onCollapsed();
                        }
                    }
                });
            }
        });
    }

    public void close() {
        ExpandStateManager expandStateManager = this.expandStateManager;
        if (expandStateManager != null) {
            expandStateManager.close();
            return;
        }
        ResizeContainer resizeContainer = this.resizeContainer;
        if (resizeContainer == null) {
            return;
        }
        resizeContainer.close();
    }

    public boolean expand(View view, ExpandParams expandParams, MMActivity.MMActivityConfig mMActivityConfig) {
        ExpandStateManager expandStateManager = new ExpandStateManager();
        this.expandStateManager = expandStateManager;
        if (expandStateManager.expand(view, expandParams, mMActivityConfig)) {
            return true;
        }
        this.expandStateManager = null;
        return false;
    }

    public boolean expand(View view, ExpandParams expandParams, boolean z) {
        if (this.expandStateManager != null) {
            MMLog.m4068e(TAG, "Cannot expand while expanded");
            return false;
        }
        if (z) {
            saveDefaultState(view);
        } else {
            restoreDefaultState(false);
        }
        MMActivity.MMActivityConfig transparent = new MMActivity.MMActivityConfig().setImmersive(expandParams.immersive).setOrientation(expandParams.orientation).setTransparent(expandParams.transparent);
        ExpandStateManager expandStateManager = new ExpandStateManager();
        this.expandStateManager = expandStateManager;
        if (expandStateManager.expand(view, expandParams, transparent)) {
            return true;
        }
        this.expandStateManager = null;
        return false;
    }

    public void hideLoadingSpinner(ExpandParams expandParams) {
        expandParams.showLoadingSpinner = false;
        ExpandStateManager expandStateManager = this.expandStateManager;
        if (expandStateManager != null) {
            expandStateManager.hideLoadingSpinner();
        }
    }

    public boolean isExpanded() {
        return this.expandStateManager != null;
    }

    public boolean isResized() {
        return this.resizeContainer != null;
    }

    public boolean resize(View view, ResizeParams resizeParams) {
        if (this.expandStateManager != null) {
            MMLog.m4068e(TAG, "Cannot resize while expanded");
            return false;
        }
        boolean z = this.resizeContainer == null;
        if (z) {
            this.resizeContainer = new ResizeContainer(view.getContext());
        }
        if (this.resizeContainer.resize(view, resizeParams)) {
            return true;
        }
        if (!z) {
            return false;
        }
        this.resizeContainer = null;
        return false;
    }

    public void restoreDefaultState(boolean z) {
        SizableState sizableState;
        View view;
        RestoreState restoreState = this.restoreState;
        if (restoreState != null) {
            ViewGroup viewGroup = (ViewGroup) restoreState.parentContainerRef.get();
            if (viewGroup != null) {
                if (z) {
                    if (this.expandStateManager != null) {
                        this.sizableListener.onCollapsing();
                        view = this.restoreState.view;
                        sizableState = SizableState.STATE_COLLAPSED;
                    } else {
                        this.sizableListener.onUnresizing(this.restoreState.size.x, this.restoreState.size.y);
                        view = this.restoreState.view;
                        sizableState = SizableState.STATE_UNRESIZED;
                    }
                    notifyStateWhenReady(view, sizableState);
                }
                viewGroup.setVisibility(0);
                if (this.restoreState.layoutParams == null) {
                    if (MMLog.isDebugEnabled()) {
                        String str = TAG;
                        MMLog.m4070d(str, "No layout params found for view being restored, creating new layout params based on original size: x<" + this.restoreState.size.x + ">, y<" + this.restoreState.size.y + ">");
                    }
                    this.restoreState.layoutParams = new ViewGroup.LayoutParams(this.restoreState.size.x, this.restoreState.size.y);
                }
                ViewUtils.attachView(viewGroup, this.restoreState.view, this.restoreState.layoutParams);
            }
            this.restoreState.view = null;
            this.restoreState = null;
        } else if (z) {
            this.sizableListener.onCollapsing();
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.SizableStateManager.1
                @Override // java.lang.Runnable
                public void run() {
                    SizableStateManager.this.sizableListener.onCollapsed();
                }
            });
        }
        this.resizeContainer = null;
        this.expandStateManager = null;
    }

    public void saveDefaultState(View view) {
        if (this.restoreState == null) {
            RestoreState restoreState = new RestoreState();
            this.restoreState = restoreState;
            restoreState.view = view;
            this.restoreState.pos = ViewUtils.getViewPositionOnScreen(view);
            this.restoreState.layoutParams = view.getLayoutParams();
            this.restoreState.size = new Point(view.getWidth(), view.getHeight());
            ViewGroup parentContainer = ViewUtils.getParentContainer(view);
            this.restoreState.parentContainerRef = new WeakReference(parentContainer);
        }
    }

    public void setOrientation(int i) {
        ExpandStateManager expandStateManager = this.expandStateManager;
        if (expandStateManager != null) {
            expandStateManager.setOrientation(i);
        }
    }

    public void showCloseIndicator(boolean z) {
        ExpandStateManager expandStateManager = this.expandStateManager;
        if (expandStateManager != null) {
            if (z) {
                expandStateManager.showCloseIndicator();
            } else {
                expandStateManager.hideCloseIndicator();
            }
        }
    }

    public void showLoadingSpinner(ExpandParams expandParams) {
        expandParams.showLoadingSpinner = true;
        ExpandStateManager expandStateManager = this.expandStateManager;
        if (expandStateManager != null) {
            expandStateManager.showLoadingSpinner();
        }
    }
}
