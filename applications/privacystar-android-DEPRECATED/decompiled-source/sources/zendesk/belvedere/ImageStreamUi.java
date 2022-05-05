package zendesk.belvedere;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.support.annotation.StringRes;
import android.support.design.widget.BottomSheetBehavior;
import android.support.design.widget.CoordinatorLayout;
import android.support.p001v4.view.ViewCompat;
import android.support.p004v7.widget.DefaultItemAnimator;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.StaggeredGridLayoutManager;
import android.support.p004v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.accessibility.AccessibilityManager;
import android.widget.PopupWindow;
import android.widget.Toast;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import zendesk.belvedere.BelvedereUi;
import zendesk.belvedere.ImageStreamAdapter;
import zendesk.belvedere.ImageStreamMvp;
import zendesk.belvedere.KeyboardHelper;
import zendesk.belvedere.p041ui.C2612R;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamUi.class */
public class ImageStreamUi extends PopupWindow implements ImageStreamMvp.View {
    private Activity activity;
    private final ImageStreamAdapter adapter = new ImageStreamAdapter();
    private View bottomSheet;
    private BottomSheetBehavior<View> bottomSheetBehavior;
    private View dismissArea;
    private FloatingActionMenu floatingActionMenu;
    private RecyclerView imageList;
    private KeyboardHelper keyboardHelper;
    private final ImageStreamPresenter presenter;
    private Toolbar toolbar;
    private View toolbarCompatShadow;
    private View toolbarContainer;
    private final List<Integer> touchableItemIds;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/ImageStreamUi$ToolbarBehavior.class */
    public class ToolbarBehavior extends CoordinatorLayout.Behavior<View> {
        private final boolean notifyScrollListener;

        private ToolbarBehavior(boolean z) {
            this.notifyScrollListener = z;
        }

        private void animateToolbarShiftIn(int i, float f, int i2, View view) {
            float f2 = i;
            float f3 = f2 - (f * f2);
            float f4 = i2;
            if (f3 <= f4) {
                Utils.showToolbar(ImageStreamUi.this.getContentView(), true);
                view.setAlpha(1.0f - (f3 / f4));
                view.setY(f3);
            } else {
                Utils.showToolbar(ImageStreamUi.this.getContentView(), false);
            }
            ImageStreamUi.this.tintStatusBar(f);
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2.getId() == C2612R.C2615id.bottom_sheet;
        }

        @Override // android.support.design.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            int height = coordinatorLayout.getHeight() - ImageStreamUi.this.bottomSheetBehavior.getPeekHeight();
            float height2 = ((coordinatorLayout.getHeight() - view2.getY()) - ImageStreamUi.this.bottomSheetBehavior.getPeekHeight()) / height;
            animateToolbarShiftIn(height, height2, ViewCompat.getMinimumHeight(ImageStreamUi.this.toolbar), view);
            if (!this.notifyScrollListener) {
                return true;
            }
            ImageStreamUi.this.presenter.onImageStreamScrolled(coordinatorLayout.getHeight(), height, height2);
            return true;
        }
    }

    private ImageStreamUi(Activity activity, View view, ImageStream imageStream, BelvedereUi.UiConfig uiConfig) {
        super(view, -1, -1, false);
        setInputMethodMode(2);
        setFocusable(true);
        setTouchable(true);
        setBackgroundDrawable(new BitmapDrawable());
        setOutsideTouchable(true);
        bindViews(view);
        this.activity = activity;
        this.keyboardHelper = imageStream.getKeyboardHelper();
        this.touchableItemIds = uiConfig.getTouchableElements();
        this.presenter = new ImageStreamPresenter(new ImageStreamModel(view.getContext(), uiConfig), this, imageStream);
        this.presenter.init();
    }

    private void bindViews(View view) {
        this.bottomSheet = view.findViewById(C2612R.C2615id.bottom_sheet);
        this.dismissArea = view.findViewById(C2612R.C2615id.dismiss_area);
        this.imageList = (RecyclerView) view.findViewById(C2612R.C2615id.image_list);
        this.toolbar = (Toolbar) view.findViewById(C2612R.C2615id.image_stream_toolbar);
        this.toolbarContainer = view.findViewById(C2612R.C2615id.image_stream_toolbar_container);
        this.toolbarCompatShadow = view.findViewById(C2612R.C2615id.image_stream_compat_shadow);
        this.floatingActionMenu = (FloatingActionMenu) view.findViewById(C2612R.C2615id.floating_action_menu);
    }

    private void initBottomSheet(boolean z) {
        ViewCompat.setElevation(this.imageList, this.bottomSheet.getContext().getResources().getDimensionPixelSize(C2612R.dimen.belvedere_bottom_sheet_elevation));
        this.bottomSheetBehavior = BottomSheetBehavior.from(this.bottomSheet);
        this.bottomSheetBehavior.setBottomSheetCallback(new BottomSheetBehavior.BottomSheetCallback() { // from class: zendesk.belvedere.ImageStreamUi.2
            @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
            public void onSlide(@NonNull View view, float f) {
            }

            @Override // android.support.design.widget.BottomSheetBehavior.BottomSheetCallback
            public void onStateChanged(@NonNull View view, int i) {
                if (i == 5) {
                    ImageStreamUi.this.dismiss();
                }
            }
        });
        Utils.showToolbar(getContentView(), false);
        if (!z) {
            this.bottomSheetBehavior.setPeekHeight(this.bottomSheet.getPaddingTop() + this.keyboardHelper.getKeyboardHeight());
            this.bottomSheetBehavior.setState(4);
            this.keyboardHelper.setKeyboardHeightListener(new KeyboardHelper.SizeListener() { // from class: zendesk.belvedere.ImageStreamUi.3
                @Override // zendesk.belvedere.KeyboardHelper.SizeListener
                public void onSizeChanged(int i) {
                    if (i != ImageStreamUi.this.bottomSheetBehavior.getPeekHeight()) {
                        ImageStreamUi.this.bottomSheetBehavior.setPeekHeight(ImageStreamUi.this.bottomSheet.getPaddingTop() + ImageStreamUi.this.keyboardHelper.getKeyboardHeight());
                    }
                }
            });
        } else {
            this.bottomSheetBehavior.setSkipCollapsed(true);
            this.bottomSheetBehavior.setState(3);
            KeyboardHelper.hideKeyboard(this.activity);
        }
        this.imageList.setClickable(true);
        this.bottomSheet.setVisibility(0);
    }

    private void initGesturePassThrough(final Activity activity, final List<Integer> list) {
        this.dismissArea.setOnTouchListener(new View.OnTouchListener() { // from class: zendesk.belvedere.ImageStreamUi.4
            @Override // android.view.View.OnTouchListener
            @SuppressLint({"ClickableViewAccessibility"})
            public boolean onTouch(View view, MotionEvent motionEvent) {
                boolean z;
                int rawX = (int) motionEvent.getRawX();
                int rawY = (int) motionEvent.getRawY();
                Iterator it = list.iterator();
                while (true) {
                    z = false;
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    View findViewById = activity.findViewById(((Integer) it.next()).intValue());
                    if (findViewById != null) {
                        Rect rect = new Rect();
                        findViewById.getGlobalVisibleRect(rect);
                        boolean z2 = rawX >= rect.left && rawX <= rect.right;
                        boolean z3 = rawY >= rect.top && rawY <= rect.bottom;
                        if (z2 && z3) {
                            activity.dispatchTouchEvent(MotionEvent.obtain(motionEvent));
                            break;
                        }
                    }
                }
                if (!z) {
                    return true;
                }
                ImageStreamUi.this.dismiss();
                return true;
            }
        });
    }

    private void initRecycler(ImageStreamAdapter imageStreamAdapter) {
        this.imageList.setLayoutManager(new StaggeredGridLayoutManager(this.bottomSheet.getContext().getResources().getInteger(C2612R.integer.belvedere_image_stream_column_count), 1));
        this.imageList.setHasFixedSize(true);
        this.imageList.setDrawingCacheEnabled(true);
        this.imageList.setDrawingCacheQuality(1048576);
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator();
        defaultItemAnimator.setSupportsChangeAnimations(false);
        this.imageList.setItemAnimator(defaultItemAnimator);
        this.imageList.setAdapter(imageStreamAdapter);
    }

    private void initToolbar(final boolean z) {
        this.toolbar.setNavigationIcon(C2612R.C2614drawable.belvedere_ic_close);
        this.toolbar.setNavigationContentDescription(C2612R.string.belvedere_toolbar_desc_collapse);
        this.toolbar.setBackgroundColor(-1);
        this.toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: zendesk.belvedere.ImageStreamUi.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!z) {
                    ImageStreamUi.this.bottomSheetBehavior.setState(4);
                } else {
                    ImageStreamUi.this.dismiss();
                }
            }
        });
        if (Build.VERSION.SDK_INT < 21) {
            this.toolbarCompatShadow.setVisibility(0);
        }
        CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) this.toolbarContainer.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.setBehavior(new ToolbarBehavior(!z));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ImageStreamUi show(Activity activity, ViewGroup viewGroup, ImageStream imageStream, BelvedereUi.UiConfig uiConfig) {
        ImageStreamUi imageStreamUi = new ImageStreamUi(activity, LayoutInflater.from(activity).inflate(C2612R.C2616layout.belvedere_image_stream, viewGroup, false), imageStream, uiConfig);
        imageStreamUi.showAtLocation(viewGroup, 48, 0, 0);
        return imageStreamUi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tintStatusBar(float f) {
        int color = this.toolbar.getResources().getColor(C2612R.color.belvedere_image_stream_status_bar_color);
        int themeColor = Utils.getThemeColor(this.toolbar.getContext(), C2612R.C2613attr.colorPrimaryDark);
        boolean z = f == 1.0f;
        final Window window = this.activity.getWindow();
        if (Build.VERSION.SDK_INT >= 21) {
            if (!z) {
                window.setStatusBarColor(themeColor);
            } else if (window.getStatusBarColor() == themeColor) {
                final ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(themeColor), Integer.valueOf(color));
                ofObject.setDuration(100L);
                ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: zendesk.belvedere.ImageStreamUi.5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    @RequiresApi(api = 21)
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        window.setStatusBarColor(((Integer) ofObject.getAnimatedValue()).intValue());
                    }
                });
                ofObject.start();
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            View decorView = window.getDecorView();
            if (z) {
                decorView.setSystemUiVisibility(8192);
            } else {
                decorView.setSystemUiVisibility(0);
            }
        }
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        tintStatusBar(0.0f);
        this.presenter.dismiss();
    }

    @Override // zendesk.belvedere.ImageStreamMvp.View
    public void initViews(boolean z) {
        initRecycler(this.adapter);
        initToolbar(z);
        initBottomSheet(z);
        initGesturePassThrough(this.activity, this.touchableItemIds);
    }

    @Override // zendesk.belvedere.ImageStreamMvp.View
    public void openMediaIntent(MediaIntent mediaIntent, ImageStream imageStream) {
        mediaIntent.open(imageStream);
    }

    @Override // zendesk.belvedere.ImageStreamMvp.View
    public boolean shouldShowFullScreen() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        if (Build.VERSION.SDK_INT >= 24 && (this.activity.isInMultiWindowMode() || this.activity.isInPictureInPictureMode())) {
            return true;
        }
        if (this.activity.getResources().getConfiguration().keyboard != 1) {
            return true;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.activity.getSystemService("accessibility");
        return (accessibilityManager == null || (enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(47)) == null || enabledAccessibilityServiceList.size() <= 0) ? false : true;
    }

    @Override // zendesk.belvedere.ImageStreamMvp.View
    public void showDocumentMenuItem(View.OnClickListener onClickListener) {
        if (this.floatingActionMenu != null) {
            this.floatingActionMenu.addMenuItem(C2612R.C2614drawable.belvedere_ic_file, C2612R.C2615id.belvedere_fam_item_documents, C2612R.string.belvedere_fam_desc_open_gallery, onClickListener);
        }
    }

    @Override // zendesk.belvedere.ImageStreamMvp.View
    public void showGooglePhotosMenuItem(View.OnClickListener onClickListener) {
        if (this.floatingActionMenu != null) {
            this.floatingActionMenu.addMenuItem(C2612R.C2614drawable.belvedere_ic_collections, C2612R.C2615id.belvedere_fam_item_google_photos, C2612R.string.belvedere_fam_desc_open_google_photos, onClickListener);
        }
    }

    @Override // zendesk.belvedere.ImageStreamMvp.View
    public void showImageStream(List<MediaResult> list, List<MediaResult> list2, boolean z, boolean z2, ImageStreamAdapter.Listener listener) {
        if (!z) {
            KeyboardHelper.showKeyboard(this.keyboardHelper.getInputTrap());
        }
        ViewGroup.LayoutParams layoutParams = this.bottomSheet.getLayoutParams();
        layoutParams.height = -1;
        this.bottomSheet.setLayoutParams(layoutParams);
        if (z2) {
            this.adapter.addStaticItem(ImageStreamItems.forCameraSquare(listener));
        }
        this.adapter.initializeWithImages(ImageStreamItems.fromMediaResults(list, listener, this.bottomSheet.getContext()));
        this.adapter.setItemsSelected(list2);
        this.adapter.notifyDataSetChanged();
    }

    @Override // zendesk.belvedere.ImageStreamMvp.View
    public void showToast(@StringRes int i) {
        Toast.makeText(this.activity, i, 0).show();
    }

    @Override // zendesk.belvedere.ImageStreamMvp.View
    public void updateToolbarTitle(int i) {
        if (i > 0) {
            this.toolbar.setTitle(String.format(Locale.getDefault(), "%s (%d)", this.activity.getString(C2612R.string.belvedere_image_stream_title), Integer.valueOf(i)));
            return;
        }
        this.toolbar.setTitle(C2612R.string.belvedere_image_stream_title);
    }
}
