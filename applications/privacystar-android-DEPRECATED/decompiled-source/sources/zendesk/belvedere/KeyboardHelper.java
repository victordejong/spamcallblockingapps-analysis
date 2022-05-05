package zendesk.belvedere;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3-dex2jar.jar:zendesk/belvedere/KeyboardHelper.class */
public class KeyboardHelper extends FrameLayout {
    private EditText inputTrap;
    private SizeListener keyboardSizeListener;
    private int viewInset = -1;
    private int keyboardHeight = -1;
    private boolean isKeyboardVisible = false;
    private List<WeakReference<Listener>> keyboardListener = new ArrayList();
    private final int statusBarHeight = getStatusBarHeight();

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/KeyboardHelper$KeyboardTreeObserver.class */
    private class KeyboardTreeObserver implements ViewTreeObserver.OnGlobalLayoutListener {
        private final Activity activity;

        private KeyboardTreeObserver(Activity activity) {
            this.activity = activity;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int keyboardHeight = KeyboardHelper.this.getKeyboardHeight(this.activity);
            KeyboardHelper.this.isKeyboardVisible = keyboardHeight > 0;
            if (keyboardHeight > 0 && KeyboardHelper.this.keyboardHeight != keyboardHeight) {
                KeyboardHelper.this.keyboardHeight = keyboardHeight;
                if (KeyboardHelper.this.keyboardSizeListener != null) {
                    KeyboardHelper.this.keyboardSizeListener.onSizeChanged(keyboardHeight);
                }
            }
            if (KeyboardHelper.this.keyboardListener == null || keyboardHeight <= 0) {
                KeyboardHelper.this.notifyKeyboardDismissed();
            } else {
                KeyboardHelper.this.notifyKeyboardVisible();
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/KeyboardHelper$Listener.class */
    public interface Listener {
        void onKeyboardDismissed();

        void onKeyboardVisible();
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/belvedere/KeyboardHelper$SizeListener.class */
    interface SizeListener {
        void onSizeChanged(int i);
    }

    private KeyboardHelper(@NonNull Activity activity) {
        super(activity);
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        this.inputTrap = new EditText(activity);
        this.inputTrap.setFocusable(true);
        this.inputTrap.setFocusableInTouchMode(true);
        this.inputTrap.setVisibility(0);
        this.inputTrap.setImeOptions(268435456);
        this.inputTrap.setInputType(16384);
        addView(this.inputTrap);
        activity.getWindow().getDecorView().findViewById(16908290).getViewTreeObserver().addOnGlobalLayoutListener(new KeyboardTreeObserver(activity));
    }

    private int getCachedInset() {
        if (this.viewInset == -1) {
            this.viewInset = getViewInset();
        }
        return this.viewInset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getKeyboardHeight(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        return getViewPortHeight() - (rect.bottom - rect.top);
    }

    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
    }

    private int getViewInset() {
        if (Build.VERSION.SDK_INT < 21) {
            return 0;
        }
        try {
            Field declaredField = View.class.getDeclaredField("mAttachInfo");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            if (obj == null) {
                return 0;
            }
            Field declaredField2 = obj.getClass().getDeclaredField("mStableInsets");
            declaredField2.setAccessible(true);
            return ((Rect) declaredField2.get(obj)).bottom;
        } catch (Exception e) {
            return 0;
        }
    }

    private int getViewPortHeight() {
        return (getRootView().getHeight() - this.statusBarHeight) - getCachedInset();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void hideKeyboard(Activity activity) {
        InputMethodManager inputMethodManager;
        View currentFocus = activity.getCurrentFocus();
        if (currentFocus != null && (inputMethodManager = (InputMethodManager) currentFocus.getContext().getSystemService("input_method")) != null) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    public static KeyboardHelper inject(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (viewGroup.getChildAt(i) instanceof KeyboardHelper) {
                return (KeyboardHelper) viewGroup.getChildAt(i);
            }
        }
        KeyboardHelper keyboardHelper = new KeyboardHelper(activity);
        viewGroup.addView(keyboardHelper);
        return keyboardHelper;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyKeyboardDismissed() {
        for (WeakReference<Listener> weakReference : this.keyboardListener) {
            if (weakReference.get() != null) {
                weakReference.get().onKeyboardDismissed();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyKeyboardVisible() {
        for (WeakReference<Listener> weakReference : this.keyboardListener) {
            if (weakReference.get() != null) {
                weakReference.get().onKeyboardVisible();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void showKeyboard(final EditText editText) {
        editText.post(new Runnable() { // from class: zendesk.belvedere.KeyboardHelper.1
            @Override // java.lang.Runnable
            public void run() {
                InputMethodManager inputMethodManager;
                if (editText.requestFocus() && (inputMethodManager = (InputMethodManager) editText.getContext().getSystemService("input_method")) != null) {
                    inputMethodManager.showSoftInput(editText, 1);
                }
            }
        });
    }

    public void addListener(Listener listener) {
        this.keyboardListener.add(new WeakReference<>(listener));
    }

    public EditText getInputTrap() {
        return this.inputTrap;
    }

    public int getKeyboardHeight() {
        return this.keyboardHeight;
    }

    public boolean isKeyboardVisible() {
        return this.isKeyboardVisible;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setKeyboardHeightListener(SizeListener sizeListener) {
        this.keyboardSizeListener = sizeListener;
    }
}
