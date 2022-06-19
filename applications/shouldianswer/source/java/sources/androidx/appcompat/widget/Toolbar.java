package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.C0051a;
import androidx.appcompat.app.AbstractC0078a;
import androidx.appcompat.p006a.p007a.C0062a;
import androidx.appcompat.view.AbstractC0157c;
import androidx.appcompat.view.C0162g;
import androidx.appcompat.view.menu.AbstractC0197m;
import androidx.appcompat.view.menu.C0182g;
import androidx.appcompat.view.menu.C0186i;
import androidx.appcompat.view.menu.SubMenuC0206r;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.p023g.C0533c;
import androidx.core.p023g.C0537f;
import androidx.core.p023g.C0552u;
import androidx.customview.p026a.AbstractC0610a;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {
    private static final String TAG = "Toolbar";
    private AbstractC0197m.AbstractC0198a mActionMenuPresenterCallback;
    int mButtonGravity;
    ImageButton mCollapseButtonView;
    private CharSequence mCollapseDescription;
    private Drawable mCollapseIcon;
    private boolean mCollapsible;
    private int mContentInsetEndWithActions;
    private int mContentInsetStartWithNavigation;
    private C0298ak mContentInsets;
    private boolean mEatingHover;
    private boolean mEatingTouch;
    View mExpandedActionView;
    private C0262a mExpandedMenuPresenter;
    private int mGravity;
    private final ArrayList<View> mHiddenViews;
    private ImageView mLogoView;
    private int mMaxButtonHeight;
    private C0182g.AbstractC0183a mMenuBuilderCallback;
    private ActionMenuView mMenuView;
    private final ActionMenuView.AbstractC0226e mMenuViewItemClickListener;
    private ImageButton mNavButtonView;
    AbstractC0264c mOnMenuItemClickListener;
    private ActionMenuPresenter mOuterActionMenuPresenter;
    private Context mPopupContext;
    private int mPopupTheme;
    private final Runnable mShowOverflowMenuRunnable;
    private CharSequence mSubtitleText;
    private int mSubtitleTextAppearance;
    private ColorStateList mSubtitleTextColor;
    private TextView mSubtitleTextView;
    private final int[] mTempMargins;
    private final ArrayList<View> mTempViews;
    private int mTitleMarginBottom;
    private int mTitleMarginEnd;
    private int mTitleMarginStart;
    private int mTitleMarginTop;
    private CharSequence mTitleText;
    private int mTitleTextAppearance;
    private ColorStateList mTitleTextColor;
    private TextView mTitleTextView;
    private C0312at mWrapper;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.widget.Toolbar.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        int f1099a;

        /* renamed from: b */
        boolean f1100b;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1099a = parcel.readInt();
            this.f1100b = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1099a);
            parcel.writeInt(this.f1100b ? 1 : 0);
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$a.class */
    public class C0262a implements AbstractC0197m {

        /* renamed from: a */
        C0182g f1101a;

        /* renamed from: b */
        C0186i f1102b;

        C0262a() {
            Toolbar.this = r4;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public boolean collapseItemActionView(C0182g c0182g, C0186i c0186i) {
            if (Toolbar.this.mExpandedActionView instanceof AbstractC0157c) {
                ((AbstractC0157c) Toolbar.this.mExpandedActionView).mo7375b();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.mExpandedActionView);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.mCollapseButtonView);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.mExpandedActionView = null;
            toolbar3.addChildrenForExpandedActionView();
            this.f1102b = null;
            Toolbar.this.requestLayout();
            c0186i.m7548e(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public boolean expandItemActionView(C0182g c0182g, C0186i c0186i) {
            Toolbar.this.ensureCollapseButtonView();
            ViewParent parent = Toolbar.this.mCollapseButtonView.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.mCollapseButtonView);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.mCollapseButtonView);
            }
            Toolbar.this.mExpandedActionView = c0186i.getActionView();
            this.f1102b = c0186i;
            ViewParent parent2 = Toolbar.this.mExpandedActionView.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.mExpandedActionView);
                }
                C0263b generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                generateDefaultLayoutParams.f237a = 8388611 | (Toolbar.this.mButtonGravity & 112);
                generateDefaultLayoutParams.f1104b = 2;
                Toolbar.this.mExpandedActionView.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar4 = Toolbar.this;
                toolbar4.addView(toolbar4.mExpandedActionView);
            }
            Toolbar.this.removeChildrenForExpandedActionView();
            Toolbar.this.requestLayout();
            c0186i.m7548e(true);
            if (Toolbar.this.mExpandedActionView instanceof AbstractC0157c) {
                ((AbstractC0157c) Toolbar.this.mExpandedActionView).mo7389a();
                return true;
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public boolean flagActionItems() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public void initForMenu(Context context, C0182g c0182g) {
            C0186i c0186i;
            C0182g c0182g2 = this.f1101a;
            if (c0182g2 != null && (c0186i = this.f1102b) != null) {
                c0182g2.collapseItemActionView(c0186i);
            }
            this.f1101a = c0182g;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public void onCloseMenu(C0182g c0182g, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public Parcelable onSaveInstanceState() {
            return null;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public boolean onSubMenuSelected(SubMenuC0206r subMenuC0206r) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public void setCallback(AbstractC0197m.AbstractC0198a abstractC0198a) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0197m
        public void updateMenuView(boolean z) {
            if (this.f1102b != null) {
                C0182g c0182g = this.f1101a;
                boolean z2 = false;
                if (c0182g != null) {
                    int size = c0182g.size();
                    int i = 0;
                    while (true) {
                        z2 = false;
                        if (i >= size) {
                            break;
                        } else if (this.f1101a.getItem(i) == this.f1102b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (z2) {
                    return;
                }
                collapseItemActionView(this.f1101a, this.f1102b);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public static class C0263b extends AbstractC0078a.C0079a {

        /* renamed from: b */
        int f1104b;

        public C0263b(int i, int i2) {
            super(i, i2);
            this.f1104b = 0;
            this.f237a = 8388627;
        }

        public C0263b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1104b = 0;
        }

        public C0263b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1104b = 0;
        }

        public C0263b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1104b = 0;
            m7318a(marginLayoutParams);
        }

        public C0263b(AbstractC0078a.C0079a c0079a) {
            super(c0079a);
            this.f1104b = 0;
        }

        public C0263b(C0263b c0263b) {
            super((AbstractC0078a.C0079a) c0263b);
            this.f1104b = 0;
            this.f1104b = c0263b.f1104b;
        }

        /* renamed from: a */
        void m7318a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$c.class */
    public interface AbstractC0264c {
        /* renamed from: a */
        boolean mo7317a(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mGravity = 8388627;
        this.mTempViews = new ArrayList<>();
        this.mHiddenViews = new ArrayList<>();
        this.mTempMargins = new int[2];
        this.mMenuViewItemClickListener = new ActionMenuView.AbstractC0226e() { // from class: androidx.appcompat.widget.Toolbar.1
            @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0226e
            /* renamed from: a */
            public boolean mo7322a(MenuItem menuItem) {
                if (Toolbar.this.mOnMenuItemClickListener != null) {
                    return Toolbar.this.mOnMenuItemClickListener.mo7317a(menuItem);
                }
                return false;
            }
        };
        this.mShowOverflowMenuRunnable = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public void run() {
                Toolbar.this.showOverflowMenu();
            }
        };
        C0311as m7156a = C0311as.m7156a(getContext(), attributeSet, C0051a.C0061j.Toolbar, i, 0);
        this.mTitleTextAppearance = m7156a.m7143g(C0051a.C0061j.Toolbar_titleTextAppearance, 0);
        this.mSubtitleTextAppearance = m7156a.m7143g(C0051a.C0061j.Toolbar_subtitleTextAppearance, 0);
        this.mGravity = m7156a.m7151c(C0051a.C0061j.Toolbar_android_gravity, this.mGravity);
        this.mButtonGravity = m7156a.m7151c(C0051a.C0061j.Toolbar_buttonGravity, 48);
        int m7149d = m7156a.m7149d(C0051a.C0061j.Toolbar_titleMargin, 0);
        int m7149d2 = m7156a.m7144g(C0051a.C0061j.Toolbar_titleMargins) ? m7156a.m7149d(C0051a.C0061j.Toolbar_titleMargins, m7149d) : m7149d;
        this.mTitleMarginBottom = m7149d2;
        this.mTitleMarginTop = m7149d2;
        this.mTitleMarginEnd = m7149d2;
        this.mTitleMarginStart = m7149d2;
        int m7149d3 = m7156a.m7149d(C0051a.C0061j.Toolbar_titleMarginStart, -1);
        if (m7149d3 >= 0) {
            this.mTitleMarginStart = m7149d3;
        }
        int m7149d4 = m7156a.m7149d(C0051a.C0061j.Toolbar_titleMarginEnd, -1);
        if (m7149d4 >= 0) {
            this.mTitleMarginEnd = m7149d4;
        }
        int m7149d5 = m7156a.m7149d(C0051a.C0061j.Toolbar_titleMarginTop, -1);
        if (m7149d5 >= 0) {
            this.mTitleMarginTop = m7149d5;
        }
        int m7149d6 = m7156a.m7149d(C0051a.C0061j.Toolbar_titleMarginBottom, -1);
        if (m7149d6 >= 0) {
            this.mTitleMarginBottom = m7149d6;
        }
        this.mMaxButtonHeight = m7156a.m7147e(C0051a.C0061j.Toolbar_maxButtonHeight, -1);
        int m7149d7 = m7156a.m7149d(C0051a.C0061j.Toolbar_contentInsetStart, AbstractC0610a.INVALID_ID);
        int m7149d8 = m7156a.m7149d(C0051a.C0061j.Toolbar_contentInsetEnd, AbstractC0610a.INVALID_ID);
        int m7147e = m7156a.m7147e(C0051a.C0061j.Toolbar_contentInsetLeft, 0);
        int m7147e2 = m7156a.m7147e(C0051a.C0061j.Toolbar_contentInsetRight, 0);
        ensureContentInsets();
        this.mContentInsets.m7204b(m7147e, m7147e2);
        if (m7149d7 != Integer.MIN_VALUE || m7149d8 != Integer.MIN_VALUE) {
            this.mContentInsets.m7207a(m7149d7, m7149d8);
        }
        this.mContentInsetStartWithNavigation = m7156a.m7149d(C0051a.C0061j.Toolbar_contentInsetStartWithNavigation, AbstractC0610a.INVALID_ID);
        this.mContentInsetEndWithActions = m7156a.m7149d(C0051a.C0061j.Toolbar_contentInsetEndWithActions, AbstractC0610a.INVALID_ID);
        this.mCollapseIcon = m7156a.m7163a(C0051a.C0061j.Toolbar_collapseIcon);
        this.mCollapseDescription = m7156a.m7152c(C0051a.C0061j.Toolbar_collapseContentDescription);
        CharSequence m7152c = m7156a.m7152c(C0051a.C0061j.Toolbar_title);
        if (!TextUtils.isEmpty(m7152c)) {
            setTitle(m7152c);
        }
        CharSequence m7152c2 = m7156a.m7152c(C0051a.C0061j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(m7152c2)) {
            setSubtitle(m7152c2);
        }
        this.mPopupContext = getContext();
        setPopupTheme(m7156a.m7143g(C0051a.C0061j.Toolbar_popupTheme, 0));
        Drawable m7163a = m7156a.m7163a(C0051a.C0061j.Toolbar_navigationIcon);
        if (m7163a != null) {
            setNavigationIcon(m7163a);
        }
        CharSequence m7152c3 = m7156a.m7152c(C0051a.C0061j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(m7152c3)) {
            setNavigationContentDescription(m7152c3);
        }
        Drawable m7163a2 = m7156a.m7163a(C0051a.C0061j.Toolbar_logo);
        if (m7163a2 != null) {
            setLogo(m7163a2);
        }
        CharSequence m7152c4 = m7156a.m7152c(C0051a.C0061j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(m7152c4)) {
            setLogoDescription(m7152c4);
        }
        if (m7156a.m7144g(C0051a.C0061j.Toolbar_titleTextColor)) {
            setTitleTextColor(m7156a.m7148e(C0051a.C0061j.Toolbar_titleTextColor));
        }
        if (m7156a.m7144g(C0051a.C0061j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(m7156a.m7148e(C0051a.C0061j.Toolbar_subtitleTextColor));
        }
        if (m7156a.m7144g(C0051a.C0061j.Toolbar_menu)) {
            inflateMenu(m7156a.m7143g(C0051a.C0061j.Toolbar_menu, 0));
        }
        m7156a.m7164a();
    }

    private void addCustomViewsWithGravity(List<View> list, int i) {
        boolean z = C0552u.m6245f(this) == 1;
        int childCount = getChildCount();
        int m6344a = C0533c.m6344a(i, C0552u.m6245f(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                C0263b c0263b = (C0263b) childAt.getLayoutParams();
                if (c0263b.f1104b == 0 && shouldLayout(childAt) && getChildHorizontalGravity(c0263b.f237a) == m6344a) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            C0263b c0263b2 = (C0263b) childAt2.getLayoutParams();
            if (c0263b2.f1104b == 0 && shouldLayout(childAt2) && getChildHorizontalGravity(c0263b2.f237a) == m6344a) {
                list.add(childAt2);
            }
        }
    }

    private void addSystemView(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        C0263b generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (C0263b) layoutParams;
        generateDefaultLayoutParams.f1104b = 1;
        if (!z || this.mExpandedActionView == null) {
            addView(view, generateDefaultLayoutParams);
            return;
        }
        view.setLayoutParams(generateDefaultLayoutParams);
        this.mHiddenViews.add(view);
    }

    private void ensureContentInsets() {
        if (this.mContentInsets == null) {
            this.mContentInsets = new C0298ak();
        }
    }

    private void ensureLogoView() {
        if (this.mLogoView == null) {
            this.mLogoView = new C0340m(getContext());
        }
    }

    private void ensureMenu() {
        ensureMenuView();
        if (this.mMenuView.m7444d() == null) {
            C0182g c0182g = (C0182g) this.mMenuView.getMenu();
            if (this.mExpandedMenuPresenter == null) {
                this.mExpandedMenuPresenter = new C0262a();
            }
            this.mMenuView.setExpandedActionViewsExclusive(true);
            c0182g.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
        }
    }

    private void ensureMenuView() {
        if (this.mMenuView == null) {
            this.mMenuView = new ActionMenuView(getContext());
            this.mMenuView.setPopupTheme(this.mPopupTheme);
            this.mMenuView.setOnMenuItemClickListener(this.mMenuViewItemClickListener);
            this.mMenuView.m7447a(this.mActionMenuPresenterCallback, this.mMenuBuilderCallback);
            C0263b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f237a = 8388613 | (this.mButtonGravity & 112);
            this.mMenuView.setLayoutParams(generateDefaultLayoutParams);
            addSystemView(this.mMenuView, false);
        }
    }

    private void ensureNavButtonView() {
        if (this.mNavButtonView == null) {
            this.mNavButtonView = new AppCompatImageButton(getContext(), null, C0051a.C0052a.toolbarNavigationButtonStyle);
            C0263b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f237a = 8388611 | (this.mButtonGravity & 112);
            this.mNavButtonView.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    private int getChildHorizontalGravity(int i) {
        int m6245f = C0552u.m6245f(this);
        int m6344a = C0533c.m6344a(i, m6245f) & 7;
        if (m6344a != 1) {
            int i2 = 3;
            if (m6344a != 3 && m6344a != 5) {
                if (m6245f == 1) {
                    i2 = 5;
                }
                return i2;
            }
        }
        return m6344a;
    }

    private int getChildTop(View view, int i) {
        int i2;
        C0263b c0263b = (C0263b) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int childVerticalGravity = getChildVerticalGravity(c0263b.f237a);
        if (childVerticalGravity != 48) {
            if (childVerticalGravity == 80) {
                return (((getHeight() - getPaddingBottom()) - measuredHeight) - c0263b.bottomMargin) - i3;
            }
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int height = getHeight();
            int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
            if (i4 < c0263b.topMargin) {
                i2 = c0263b.topMargin;
            } else {
                int i5 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
                i2 = i4;
                if (i5 < c0263b.bottomMargin) {
                    i2 = Math.max(0, i4 - (c0263b.bottomMargin - i5));
                }
            }
            return paddingTop + i2;
        }
        return getPaddingTop() - i3;
    }

    private int getChildVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = i2;
        if (i2 != 16) {
            i3 = i2;
            if (i2 != 48) {
                i3 = i2;
                if (i2 != 80) {
                    i3 = this.mGravity & 112;
                }
            }
        }
        return i3;
    }

    private int getHorizontalMargins(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return C0537f.m6333a(marginLayoutParams) + C0537f.m6331b(marginLayoutParams);
    }

    private MenuInflater getMenuInflater() {
        return new C0162g(getContext());
    }

    private int getVerticalMargins(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private int getViewListMeasuredWidth(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            C0263b c0263b = (C0263b) view.getLayoutParams();
            int i5 = c0263b.leftMargin - i;
            int i6 = c0263b.rightMargin - i2;
            int max = Math.max(0, i5);
            int max2 = Math.max(0, i6);
            i = Math.max(0, -i5);
            i2 = Math.max(0, -i6);
            i3 += max + view.getMeasuredWidth() + max2;
        }
        return i3;
    }

    private boolean isChildOrHidden(View view) {
        return view.getParent() == this || this.mHiddenViews.contains(view);
    }

    private static boolean isCustomView(View view) {
        return ((C0263b) view.getLayoutParams()).f1104b == 0;
    }

    private int layoutChildLeft(View view, int i, int[] iArr, int i2) {
        C0263b c0263b = (C0263b) view.getLayoutParams();
        int i3 = c0263b.leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int childTop = getChildTop(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, childTop, max + measuredWidth, view.getMeasuredHeight() + childTop);
        return max + measuredWidth + c0263b.rightMargin;
    }

    private int layoutChildRight(View view, int i, int[] iArr, int i2) {
        C0263b c0263b = (C0263b) view.getLayoutParams();
        int i3 = c0263b.rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int childTop = getChildTop(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, childTop, max, view.getMeasuredHeight() + childTop);
        return max - (measuredWidth + c0263b.leftMargin);
    }

    private int measureChildCollapseMargins(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    private void measureChildConstrained(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        int i6 = childMeasureSpec2;
        if (mode != 1073741824) {
            i6 = childMeasureSpec2;
            if (i5 >= 0) {
                int i7 = i5;
                if (mode != 0) {
                    i7 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
                }
                i6 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
            }
        }
        view.measure(childMeasureSpec, i6);
    }

    private void postShowOverflowMenu() {
        removeCallbacks(this.mShowOverflowMenuRunnable);
        post(this.mShowOverflowMenuRunnable);
    }

    private boolean shouldCollapse() {
        if (!this.mCollapsible) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (shouldLayout(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean shouldLayout(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    void addChildrenForExpandedActionView() {
        for (int size = this.mHiddenViews.size() - 1; size >= 0; size--) {
            addView(this.mHiddenViews.get(size));
        }
        this.mHiddenViews.clear();
    }

    public boolean canShowOverflowMenu() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.mMenuView) != null && actionMenuView.m7454a();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C0263b);
    }

    public void collapseActionView() {
        C0262a c0262a = this.mExpandedMenuPresenter;
        C0186i c0186i = c0262a == null ? null : c0262a.f1102b;
        if (c0186i != null) {
            c0186i.collapseActionView();
        }
    }

    public void dismissPopupMenus() {
        ActionMenuView actionMenuView = this.mMenuView;
        if (actionMenuView != null) {
            actionMenuView.m7439i();
        }
    }

    void ensureCollapseButtonView() {
        if (this.mCollapseButtonView == null) {
            this.mCollapseButtonView = new AppCompatImageButton(getContext(), null, C0051a.C0052a.toolbarNavigationButtonStyle);
            this.mCollapseButtonView.setImageDrawable(this.mCollapseIcon);
            this.mCollapseButtonView.setContentDescription(this.mCollapseDescription);
            C0263b generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f237a = 8388611 | (this.mButtonGravity & 112);
            generateDefaultLayoutParams.f1104b = 2;
            this.mCollapseButtonView.setLayoutParams(generateDefaultLayoutParams);
            this.mCollapseButtonView.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.Toolbar.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Toolbar.this.collapseActionView();
                }
            });
        }
    }

    @Override // android.view.ViewGroup
    public C0263b generateDefaultLayoutParams() {
        return new C0263b(-2, -2);
    }

    @Override // android.view.ViewGroup
    public C0263b generateLayoutParams(AttributeSet attributeSet) {
        return new C0263b(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public C0263b generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0263b ? new C0263b((C0263b) layoutParams) : layoutParams instanceof AbstractC0078a.C0079a ? new C0263b((AbstractC0078a.C0079a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0263b((ViewGroup.MarginLayoutParams) layoutParams) : new C0263b(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.mCollapseButtonView;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.mCollapseButtonView;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public int getContentInsetEnd() {
        C0298ak c0298ak = this.mContentInsets;
        return c0298ak != null ? c0298ak.m7202d() : 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.mContentInsetEndWithActions;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetEnd();
        }
        return i;
    }

    public int getContentInsetLeft() {
        C0298ak c0298ak = this.mContentInsets;
        return c0298ak != null ? c0298ak.m7208a() : 0;
    }

    public int getContentInsetRight() {
        C0298ak c0298ak = this.mContentInsets;
        return c0298ak != null ? c0298ak.m7205b() : 0;
    }

    public int getContentInsetStart() {
        C0298ak c0298ak = this.mContentInsets;
        return c0298ak != null ? c0298ak.m7203c() : 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.mContentInsetStartWithNavigation;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetStart();
        }
        return i;
    }

    public int getCurrentContentInsetEnd() {
        C0182g m7444d;
        ActionMenuView actionMenuView = this.mMenuView;
        return actionMenuView != null && (m7444d = actionMenuView.m7444d()) != null && m7444d.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.mContentInsetEndWithActions, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return C0552u.m6245f(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return C0552u.m6245f(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.mContentInsetStartWithNavigation, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.mLogoView;
        return imageView != null ? imageView.getDrawable() : null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.mLogoView;
        return imageView != null ? imageView.getContentDescription() : null;
    }

    public Menu getMenu() {
        ensureMenu();
        return this.mMenuView.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.mNavButtonView;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.mNavButtonView;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.mOuterActionMenuPresenter;
    }

    public Drawable getOverflowIcon() {
        ensureMenu();
        return this.mMenuView.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.mPopupContext;
    }

    public int getPopupTheme() {
        return this.mPopupTheme;
    }

    public CharSequence getSubtitle() {
        return this.mSubtitleText;
    }

    final TextView getSubtitleTextView() {
        return this.mSubtitleTextView;
    }

    public CharSequence getTitle() {
        return this.mTitleText;
    }

    public int getTitleMarginBottom() {
        return this.mTitleMarginBottom;
    }

    public int getTitleMarginEnd() {
        return this.mTitleMarginEnd;
    }

    public int getTitleMarginStart() {
        return this.mTitleMarginStart;
    }

    public int getTitleMarginTop() {
        return this.mTitleMarginTop;
    }

    final TextView getTitleTextView() {
        return this.mTitleTextView;
    }

    public AbstractC0355z getWrapper() {
        if (this.mWrapper == null) {
            this.mWrapper = new C0312at(this, true);
        }
        return this.mWrapper;
    }

    public boolean hasExpandedActionView() {
        C0262a c0262a = this.mExpandedMenuPresenter;
        return (c0262a == null || c0262a.f1102b == null) ? false : true;
    }

    public boolean hideOverflowMenu() {
        ActionMenuView actionMenuView = this.mMenuView;
        return actionMenuView != null && actionMenuView.m7442f();
    }

    public void inflateMenu(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    public boolean isOverflowMenuShowPending() {
        ActionMenuView actionMenuView = this.mMenuView;
        return actionMenuView != null && actionMenuView.m7440h();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuView actionMenuView = this.mMenuView;
        return actionMenuView != null && actionMenuView.m7441g();
    }

    public boolean isTitleTruncated() {
        Layout layout;
        TextView textView = this.mTitleTextView;
        if (textView == null || (layout = textView.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i = 0; i < lineCount; i++) {
            if (layout.getEllipsisCount(i) > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mShowOverflowMenuRunnable);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.mEatingHover = false;
        }
        if (!this.mEatingHover) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.mEatingHover = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.mEatingHover = false;
            return true;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x054a A[LOOP:0: B:120:0x0544->B:122:0x054a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x057f A[LOOP:1: B:124:0x0579->B:126:0x057f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x05d2  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x05f8 A[LOOP:2: B:134:0x05f2->B:136:0x05f8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x035b  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Object[] objArr;
        Object[] objArr2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr = this.mTempMargins;
        if (C0321ay.m7115a(this)) {
            objArr2 = 1;
            objArr = null;
        } else {
            objArr = 1;
            objArr2 = null;
        }
        if (shouldLayout(this.mNavButtonView)) {
            measureChildConstrained(this.mNavButtonView, i, 0, i2, 0, this.mMaxButtonHeight);
            i5 = this.mNavButtonView.getMeasuredWidth() + getHorizontalMargins(this.mNavButtonView);
            i4 = Math.max(0, this.mNavButtonView.getMeasuredHeight() + getVerticalMargins(this.mNavButtonView));
            i3 = View.combineMeasuredStates(0, this.mNavButtonView.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
            i3 = 0;
        }
        int i9 = i5;
        int i10 = i4;
        int i11 = i3;
        if (shouldLayout(this.mCollapseButtonView)) {
            measureChildConstrained(this.mCollapseButtonView, i, 0, i2, 0, this.mMaxButtonHeight);
            i9 = this.mCollapseButtonView.getMeasuredWidth() + getHorizontalMargins(this.mCollapseButtonView);
            i10 = Math.max(i4, this.mCollapseButtonView.getMeasuredHeight() + getVerticalMargins(this.mCollapseButtonView));
            i11 = View.combineMeasuredStates(i3, this.mCollapseButtonView.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i9);
        iArr[objArr2 == 1 ? 1 : 0] = Math.max(0, currentContentInsetStart - i9);
        if (shouldLayout(this.mMenuView)) {
            measureChildConstrained(this.mMenuView, i, max, i2, 0, this.mMaxButtonHeight);
            i6 = this.mMenuView.getMeasuredWidth() + getHorizontalMargins(this.mMenuView);
            i10 = Math.max(i10, this.mMenuView.getMeasuredHeight() + getVerticalMargins(this.mMenuView));
            i11 = View.combineMeasuredStates(i11, this.mMenuView.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i6);
        iArr[objArr == 1 ? 1 : 0] = Math.max(0, currentContentInsetEnd - i6);
        int i12 = max2;
        int i13 = i10;
        int i14 = i11;
        if (shouldLayout(this.mExpandedActionView)) {
            i12 = max2 + measureChildCollapseMargins(this.mExpandedActionView, i, max2, i2, 0, iArr);
            i13 = Math.max(i10, this.mExpandedActionView.getMeasuredHeight() + getVerticalMargins(this.mExpandedActionView));
            i14 = View.combineMeasuredStates(i11, this.mExpandedActionView.getMeasuredState());
        }
        int i15 = i12;
        int i16 = i13;
        int i17 = i14;
        if (shouldLayout(this.mLogoView)) {
            i15 = i12 + measureChildCollapseMargins(this.mLogoView, i, i12, i2, 0, iArr);
            i16 = Math.max(i13, this.mLogoView.getMeasuredHeight() + getVerticalMargins(this.mLogoView));
            i17 = View.combineMeasuredStates(i14, this.mLogoView.getMeasuredState());
        }
        int childCount = getChildCount();
        int i18 = i15;
        int i19 = i16;
        int i20 = 0;
        while (i20 < childCount) {
            View childAt = getChildAt(i20);
            int i21 = i18;
            int i22 = i17;
            int i23 = i19;
            if (((C0263b) childAt.getLayoutParams()).f1104b == 0) {
                if (!shouldLayout(childAt)) {
                    i21 = i18;
                    i22 = i17;
                    i23 = i19;
                } else {
                    i21 = i18 + measureChildCollapseMargins(childAt, i, i18, i2, 0, iArr);
                    i23 = Math.max(i19, childAt.getMeasuredHeight() + getVerticalMargins(childAt));
                    i22 = View.combineMeasuredStates(i17, childAt.getMeasuredState());
                }
            }
            i20++;
            i18 = i21;
            i17 = i22;
            i19 = i23;
        }
        int i24 = this.mTitleMarginTop + this.mTitleMarginBottom;
        int i25 = this.mTitleMarginStart + this.mTitleMarginEnd;
        if (shouldLayout(this.mTitleTextView)) {
            measureChildCollapseMargins(this.mTitleTextView, i, i18 + i25, i2, i24, iArr);
            int measuredWidth = this.mTitleTextView.getMeasuredWidth();
            int horizontalMargins = getHorizontalMargins(this.mTitleTextView);
            int measuredHeight = this.mTitleTextView.getMeasuredHeight();
            int verticalMargins = getVerticalMargins(this.mTitleTextView);
            i17 = View.combineMeasuredStates(i17, this.mTitleTextView.getMeasuredState());
            i8 = measuredHeight + verticalMargins;
            i7 = measuredWidth + horizontalMargins;
        } else {
            i8 = 0;
            i7 = 0;
        }
        if (shouldLayout(this.mSubtitleTextView)) {
            i7 = Math.max(i7, measureChildCollapseMargins(this.mSubtitleTextView, i, i18 + i25, i2, i8 + i24, iArr));
            i8 += this.mSubtitleTextView.getMeasuredHeight() + getVerticalMargins(this.mSubtitleTextView);
            i17 = View.combineMeasuredStates(i17, this.mSubtitleTextView.getMeasuredState());
        }
        int max3 = Math.max(i19, i8);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(i18 + i7 + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i17);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(max3 + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, i17 << 16);
        if (shouldCollapse()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        ActionMenuView actionMenuView = this.mMenuView;
        C0182g m7444d = actionMenuView != null ? actionMenuView.m7444d() : null;
        if (savedState.f1099a != 0 && this.mExpandedMenuPresenter != null && m7444d != null && (findItem = m7444d.findItem(savedState.f1099a)) != null) {
            findItem.expandActionView();
        }
        if (!savedState.f1100b) {
            return;
        }
        postShowOverflowMenu();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        ensureContentInsets();
        C0298ak c0298ak = this.mContentInsets;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        c0298ak.m7206a(z);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        C0262a c0262a = this.mExpandedMenuPresenter;
        if (c0262a != null && c0262a.f1102b != null) {
            savedState.f1099a = this.mExpandedMenuPresenter.f1102b.getItemId();
        }
        savedState.f1100b = isOverflowMenuShowing();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mEatingTouch = false;
        }
        if (!this.mEatingTouch) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.mEatingTouch = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.mEatingTouch = false;
            return true;
        }
        return true;
    }

    void removeChildrenForExpandedActionView() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((C0263b) childAt.getLayoutParams()).f1104b != 2 && childAt != this.mMenuView) {
                removeViewAt(childCount);
                this.mHiddenViews.add(childAt);
            }
        }
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            ensureCollapseButtonView();
        }
        ImageButton imageButton = this.mCollapseButtonView;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(C0062a.m7983b(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            ensureCollapseButtonView();
            this.mCollapseButtonView.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.mCollapseButtonView;
        if (imageButton == null) {
            return;
        }
        imageButton.setImageDrawable(this.mCollapseIcon);
    }

    public void setCollapsible(boolean z) {
        this.mCollapsible = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.mContentInsetEndWithActions) {
            this.mContentInsetEndWithActions = i2;
            if (getNavigationIcon() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.mContentInsetStartWithNavigation) {
            this.mContentInsetStartWithNavigation = i2;
            if (getNavigationIcon() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        ensureContentInsets();
        this.mContentInsets.m7204b(i, i2);
    }

    public void setContentInsetsRelative(int i, int i2) {
        ensureContentInsets();
        this.mContentInsets.m7207a(i, i2);
    }

    public void setLogo(int i) {
        setLogo(C0062a.m7983b(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            ensureLogoView();
            if (!isChildOrHidden(this.mLogoView)) {
                addSystemView(this.mLogoView, true);
            }
        } else {
            ImageView imageView = this.mLogoView;
            if (imageView != null && isChildOrHidden(imageView)) {
                removeView(this.mLogoView);
                this.mHiddenViews.remove(this.mLogoView);
            }
        }
        ImageView imageView2 = this.mLogoView;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            ensureLogoView();
        }
        ImageView imageView = this.mLogoView;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setMenu(C0182g c0182g, ActionMenuPresenter actionMenuPresenter) {
        if (c0182g == null && this.mMenuView == null) {
            return;
        }
        ensureMenuView();
        C0182g m7444d = this.mMenuView.m7444d();
        if (m7444d == c0182g) {
            return;
        }
        if (m7444d != null) {
            m7444d.removeMenuPresenter(this.mOuterActionMenuPresenter);
            m7444d.removeMenuPresenter(this.mExpandedMenuPresenter);
        }
        if (this.mExpandedMenuPresenter == null) {
            this.mExpandedMenuPresenter = new C0262a();
        }
        actionMenuPresenter.m7469b(true);
        if (c0182g != null) {
            c0182g.addMenuPresenter(actionMenuPresenter, this.mPopupContext);
            c0182g.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
        } else {
            actionMenuPresenter.initForMenu(this.mPopupContext, null);
            this.mExpandedMenuPresenter.initForMenu(this.mPopupContext, null);
            actionMenuPresenter.updateMenuView(true);
            this.mExpandedMenuPresenter.updateMenuView(true);
        }
        this.mMenuView.setPopupTheme(this.mPopupTheme);
        this.mMenuView.setPresenter(actionMenuPresenter);
        this.mOuterActionMenuPresenter = actionMenuPresenter;
    }

    public void setMenuCallbacks(AbstractC0197m.AbstractC0198a abstractC0198a, C0182g.AbstractC0183a abstractC0183a) {
        this.mActionMenuPresenterCallback = abstractC0198a;
        this.mMenuBuilderCallback = abstractC0183a;
        ActionMenuView actionMenuView = this.mMenuView;
        if (actionMenuView != null) {
            actionMenuView.m7447a(abstractC0198a, abstractC0183a);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            ensureNavButtonView();
        }
        ImageButton imageButton = this.mNavButtonView;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C0062a.m7983b(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            ensureNavButtonView();
            if (!isChildOrHidden(this.mNavButtonView)) {
                addSystemView(this.mNavButtonView, true);
            }
        } else {
            ImageButton imageButton = this.mNavButtonView;
            if (imageButton != null && isChildOrHidden(imageButton)) {
                removeView(this.mNavButtonView);
                this.mHiddenViews.remove(this.mNavButtonView);
            }
        }
        ImageButton imageButton2 = this.mNavButtonView;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        ensureNavButtonView();
        this.mNavButtonView.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(AbstractC0264c abstractC0264c) {
        this.mOnMenuItemClickListener = abstractC0264c;
    }

    public void setOverflowIcon(Drawable drawable) {
        ensureMenu();
        this.mMenuView.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.mPopupTheme != i) {
            this.mPopupTheme = i;
            if (i == 0) {
                this.mPopupContext = getContext();
            } else {
                this.mPopupContext = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.mSubtitleTextView == null) {
                Context context = getContext();
                this.mSubtitleTextView = new AppCompatTextView(context);
                this.mSubtitleTextView.setSingleLine();
                this.mSubtitleTextView.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.mSubtitleTextAppearance;
                if (i != 0) {
                    this.mSubtitleTextView.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.mSubtitleTextColor;
                if (colorStateList != null) {
                    this.mSubtitleTextView.setTextColor(colorStateList);
                }
            }
            if (!isChildOrHidden(this.mSubtitleTextView)) {
                addSystemView(this.mSubtitleTextView, true);
            }
        } else {
            TextView textView = this.mSubtitleTextView;
            if (textView != null && isChildOrHidden(textView)) {
                removeView(this.mSubtitleTextView);
                this.mHiddenViews.remove(this.mSubtitleTextView);
            }
        }
        TextView textView2 = this.mSubtitleTextView;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.mSubtitleText = charSequence;
    }

    public void setSubtitleTextAppearance(Context context, int i) {
        this.mSubtitleTextAppearance = i;
        TextView textView = this.mSubtitleTextView;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.mSubtitleTextColor = colorStateList;
        TextView textView = this.mSubtitleTextView;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.mTitleTextView == null) {
                Context context = getContext();
                this.mTitleTextView = new AppCompatTextView(context);
                this.mTitleTextView.setSingleLine();
                this.mTitleTextView.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.mTitleTextAppearance;
                if (i != 0) {
                    this.mTitleTextView.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.mTitleTextColor;
                if (colorStateList != null) {
                    this.mTitleTextView.setTextColor(colorStateList);
                }
            }
            if (!isChildOrHidden(this.mTitleTextView)) {
                addSystemView(this.mTitleTextView, true);
            }
        } else {
            TextView textView = this.mTitleTextView;
            if (textView != null && isChildOrHidden(textView)) {
                removeView(this.mTitleTextView);
                this.mHiddenViews.remove(this.mTitleTextView);
            }
        }
        TextView textView2 = this.mTitleTextView;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.mTitleText = charSequence;
    }

    public void setTitleMargin(int i, int i2, int i3, int i4) {
        this.mTitleMarginStart = i;
        this.mTitleMarginTop = i2;
        this.mTitleMarginEnd = i3;
        this.mTitleMarginBottom = i4;
        requestLayout();
    }

    public void setTitleMarginBottom(int i) {
        this.mTitleMarginBottom = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.mTitleMarginEnd = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.mTitleMarginStart = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.mTitleMarginTop = i;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, int i) {
        this.mTitleTextAppearance = i;
        TextView textView = this.mTitleTextView;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.mTitleTextColor = colorStateList;
        TextView textView = this.mTitleTextView;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public boolean showOverflowMenu() {
        ActionMenuView actionMenuView = this.mMenuView;
        return actionMenuView != null && actionMenuView.m7443e();
    }
}
