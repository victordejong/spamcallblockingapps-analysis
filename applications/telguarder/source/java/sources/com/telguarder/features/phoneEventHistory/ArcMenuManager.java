package com.telguarder.features.phoneEventHistory;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.GravityCompat;
import com.capricorn.ArcMenu;
import com.telguarder.C2083R;
import com.telguarder.helpers.p022ui.UiHelper;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneEventHistory/ArcMenuManager.class */
public class ArcMenuManager {
    private static final float DEGREES_ARC_MENU_CORRECTION = 270.0f;
    private static final float DEGREES_ARROW_IMAGE_CORRECTION = 180.0f;
    private static final float DEGREES_PER_MENU_ITEM = 46.0f;
    private static ArcMenuManager mInstance;
    private ArcMenu mArcMenu;
    private ArcMenuItemClickListener mArcMenuItemListener;
    private ArrayList<ArcMenuItem> mArcMenuItems;
    private float mArrowDegrees;
    private float mFromDegrees;
    private ArrayList<View> mMenuItems;
    private float mToDegrees;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction.class */
    public enum ArcMenuAction {
        CALL,
        SMS,
        EMAIL,
        DELETE,
        DETAIL,
        REPORT,
        BLOCK,
        STAT
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItem.class */
    public static class ArcMenuItem {

        /* renamed from: id */
        public String f1294id;
        public int imageResourceId;
        public ArcMenuAction menuAction;
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuItemClickListener.class */
    public interface ArcMenuItemClickListener {
        void onArcMenuItemClicked(ArcMenuItem arcMenuItem);
    }

    private ArcMenuManager() {
    }

    private void addArcMenuItemsWithListeners(Context context, final ArcMenuItem arcMenuItem) {
        View inflateMenuItem = inflateMenuItem(context);
        ((ImageView) inflateMenuItem.findViewById(C2083R.C2086id.menu_icon)).setImageResource(arcMenuItem.imageResourceId);
        this.mArcMenu.addItem(inflateMenuItem, new View.OnClickListener() { // from class: com.telguarder.features.phoneEventHistory.ArcMenuManager.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ArcMenuManager.this.mArcMenu.closeArcMenu(false);
                if (ArcMenuManager.this.mArcMenuItemListener != null) {
                    ArcMenuManager.this.mArcMenuItemListener.onArcMenuItemClicked(arcMenuItem);
                }
            }
        });
        this.mMenuItems.add(inflateMenuItem);
    }

    private void calculateArcDegrees() {
        if (this.mArcMenuItems.size() <= 1) {
            this.mFromDegrees = 270.0f;
            this.mToDegrees = 270.0f;
            return;
        }
        float size = ((this.mArcMenuItems.size() - 1) * DEGREES_PER_MENU_ITEM) / 2.0f;
        this.mFromDegrees = 270.0f - size;
        this.mToDegrees = size + 270.0f;
    }

    private void checkAndShowHoveredMenuItemWithArrow(int i, int i2) {
        if (!this.mArcMenu.isMenuOpen() || this.mArcMenu.isAnimationInProgress()) {
            return;
        }
        Iterator<View> it = this.mMenuItems.iterator();
        while (it.hasNext()) {
            View next = it.next();
            boolean isTouchOverMenuItem = isTouchOverMenuItem(next, i, i2);
            next.setSelected(isTouchOverMenuItem);
            if (isTouchOverMenuItem) {
                moveArrowToMenuItem(this.mMenuItems.indexOf(next));
            }
        }
    }

    private void createArcMenu(Context context) {
        calculateArcDegrees();
        ArcMenu arcMenu = new ArcMenu(context);
        this.mArcMenu = arcMenu;
        arcMenu.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.mArcMenu.setGravity(GravityCompat.START);
        this.mArcMenu.setArc(this.mFromDegrees, this.mToDegrees);
        this.mArcMenu.setMenuItemSize(UiHelper.dpToPixel(context, 48.0f));
        this.mArcMenu.getMenuCenterControlBackground().setBackgroundResource(C2083R.C2085drawable.contact_popover_white_circle_with_arrow_rotate);
        this.mArcMenu.getMenuCenterControlLayout().removeView(this.mArcMenu.getMenuCenterHint());
        this.mArcMenu.getMenuCenterControlLayout().setBackgroundResource(C2083R.C2085drawable.shape_circle_contact_menu_center);
        this.mArcMenu.getBackgroundLayout().setBackgroundResource(C2083R.C2085drawable.shape_circle_contact_menu_background);
        this.mArcMenu.setBackgroundSideMargins(UiHelper.dpToPixel(context, 58.0f));
    }

    private Animation createArrowRotateAnimation(float f) {
        RotateAnimation rotateAnimation = new RotateAnimation(this.mArrowDegrees, f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(50L);
        rotateAnimation.setInterpolator(new DecelerateInterpolator());
        rotateAnimation.setFillAfter(true);
        return rotateAnimation;
    }

    public static ArcMenuManager getInstance() {
        ArcMenuManager arcMenuManager;
        synchronized (ArcMenuManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new ArcMenuManager();
                }
                arcMenuManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return arcMenuManager;
    }

    private View inflateMenuItem(Context context) {
        return LayoutInflater.from(context).inflate(C2083R.layout.arc_menu_item, (ViewGroup) null);
    }

    private boolean isTouchOverMenuItem(View view, int i, int i2) {
        Rect rect = new Rect();
        int[] iArr = new int[2];
        if (view != null) {
            view.getDrawingRect(rect);
            view.getLocationOnScreen(iArr);
            rect.offset(iArr[0], iArr[1]);
            return rect.contains(i, i2);
        }
        return false;
    }

    private void moveArrowToMenuItem(int i) {
        float f = this.mToDegrees;
        float f2 = this.mFromDegrees;
        int i2 = 1;
        if (this.mMenuItems.size() != 0) {
            i2 = this.mMenuItems.size() - 1;
        }
        float f3 = (((f - f2) / i2) * i) + 270.0f + this.mFromDegrees + 180.0f;
        if (f3 != this.mArrowDegrees) {
            this.mArcMenu.getMenuCenterControlBackground().startAnimation(createArrowRotateAnimation(f3));
        }
        this.mArrowDegrees = f3;
    }

    private boolean pressIfReleasedOverAnyMenuItem(int i, int i2) {
        Iterator<View> it = this.mMenuItems.iterator();
        boolean z = false;
        while (it.hasNext()) {
            View next = it.next();
            if (isTouchOverMenuItem(next, i, i2)) {
                next.performClick();
                z = true;
            }
        }
        return z;
    }

    public ArcMenu getArcMenu(Context context, ArrayList<ArcMenuItem> arrayList, ArcMenuItemClickListener arcMenuItemClickListener) {
        this.mArcMenuItems = arrayList;
        this.mArrowDegrees = 0.0f;
        this.mMenuItems = new ArrayList<>();
        this.mArcMenuItemListener = arcMenuItemClickListener;
        createArcMenu(context);
        Iterator<ArcMenuItem> it = this.mArcMenuItems.iterator();
        while (it.hasNext()) {
            addArcMenuItemsWithListeners(context, it.next());
        }
        ArrayList<View> arrayList2 = this.mMenuItems;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return null;
        }
        return this.mArcMenu;
    }

    public void handleTouchEvent(int i, int i2, int i3) {
        if (this.mArcMenu == null) {
            return;
        }
        if (i3 != 1) {
            checkAndShowHoveredMenuItemWithArrow(i, i2);
            return;
        }
        checkAndShowHoveredMenuItemWithArrow(i, i2);
        boolean z = false;
        if (this.mArcMenu.isMenuOpen()) {
            z = false;
            if (!this.mArcMenu.isAnimationInProgress()) {
                z = pressIfReleasedOverAnyMenuItem(i, i2);
            }
        }
        if (z) {
            return;
        }
        this.mArcMenu.closeArcMenu(true);
    }
}
