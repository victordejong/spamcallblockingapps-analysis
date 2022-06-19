.class public Lcom/criteo/publisher/advancednative/CriteoMediaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field private placeholder:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->initImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoMediaView;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/criteo/publisher/advancednative/CriteoMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->initImageView(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoMediaView;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->initImageView(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoMediaView;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method private initImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    .line 94
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private initImageView(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/ImageView;
    .locals 4

    .line 104
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/CriteoMediaView;->initImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010119

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 107
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 110
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/CriteoMediaView;->placeholder:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    throw p2
.end method


# virtual methods
.method getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoMediaView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoMediaView;->placeholder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setPlaceholder(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoMediaView;->placeholder:Landroid/graphics/drawable/Drawable;

    return-void
.end method
