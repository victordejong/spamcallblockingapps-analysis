package p117h8;

import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import me.zhanghai.android.materialprogressbar.C3681R;
import p134j4.AbstractC3256v;
import p134j4.ThreadFactoryC3212h2;
import p189o4.AbstractC3882s;
import p233s6.AbstractC4320o;
/* renamed from: h8.k */
/* loaded from: classes2-dex2jar.jar:h8/k.class */
public class C3035k implements AbstractC3882s, AbstractC3256v, AbstractC4320o {

    /* renamed from: a */
    public static final int[] f10214a = {C3681R.attr.background, C3681R.attr.backgroundSplit, C3681R.attr.backgroundStacked, C3681R.attr.contentInsetEnd, C3681R.attr.contentInsetEndWithActions, C3681R.attr.contentInsetLeft, C3681R.attr.contentInsetRight, C3681R.attr.contentInsetStart, C3681R.attr.contentInsetStartWithNavigation, C3681R.attr.customNavigationLayout, C3681R.attr.displayOptions, C3681R.attr.divider, C3681R.attr.elevation, C3681R.attr.height, C3681R.attr.hideOnContentScroll, C3681R.attr.homeAsUpIndicator, C3681R.attr.homeLayout, C3681R.attr.icon, C3681R.attr.indeterminateProgressStyle, C3681R.attr.itemPadding, C3681R.attr.logo, C3681R.attr.navigationMode, C3681R.attr.popupTheme, C3681R.attr.progressBarPadding, C3681R.attr.progressBarStyle, C3681R.attr.subtitle, C3681R.attr.subtitleTextStyle, C3681R.attr.title, C3681R.attr.titleTextStyle};

    /* renamed from: b */
    public static final int[] f10215b = {16842931};

    /* renamed from: c */
    public static final int[] f10216c = {16843071};

    /* renamed from: d */
    public static final int[] f10217d = {C3681R.attr.background, C3681R.attr.backgroundSplit, C3681R.attr.closeItemLayout, C3681R.attr.height, C3681R.attr.subtitleTextStyle, C3681R.attr.titleTextStyle};

    /* renamed from: e */
    public static final int[] f10218e = {16842994, 2130968720, C3681R.attr.buttonPanelSideLayout, C3681R.attr.listItemLayout, C3681R.attr.listLayout, C3681R.attr.multiChoiceItemLayout, C3681R.attr.showTitle, C3681R.attr.singleChoiceItemLayout};

    /* renamed from: f */
    public static final int[] f10219f = {16843033, C3681R.attr.srcCompat, C3681R.attr.tint, C3681R.attr.tintMode};

    /* renamed from: g */
    public static final int[] f10220g = {16843074, C3681R.attr.tickMark, C3681R.attr.tickMarkTint, C3681R.attr.tickMarkTintMode};

    /* renamed from: h */
    public static final int[] f10221h = {16842804, 16843117, 16843118, 16843119, 16843120, 16843666, 16843667};

    /* renamed from: i */
    public static final int[] f10222i = {16842804, C3681R.attr.autoSizeMaxTextSize, C3681R.attr.autoSizeMinTextSize, C3681R.attr.autoSizePresetSizes, C3681R.attr.autoSizeStepGranularity, C3681R.attr.autoSizeTextType, 2130968940, 2130968941, 2130968942, 2130968943, 2130968945, 2130968946, 2130968947, 2130968948, 2130968963, 2130969031, C3681R.attr.fontFamily, 2130969071, 2130969167, 2130969251, C3681R.attr.textAllCaps, 2130969738};

    /* renamed from: j */
    public static final int[] f10223j = {16842839, 16842926, C3681R.attr.actionBarDivider, C3681R.attr.actionBarItemBackground, C3681R.attr.actionBarPopupTheme, C3681R.attr.actionBarSize, C3681R.attr.actionBarSplitStyle, C3681R.attr.actionBarStyle, C3681R.attr.actionBarTabBarStyle, C3681R.attr.actionBarTabStyle, C3681R.attr.actionBarTabTextStyle, C3681R.attr.actionBarTheme, C3681R.attr.actionBarWidgetTheme, C3681R.attr.actionButtonStyle, C3681R.attr.actionDropDownStyle, C3681R.attr.actionMenuTextAppearance, C3681R.attr.actionMenuTextColor, C3681R.attr.actionModeBackground, C3681R.attr.actionModeCloseButtonStyle, 2130968596, C3681R.attr.actionModeCloseDrawable, C3681R.attr.actionModeCopyDrawable, C3681R.attr.actionModeCutDrawable, C3681R.attr.actionModeFindDrawable, C3681R.attr.actionModePasteDrawable, C3681R.attr.actionModePopupWindowStyle, C3681R.attr.actionModeSelectAllDrawable, C3681R.attr.actionModeShareDrawable, C3681R.attr.actionModeSplitBackground, C3681R.attr.actionModeStyle, 2130968607, C3681R.attr.actionModeWebSearchDrawable, C3681R.attr.actionOverflowButtonStyle, C3681R.attr.actionOverflowMenuStyle, C3681R.attr.activityChooserViewStyle, C3681R.attr.alertDialogButtonGroupStyle, C3681R.attr.alertDialogCenterButtons, C3681R.attr.alertDialogStyle, C3681R.attr.alertDialogTheme, C3681R.attr.autoCompleteTextViewStyle, C3681R.attr.borderlessButtonStyle, C3681R.attr.buttonBarButtonStyle, C3681R.attr.buttonBarNegativeButtonStyle, C3681R.attr.buttonBarNeutralButtonStyle, C3681R.attr.buttonBarPositiveButtonStyle, C3681R.attr.buttonBarStyle, C3681R.attr.buttonStyle, C3681R.attr.buttonStyleSmall, C3681R.attr.checkboxStyle, C3681R.attr.checkedTextViewStyle, C3681R.attr.colorAccent, C3681R.attr.colorBackgroundFloating, C3681R.attr.colorButtonNormal, C3681R.attr.colorControlActivated, C3681R.attr.colorControlHighlight, C3681R.attr.colorControlNormal, C3681R.attr.colorError, C3681R.attr.colorPrimary, C3681R.attr.colorPrimaryDark, C3681R.attr.colorSwitchThumbNormal, C3681R.attr.controlBackground, 2130968924, C3681R.attr.dialogPreferredPadding, C3681R.attr.dialogTheme, C3681R.attr.dividerHorizontal, C3681R.attr.dividerVertical, C3681R.attr.dropDownListViewStyle, C3681R.attr.dropdownListPreferredItemHeight, C3681R.attr.editTextBackground, C3681R.attr.editTextColor, C3681R.attr.editTextStyle, C3681R.attr.homeAsUpIndicator, C3681R.attr.imageButtonStyle, C3681R.attr.listChoiceBackgroundIndicator, 2130969255, 2130969256, C3681R.attr.listDividerAlertDialog, C3681R.attr.listMenuViewStyle, C3681R.attr.listPopupWindowStyle, C3681R.attr.listPreferredItemHeight, C3681R.attr.listPreferredItemHeightLarge, C3681R.attr.listPreferredItemHeightSmall, 2130969265, C3681R.attr.listPreferredItemPaddingLeft, C3681R.attr.listPreferredItemPaddingRight, 2130969268, C3681R.attr.panelBackground, C3681R.attr.panelMenuListTheme, C3681R.attr.panelMenuListWidth, C3681R.attr.popupMenuStyle, C3681R.attr.popupWindowStyle, C3681R.attr.radioButtonStyle, C3681R.attr.ratingBarStyle, C3681R.attr.ratingBarStyleIndicator, C3681R.attr.ratingBarStyleSmall, C3681R.attr.searchViewStyle, C3681R.attr.seekBarStyle, C3681R.attr.selectableItemBackground, C3681R.attr.selectableItemBackgroundBorderless, C3681R.attr.spinnerDropDownItemStyle, C3681R.attr.spinnerStyle, C3681R.attr.switchStyle, C3681R.attr.textAppearanceLargePopupMenu, C3681R.attr.textAppearanceListItem, C3681R.attr.textAppearanceListItemSecondary, C3681R.attr.textAppearanceListItemSmall, C3681R.attr.textAppearancePopupMenuHeader, C3681R.attr.textAppearanceSearchResultSubtitle, C3681R.attr.textAppearanceSearchResultTitle, C3681R.attr.textAppearanceSmallPopupMenu, C3681R.attr.textColorAlertDialogListItem, C3681R.attr.textColorSearchUrl, C3681R.attr.toolbarNavigationButtonStyle, C3681R.attr.toolbarStyle, C3681R.attr.tooltipForegroundColor, C3681R.attr.tooltipFrameBackground, 2130969821, C3681R.attr.windowActionBar, C3681R.attr.windowActionBarOverlay, C3681R.attr.windowActionModeOverlay, C3681R.attr.windowFixedHeightMajor, C3681R.attr.windowFixedHeightMinor, C3681R.attr.windowFixedWidthMajor, C3681R.attr.windowFixedWidthMinor, C3681R.attr.windowMinWidthMajor, C3681R.attr.windowMinWidthMinor, C3681R.attr.windowNoTitle};

    /* renamed from: k */
    public static final int[] f10224k = {C3681R.attr.allowStacking};

    /* renamed from: l */
    public static final int[] f10225l = {16843016, 2130968748, 2130968749, 2130968750};

    /* renamed from: m */
    public static final int[] f10226m = {16843015, 2130968718, C3681R.attr.buttonTint, C3681R.attr.buttonTintMode};

    /* renamed from: n */
    public static final int[] f10227n = {C3681R.attr.arrowHeadLength, C3681R.attr.arrowShaftLength, C3681R.attr.barLength, C3681R.attr.color, C3681R.attr.drawableSize, C3681R.attr.gapBetweenBars, C3681R.attr.spinBars, C3681R.attr.thickness};

    /* renamed from: o */
    public static final int[] f10228o = {16842927, 16842948, 16843046, 16843047, 16843048, C3681R.attr.divider, C3681R.attr.dividerPadding, C3681R.attr.measureWithLargestChild, C3681R.attr.showDividers};

    /* renamed from: p */
    public static final int[] f10229p = {16843436, 16843437};

    /* renamed from: q */
    public static final int[] f10230q = {16842766, 16842960, 16843156, 16843230, 16843231, 16843232};

    /* renamed from: r */
    public static final int[] f10231r = {16842754, 16842766, 16842960, 16843014, 16843156, 16843230, 16843231, 16843233, 16843234, 16843235, 16843236, 16843237, 16843375, C3681R.attr.actionLayout, C3681R.attr.actionProviderClass, C3681R.attr.actionViewClass, C3681R.attr.alphabeticModifiers, C3681R.attr.contentDescription, C3681R.attr.iconTint, C3681R.attr.iconTintMode, C3681R.attr.numericModifiers, C3681R.attr.showAsAction, C3681R.attr.tooltipText};

    /* renamed from: s */
    public static final int[] f10232s = {16842926, 16843052, 16843053, 16843054, 16843055, 16843056, 16843057, C3681R.attr.preserveIconSpacing, C3681R.attr.subMenuArrow};

    /* renamed from: t */
    public static final int[] f10233t = {16843126, 16843465, C3681R.attr.overlapAnchor};

    /* renamed from: u */
    public static final int[] f10234u = {C3681R.attr.paddingBottomNoButtons, C3681R.attr.paddingTopNoTitle};

    /* renamed from: v */
    public static final int[] f10235v = {16842970, 16843039, 16843296, 16843364, C3681R.attr.closeIcon, C3681R.attr.commitIcon, C3681R.attr.defaultQueryHint, C3681R.attr.goIcon, C3681R.attr.iconifiedByDefault, C3681R.attr.layout, C3681R.attr.queryBackground, C3681R.attr.queryHint, C3681R.attr.searchHintIcon, C3681R.attr.searchIcon, C3681R.attr.submitBackground, C3681R.attr.suggestionRowLayout, C3681R.attr.voiceIcon};

    /* renamed from: w */
    public static final int[] f10236w = {16842930, 16843126, 16843131, 16843362, C3681R.attr.popupTheme};

    /* renamed from: x */
    public static final int[] f10237x = {16843044, 16843045, 16843074, C3681R.attr.showText, C3681R.attr.splitTrack, C3681R.attr.switchMinWidth, C3681R.attr.switchPadding, C3681R.attr.switchTextAppearance, C3681R.attr.thumbTextPadding, C3681R.attr.thumbTint, C3681R.attr.thumbTintMode, C3681R.attr.track, C3681R.attr.trackTint, C3681R.attr.trackTintMode};

    /* renamed from: y */
    public static final int[] f10238y = {16842901, 16842902, 16842903, 16842904, 16842906, 16842907, 16843105, 16843106, 16843107, 16843108, 16843692, 16844165, C3681R.attr.fontFamily, 2130969071, C3681R.attr.textAllCaps, 2130969738};

    /* renamed from: z */
    public static final int[] f10239z = {16842927, 16843072, C3681R.attr.buttonGravity, C3681R.attr.collapseContentDescription, C3681R.attr.collapseIcon, C3681R.attr.contentInsetEnd, C3681R.attr.contentInsetEndWithActions, C3681R.attr.contentInsetLeft, C3681R.attr.contentInsetRight, C3681R.attr.contentInsetStart, C3681R.attr.contentInsetStartWithNavigation, C3681R.attr.logo, C3681R.attr.logoDescription, C3681R.attr.maxButtonHeight, 2130969348, C3681R.attr.navigationContentDescription, C3681R.attr.navigationIcon, C3681R.attr.popupTheme, C3681R.attr.subtitle, C3681R.attr.subtitleTextAppearance, C3681R.attr.subtitleTextColor, C3681R.attr.title, C3681R.attr.titleMargin, C3681R.attr.titleMarginBottom, C3681R.attr.titleMarginEnd, C3681R.attr.titleMarginStart, C3681R.attr.titleMarginTop, C3681R.attr.titleMargins, C3681R.attr.titleTextAppearance, C3681R.attr.titleTextColor};

    /* renamed from: A */
    public static final int[] f10209A = {16842752, 16842970, C3681R.attr.paddingEnd, C3681R.attr.paddingStart, C3681R.attr.theme};

    /* renamed from: B */
    public static final int[] f10210B = {16842964, 2130968653, C3681R.attr.backgroundTintMode};

    /* renamed from: C */
    public static final int[] f10211C = {16842960, 16842994, 16842995};

    /* renamed from: D */
    public static final int[] f10212D = {2130969389, 2130969390, 2130969391, 2130969392, 2130969393, 2130969394, 2130969395, 2130969396, 2130969397, 2130969398, 2130969399, 2130969400, 2130969401, 2130969402, 2130969403, 2130969404, 2130969405, 2130969406, 2130969407, 2130969408, 2130969409, 2130969410, 2130969411, 2130969412, 2130969413, 2130969414, 2130969415, 2130969416, 2130969417, 2130969418, 2130969419};

    /* renamed from: E */
    public static final /* synthetic */ C3035k f10213E = new C3035k();

    public /* synthetic */ C3035k() {
    }

    @Override // p134j4.AbstractC3256v
    public int zza(int i, String str) {
        return i;
    }

    @Override // p189o4.AbstractC3882s
    public Object zza() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(ThreadFactoryC3212h2.f10821a);
        Objects.requireNonNull(newSingleThreadExecutor, "Cannot return null from a non-@Nullable @Provides method");
        return newSingleThreadExecutor;
    }
}
