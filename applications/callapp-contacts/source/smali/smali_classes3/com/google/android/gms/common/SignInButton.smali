.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p3, Lcom/google/android/gms/a/a$d;->SignInButton:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Lcom/google/android/gms/a/a$d;->SignInButton_buttonSize:I

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    sget p2, Lcom/google/android/gms/a/a$d;->SignInButton_colorScheme:I

    const/4 p3, 0x2

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void

    :catchall_0
    move-exception p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    throw p2
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 1
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final setColorScheme(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->d:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setScopes([Lcom/google/android/gms/common/api/Scope;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p1, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public final setSize(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public final setStyle(II)V
    .locals 9

    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 1001
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/SignInButton;->removeView(Landroid/view/View;)V

    :cond_0
    :try_start_0
    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    .line 1002
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/common/internal/ap;->a(Landroid/content/Context;II)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;
    :try_end_0
    .catch Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    const-string p2, "SignInButton"

    const-string v0, "Sign in button not found, using placeholder instead"

    .line 1003
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, Lcom/google/android/gms/common/SignInButton;->a:I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->b:I

    new-instance v1, Lcom/google/android/gms/common/internal/zaaa;

    const/4 v2, 0x0

    .line 1004
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/common/internal/zaaa;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1005
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 2001
    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/internal/zaaa;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 2002
    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/internal/zaaa;->setTextSize(F)V

    .line 2003
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42400000    # 48.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 2004
    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/internal/zaaa;->setMinHeight(I)V

    .line 2005
    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/internal/zaaa;->setMinWidth(I)V

    .line 2006
    sget v3, Lcom/google/android/gms/a/a$b;->common_google_signin_btn_icon_dark:I

    sget v4, Lcom/google/android/gms/a/a$b;->common_google_signin_btn_icon_light:I

    .line 2007
    invoke-static {v0, v3, v4, v4}, Lcom/google/android/gms/common/internal/zaaa;->a(IIII)I

    move-result v3

    sget v4, Lcom/google/android/gms/a/a$b;->common_google_signin_btn_text_dark:I

    sget v5, Lcom/google/android/gms/a/a$b;->common_google_signin_btn_text_light:I

    .line 2008
    invoke-static {v0, v4, v5, v5}, Lcom/google/android/gms/common/internal/zaaa;->a(IIII)I

    move-result v4

    const-string v5, "Unknown button size: "

    const/16 v6, 0x20

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v8, :cond_2

    if-ne p2, v7, :cond_1

    goto :goto_0

    .line 2022
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2023
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move v3, v4

    .line 2009
    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2010
    sget v4, Lcom/google/android/gms/a/a$a;->common_google_signin_btn_tint:I

    .line 2011
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 2010
    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 2012
    invoke-static {v3, v4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2013
    invoke-virtual {v1, v3}, Lcom/google/android/gms/common/internal/zaaa;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v3, Lcom/google/android/gms/a/a$a;->common_google_signin_btn_text_dark:I

    sget v4, Lcom/google/android/gms/a/a$a;->common_google_signin_btn_text_light:I

    .line 2014
    invoke-static {v0, v3, v4, v4}, Lcom/google/android/gms/common/internal/zaaa;->a(IIII)I

    move-result v0

    .line 2015
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zaaa;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_5

    if-eq p2, v8, :cond_4

    if-ne p2, v7, :cond_3

    .line 2016
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/zaaa;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2018
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2022
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2017
    :cond_4
    sget p2, Lcom/google/android/gms/a/a$c;->common_signin_button_text_long:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/zaaa;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2018
    :cond_5
    sget p2, Lcom/google/android/gms/a/a$c;->common_signin_button_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/zaaa;->setText(Ljava/lang/CharSequence;)V

    .line 2019
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/zaaa;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2020
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zaaa;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3001
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/j;->a(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x13

    .line 2021
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/internal/zaaa;->setGravity(I)V

    .line 1005
    :cond_6
    iput-object v1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    .line 1002
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    .line 1006
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/SignInButton;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    .line 1007
    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/gms/common/SignInButton;->c:Landroid/view/View;

    .line 1008
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setStyle(II[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method
