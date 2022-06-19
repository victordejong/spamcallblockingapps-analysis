.class public Lcom/mopub/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/mopub/volley/toolbox/ImageLoader;

.field private g:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/mopub/volley/toolbox/NetworkImageView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->d:I

    return p0
.end method

.method private a()V
    .locals 1

    .line 246
    iget v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->c:I

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageResource(I)V

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Z)V
    .locals 8

    .line 149
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v0

    .line 150
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v1

    .line 151
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v7

    .line 154
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v6, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v3, :cond_4

    return-void

    .line 168
    :cond_4
    iget-object v3, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 169
    iget-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->g:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz p1, :cond_5

    .line 170
    invoke-virtual {p1}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    const/4 p1, 0x0

    .line 171
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->g:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 173
    :cond_5
    invoke-direct {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->a()V

    return-void

    .line 178
    :cond_6
    iget-object v3, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->g:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 179
    iget-object v3, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->g:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    .line 184
    :cond_7
    iget-object v3, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->g:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v3}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 185
    invoke-direct {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->a()V

    :cond_8
    if-eqz v2, :cond_9

    const/4 v0, 0x0

    :cond_9
    if-eqz v5, :cond_a

    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    move v6, v1

    .line 197
    :goto_3
    iget-object v2, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->f:Lcom/mopub/volley/toolbox/ImageLoader;

    iget-object v3, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->b:Ljava/lang/String;

    new-instance v4, Lcom/mopub/volley/toolbox/NetworkImageView$1;

    invoke-direct {v4, p0, p1}, Lcom/mopub/volley/toolbox/NetworkImageView$1;-><init>(Lcom/mopub/volley/toolbox/NetworkImageView;Z)V

    move v5, v0

    .line 198
    invoke-virtual/range {v2 .. v7}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->g:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    return-void
.end method

.method static synthetic b(Lcom/mopub/volley/toolbox/NetworkImageView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/volley/toolbox/NetworkImageView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->c:I

    return p0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 276
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 277
    invoke-virtual {p0}, Lcom/mopub/volley/toolbox/NetworkImageView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->g:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Lcom/mopub/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    iput-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->g:Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 271
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 257
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x1

    .line 258
    invoke-direct {p0, p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->a(Z)V

    return-void
.end method

.method public setDefaultImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->c:I

    .line 118
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->a:Landroid/graphics/Bitmap;

    .line 107
    iput p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->c:I

    return-void
.end method

.method public setErrorImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->d:I

    .line 140
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->e:Landroid/graphics/Bitmap;

    .line 129
    iput p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->d:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader;)V
    .locals 0

    .line 92
    invoke-static {}, Lcom/mopub/volley/toolbox/a;->a()V

    .line 93
    iput-object p1, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->b:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/mopub/volley/toolbox/NetworkImageView;->f:Lcom/mopub/volley/toolbox/ImageLoader;

    const/4 p1, 0x0

    .line 96
    invoke-direct {p0, p1}, Lcom/mopub/volley/toolbox/NetworkImageView;->a(Z)V

    return-void
.end method
