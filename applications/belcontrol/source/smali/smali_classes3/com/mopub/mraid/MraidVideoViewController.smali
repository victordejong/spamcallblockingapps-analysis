.class public Lcom/mopub/mraid/MraidVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source ""


# instance fields
.field public final e:Landroid/widget/VideoView;

.field public f:Landroid/widget/ImageButton;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p4}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    new-instance p3, Landroid/widget/VideoView;

    invoke-direct {p3, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/mopub/mraid/MraidVideoViewController;->e:Landroid/widget/VideoView;

    new-instance p1, Lcom/mopub/mraid/MraidVideoViewController$a;

    invoke-direct {p1, p0}, Lcom/mopub/mraid/MraidVideoViewController$a;-><init>(Lcom/mopub/mraid/MraidVideoViewController;)V

    invoke-virtual {p3, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    new-instance p1, Lcom/mopub/mraid/MraidVideoViewController$b;

    invoke-direct {p1, p0}, Lcom/mopub/mraid/MraidVideoViewController$b;-><init>(Lcom/mopub/mraid/MraidVideoViewController;)V

    invoke-virtual {p3, p1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance p1, Lcom/mopub/mraid/MraidVideoViewController$c;

    invoke-direct {p1, p0}, Lcom/mopub/mraid/MraidVideoViewController$c;-><init>(Lcom/mopub/mraid/MraidVideoViewController;)V

    invoke-virtual {p3, p1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const-string p1, "video_url"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Lcom/mopub/mraid/MraidVideoViewController;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/mopub/mraid/MraidVideoViewController;->f:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static synthetic p(Lcom/mopub/mraid/MraidVideoViewController;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BaseVideoViewController;->m(Z)V

    return-void
.end method

.method public static synthetic q(Lcom/mopub/mraid/MraidVideoViewController;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/BaseVideoViewController;->n(Z)V

    return-void
.end method

.method public static synthetic r(Lcom/mopub/mraid/MraidVideoViewController;)Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
    .locals 0

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->b()Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic d()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidVideoViewController;->t()Landroid/widget/VideoView;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->h()V

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {v1, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->h:I

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v0}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->g:I

    invoke-virtual {p0}, Lcom/mopub/mraid/MraidVideoViewController;->s()V

    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->f:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->e:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 3

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->f:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->f:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mopub/mobileads/base/R$drawable;->ic_mopub_close_button:I

    invoke-static {v1, v2}, Lg8;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/mopub/mraid/MraidVideoViewController$d;

    invoke-direct {v1, p0}, Lcom/mopub/mraid/MraidVideoViewController$d;-><init>(Lcom/mopub/mraid/MraidVideoViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mopub/mraid/MraidVideoViewController;->h:I

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/mopub/mraid/MraidVideoViewController;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mraid/MraidVideoViewController;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public t()Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/mopub/mraid/MraidVideoViewController;->e:Landroid/widget/VideoView;

    return-object v0
.end method
