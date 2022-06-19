.class public Lcom/facebook/login/widget/ProfilePictureView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/ProfilePictureView$b;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z

.field public f:Landroid/widget/ImageView;

.field public g:I

.field public h:Lrm0;

.field public j:Lcom/facebook/login/widget/ProfilePictureView$b;

.field public k:Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/login/widget/ProfilePictureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/widget/ProfilePictureView;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->b:I

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->b:I

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->c(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/facebook/login/widget/ProfilePictureView;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/facebook/login/widget/ProfilePictureView;->b:I

    iput p3, p0, Lcom/facebook/login/widget/ProfilePictureView;->c:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/facebook/login/widget/ProfilePictureView;->d:Z

    const/4 p3, -0x1

    iput p3, p0, Lcom/facebook/login/widget/ProfilePictureView;->g:I

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/facebook/login/widget/ProfilePictureView;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->c(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/facebook/login/widget/ProfilePictureView;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/login/widget/ProfilePictureView;Lsm0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->f(Lsm0;)V

    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Z)I
    .locals 3

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->g:I

    const/4 v1, -0x4

    if-eq v0, v1, :cond_3

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    if-nez p1, :cond_2

    return v2

    :cond_1
    sget p1, Lyn0;->com_facebook_profilepictureview_preset_size_small:I

    goto :goto_0

    :cond_2
    sget p1, Lyn0;->com_facebook_profilepictureview_preset_size_normal:I

    goto :goto_0

    :cond_3
    sget p1, Lyn0;->com_facebook_profilepictureview_preset_size_large:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public final c(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->f:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->f:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->d:Z

    return v0
.end method

.method public final e(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Leo0;->com_facebook_profile_picture_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Leo0;->com_facebook_profile_picture_view_com_facebook_preset_size:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setPresetSize(I)V

    sget v0, Leo0;->com_facebook_profile_picture_view_com_facebook_is_cropped:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->d:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final f(Lsm0;)V
    .locals 4

    invoke-virtual {p1}, Lsm0;->c()Lrm0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->h:Lrm0;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->h:Lrm0;

    invoke-virtual {p1}, Lsm0;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lsm0;->b()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->j:Lcom/facebook/login/widget/ProfilePictureView$b;

    if-eqz p1, :cond_0

    new-instance v0, Lri0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in downloading profile picture for profileId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lri0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/facebook/login/widget/ProfilePictureView$b;->b(Lri0;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ldj0;->a:Ldj0;

    const/4 v0, 0x6

    sget-object v2, Lcom/facebook/login/widget/ProfilePictureView;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v2, v1}, Lxm0;->e(Ldj0;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lsm0;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->h(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->j()Z

    move-result v0

    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->c:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->b:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->h(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->i()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final getOnErrorListener()Lcom/facebook/login/widget/ProfilePictureView$b;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->j:Lcom/facebook/login/widget/ProfilePictureView$b;

    return-object v0
.end method

.method public final getPresetSize()I
    .locals 1

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->g:I

    return v0
.end method

.method public final getProfileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Z)V
    .locals 6

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/AccessToken;->g()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Lrm0$b;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->a:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->c:I

    iget v5, p0, Lcom/facebook/login/widget/ProfilePictureView;->b:I

    invoke-static {v3, v4, v5, v0}, Lrm0;->e(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lrm0$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v1, p1}, Lrm0$b;->g(Z)Lrm0$b;

    invoke-virtual {v1, p0}, Lrm0$b;->i(Ljava/lang/Object;)Lrm0$b;

    new-instance p1, Lcom/facebook/login/widget/ProfilePictureView$a;

    invoke-direct {p1, p0}, Lcom/facebook/login/widget/ProfilePictureView$a;-><init>(Lcom/facebook/login/widget/ProfilePictureView;)V

    invoke-virtual {v1, p1}, Lrm0$b;->h(Lrm0$c;)Lrm0$b;

    invoke-virtual {v1}, Lrm0$b;->f()Lrm0;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->h:Lrm0;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lqm0;->c(Lrm0;)Z

    :cond_1
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->h:Lrm0;

    invoke-static {p1}, Lqm0;->e(Lrm0;)V

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->h:Lrm0;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lqm0;->c(Lrm0;)Z

    :cond_0
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->k:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lzn0;->com_facebook_profile_picture_blank_square:I

    goto :goto_0

    :cond_1
    sget v0, Lzn0;->com_facebook_profile_picture_blank_portrait:I

    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->j()Z

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->k:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->c:I

    iget v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->b:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final j()Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_7

    if-ge v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v3}, Lcom/facebook/login/widget/ProfilePictureView;->b(Z)I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v4

    move v1, v0

    :cond_1
    if-gt v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->c:I

    if-ne v1, v4, :cond_6

    iget v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->b:I

    if-eq v0, v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_1
    iput v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->c:I

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->b:I

    return v2

    :cond_7
    :goto_2
    return v3
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->h:Lrm0;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->g(Z)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v3, v6, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v5}, Lcom/facebook/login/widget/ProfilePictureView;->b(Z)I

    move-result v1

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    if-eq v7, v6, :cond_1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v4, :cond_1

    invoke-virtual {p0, v5}, Lcom/facebook/login/widget/ProfilePictureView;->b(Z)I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {p0, v2, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->measureChildren(II)V

    goto :goto_2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/os/Bundle;

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ProfilePictureView_superState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ProfilePictureView_profileId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->a:Ljava/lang/String;

    const-string v0, "ProfilePictureView_presetSize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->g:I

    const-string v0, "ProfilePictureView_isCropped"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->d:Z

    const-string v0, "ProfilePictureView_width"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->c:I

    const-string v0, "ProfilePictureView_height"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->b:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->g(Z)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ProfilePictureView_superState"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->a:Ljava/lang/String;

    const-string v2, "ProfilePictureView_profileId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->g:I

    const-string v2, "ProfilePictureView_presetSize"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->d:Z

    const-string v2, "ProfilePictureView_isCropped"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->c:I

    const-string v2, "ProfilePictureView_width"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->b:I

    const-string v2, "ProfilePictureView_height"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->h:Lrm0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "ProfilePictureView_refresh"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public final setCropped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->d:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->g(Z)V

    return-void
.end method

.method public final setDefaultProfilePicture(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->k:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setOnErrorListener(Lcom/facebook/login/widget/ProfilePictureView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->j:Lcom/facebook/login/widget/ProfilePictureView$b;

    return-void
.end method

.method public final setPresetSize(I)V
    .locals 1

    const/4 v0, -0x4

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use a predefined preset size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->g:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final setProfileId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->a:Ljava/lang/String;

    invoke-static {v0}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->i()V

    const/4 v0, 0x1

    :goto_1
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->g(Z)V

    return-void
.end method
