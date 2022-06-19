.class public Lcom/kedlin/cca/util/UrlImageView;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static h:Lqe1;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:Landroid/widget/ProgressBar;

.field public d:Landroid/widget/ImageView;

.field public f:I

.field public final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kedlin/cca/util/UrlImageView;->f:I

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/kedlin/cca/util/UrlImageView$b;

    invoke-direct {v1, p0}, Lcom/kedlin/cca/util/UrlImageView$b;-><init>(Lcom/kedlin/cca/util/UrlImageView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/kedlin/cca/util/UrlImageView;->g:Landroid/os/Handler;

    const/4 v0, 0x0

    const-string v1, "image"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/kedlin/cca/util/UrlImageView;->f:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/kedlin/cca/util/UrlImageView;->j(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/kedlin/cca/util/UrlImageView;->f:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/kedlin/cca/util/UrlImageView;->j(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/kedlin/cca/util/UrlImageView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/util/UrlImageView;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic b(Lcom/kedlin/cca/util/UrlImageView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->b:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/kedlin/cca/util/UrlImageView;->i(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/kedlin/cca/util/UrlImageView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/util/UrlImageView;->g:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic e()Lqe1;
    .locals 1

    sget-object v0, Lcom/kedlin/cca/util/UrlImageView;->h:Lqe1;

    return-object v0
.end method

.method public static synthetic f(Lcom/kedlin/cca/util/UrlImageView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/util/UrlImageView;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic g(Lcom/kedlin/cca/util/UrlImageView;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/util/UrlImageView;->c:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic h(Lcom/kedlin/cca/util/UrlImageView;)I
    .locals 0

    iget p0, p0, Lcom/kedlin/cca/util/UrlImageView;->f:I

    return p0
.end method

.method public static i(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    sget-object v0, Lcom/kedlin/cca/util/UrlImageView;->h:Lqe1;

    if-nez v0, :cond_0

    new-instance v0, Lqe1;

    invoke-direct {v0}, Lqe1;-><init>()V

    sput-object v0, Lcom/kedlin/cca/util/UrlImageView;->h:Lqe1;

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/kedlin/cca/util/UrlImageView;->h:Lqe1;

    invoke-virtual {v0, p0}, Lqe1;->f(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->getContent(Ljava/net/URL;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lcom/kedlin/cca/util/UrlImageView;->h:Lqe1;

    invoke-virtual {v0, p0, v1}, Lqe1;->m(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v1, v2

    goto :goto_0

    :catch_1
    :cond_1
    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final j(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->a:Landroid/content/Context;

    iput p3, p0, Lcom/kedlin/cca/util/UrlImageView;->f:I

    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kedlin/cca/util/UrlImageView;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->d:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->d:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/kedlin/cca/util/UrlImageView;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->c:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->c:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p2, p3}, Lcom/kedlin/cca/util/UrlImageView;->setImageDrawable(Ljava/lang/String;I)V

    return-void
.end method

.method public setImageDrawable(Ljava/lang/String;I)V
    .locals 3

    iput p2, p0, Lcom/kedlin/cca/util/UrlImageView;->f:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->c:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/kedlin/cca/util/UrlImageView;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kedlin/cca/util/UrlImageView;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/kedlin/cca/util/UrlImageView;->c:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/kedlin/cca/util/UrlImageView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/kedlin/cca/util/UrlImageView$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/kedlin/cca/util/UrlImageView$a;-><init>(Lcom/kedlin/cca/util/UrlImageView;Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
