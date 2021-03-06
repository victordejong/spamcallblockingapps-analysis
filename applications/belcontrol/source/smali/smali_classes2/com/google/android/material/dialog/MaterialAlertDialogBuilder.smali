.class public Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
.super Lp$a;
.source ""


# static fields
.field private static final DEF_STYLE_ATTR:I

.field private static final DEF_STYLE_RES:I

.field private static final MATERIAL_ALERT_DIALOG_THEME_OVERLAY:I


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private final backgroundInsets:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->alertDialogStyle:I

    sput v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_ATTR:I

    sget v0, Lcom/google/android/material/R$style;->MaterialAlertDialog_MaterialComponents:I

    sput v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_RES:I

    sget v0, Lcom/google/android/material/R$attr;->materialAlertDialogTheme:I

    sput v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->MATERIAL_ALERT_DIALOG_THEME_OVERLAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->createMaterialAlertDialogThemedContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->getOverridingThemeResId(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lp$a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lp$a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_ATTR:I

    sget v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_RES:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/dialog/MaterialDialogs;->getDialogBackgroundInsets(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    sget v2, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {v3, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    const v0, 0x1010571

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lp$a;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p2

    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    invoke-virtual {v3, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    :cond_0
    iput-object v3, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static createMaterialAlertDialogThemedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    invoke-static {p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->getMaterialAlertDialogThemeOverlay(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_ATTR:I

    sget v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->DEF_STYLE_RES:I

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ll0;

    invoke-direct {v1, p0, v0}, Ll0;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method private static getMaterialAlertDialogThemeOverlay(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->MATERIAL_ALERT_DIALOG_THEME_OVERLAY:I

    invoke-static {p0, v0}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method private static getOverridingThemeResId(Landroid/content/Context;I)I
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->getMaterialAlertDialogThemeOverlay(Landroid/content/Context;)I

    move-result p1

    :cond_0
    return p1
.end method


# virtual methods
.method public create()Lp;
    .locals 5

    invoke-super {p0}, Lp$a;->create()Lp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Landroid/graphics/drawable/Drawable;

    instance-of v4, v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v2}, Ljb;->w(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    :cond_0
    iget-object v3, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Lcom/google/android/material/dialog/MaterialDialogs;->insetDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;

    iget-object v3, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    invoke-direct {v1, v0, v3}, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lp$a;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->background:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroundInsetBottom(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method public setBackgroundInsetEnd(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lp$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    return-object p0
.end method

.method public setBackgroundInsetStart(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lp$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return-object p0
.end method

.method public setBackgroundInsetTop(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->backgroundInsets:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    return-object p0
.end method

.method public setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setCancelable(Z)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setCancelable(Z)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lp$a;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setCustomTitle(Landroid/view/View;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setCustomTitle(Landroid/view/View;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCustomTitle(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setIcon(I)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setIcon(Landroid/graphics/drawable/Drawable;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setIcon(I)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIcon(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setIcon(Landroid/graphics/drawable/Drawable;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setIconAttribute(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setIconAttribute(I)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setIconAttribute(I)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIconAttribute(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lp$a;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lp$a;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setMessage(I)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setMessage(Ljava/lang/CharSequence;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setMessage(I)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lp$a;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lp$a;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lp$a;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lp$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lp$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lp$a;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lp$a;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lp$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2}, Lp$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButtonIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lp$a;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lp$a;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lp$a;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lp$a;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setTitle(I)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setTitle(Ljava/lang/CharSequence;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setTitle(I)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setView(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setView(I)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 0

    invoke-super {p0, p1}, Lp$a;->setView(Landroid/view/View;)Lp$a;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-object p1
.end method

.method public bridge synthetic setView(I)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setView(Landroid/view/View;)Lp$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    return-object p1
.end method
