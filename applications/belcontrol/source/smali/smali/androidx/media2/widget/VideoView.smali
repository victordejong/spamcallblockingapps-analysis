.class public Landroidx/media2/widget/VideoView;
.super Lcx;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/VideoView$e;,
        Landroidx/media2/widget/VideoView$f;
    }
.end annotation


# static fields
.field public static final t:Z


# instance fields
.field public b:Landroidx/media2/widget/VideoView$e;

.field public c:Lkx;

.field public d:Lkx;

.field public f:Ljx;

.field public g:Lix;

.field public h:Luw;

.field public j:Landroidx/media2/widget/MediaControlView;

.field public k:Ltw;

.field public l:Lcx$a;

.field public m:I

.field public n:I

.field public o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Lfx;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lex;

.field public q:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field public r:Ldx;

.field public final s:Lkx$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "VideoView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/widget/VideoView;->t:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroidx/media2/widget/VideoView$a;

    invoke-direct {p3, p0}, Landroidx/media2/widget/VideoView$a;-><init>(Landroidx/media2/widget/VideoView;)V

    iput-object p3, p0, Landroidx/media2/widget/VideoView;->s:Lkx$a;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/widget/VideoView;->f(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    invoke-super {p0, p1}, Lsw;->b(Z)V

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->d:Lkx;

    invoke-interface {p1, v0}, Lkx;->b(Luw;)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Luw;->y()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->i()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p1, "VideoView"

    const-string v0, "Surface is being destroyed, but player will not be informed as the associated media controller is disconnected."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c(Landroidx/media2/common/MediaMetadata;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v0}, Landroidx/media2/common/MediaMetadata;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media2/common/MediaMetadata;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lsz;->b(Landroid/graphics/Bitmap;)Lsz$b;

    move-result-object p2

    new-instance v0, Landroidx/media2/widget/VideoView$d;

    invoke-direct {v0, p0}, Landroidx/media2/widget/VideoView$d;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-virtual {p2, v0}, Lsz$b;->a(Lsz$d;)Landroid/os/AsyncTask;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lww;->music_view_default_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :goto_1
    return-object p2
.end method

.method public final d(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/media2/common/MediaMetadata;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, p1

    :goto_1
    return-object p3
.end method

.method public e()Z
    .locals 4

    iget v0, p0, Landroidx/media2/widget/VideoView;->m:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    invoke-virtual {v0}, Luw;->x()Landroidx/media2/common/VideoSize;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->c()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->d()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video track count is zero, but it renders video. size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoView"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final f(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->q:Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    new-instance v2, Ljx;

    invoke-direct {v2, p1}, Ljx;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->f:Ljx;

    new-instance v2, Lix;

    invoke-direct {v2, p1}, Lix;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->g:Lix;

    iget-object v2, p0, Landroidx/media2/widget/VideoView;->f:Ljx;

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->s:Lkx$a;

    invoke-virtual {v2, v3}, Ljx;->d(Lkx$a;)V

    iget-object v2, p0, Landroidx/media2/widget/VideoView;->g:Lix;

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->s:Lkx$a;

    invoke-virtual {v2, v3}, Lix;->d(Lkx$a;)V

    iget-object v2, p0, Landroidx/media2/widget/VideoView;->f:Ljx;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Landroidx/media2/widget/VideoView;->g:Lix;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Lcx$a;

    invoke-direct {v2}, Lcx$a;-><init>()V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->l:Lcx$a;

    iput-boolean v1, v2, Lcx$a;->a:Z

    new-instance v2, Ldx;

    invoke-direct {v2, p1}, Ldx;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->r:Ldx;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Landroidx/media2/widget/VideoView;->r:Ldx;

    iget-object v4, p0, Landroidx/media2/widget/VideoView;->l:Lcx$a;

    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroidx/media2/widget/VideoView$b;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$b;-><init>(Landroidx/media2/widget/VideoView;)V

    new-instance v4, Lex;

    invoke-direct {v4, p1, v0, v2}, Lex;-><init>(Landroid/content/Context;Lrw;Lex$d;)V

    iput-object v4, p0, Landroidx/media2/widget/VideoView;->p:Lex;

    new-instance v0, Lnw;

    invoke-direct {v0, p1}, Lnw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lex;->k(Lex$f;)V

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->p:Lex;

    new-instance v2, Lpw;

    invoke-direct {v2, p1}, Lpw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lex;->k(Lex$f;)V

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->p:Lex;

    iget-object v2, p0, Landroidx/media2/widget/VideoView;->r:Ldx;

    invoke-virtual {v0, v2}, Lex;->n(Lex$c;)V

    new-instance v0, Ltw;

    invoke-direct {v0, p1}, Ltw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    iget-object v4, p0, Landroidx/media2/widget/VideoView;->l:Lcx$a;

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "http://schemas.android.com/apk/res-auto"

    if-eqz p2, :cond_1

    const-string v4, "enableControlView"

    invoke-interface {p2, v0, v4, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_2

    new-instance v4, Landroidx/media2/widget/MediaControlView;

    invoke-direct {v4, p1}, Landroidx/media2/widget/MediaControlView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v4, v1}, Landroidx/media2/widget/MediaControlView;->setAttachedToVideoView(Z)V

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/MediaControlView;

    iget-object v4, p0, Landroidx/media2/widget/VideoView;->l:Lcx$a;

    invoke-virtual {p0, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const-string p1, "viewType"

    invoke-interface {p2, v0, p1, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    :goto_2
    const-string p2, "VideoView"

    if-nez p1, :cond_5

    sget-boolean p1, Landroidx/media2/widget/VideoView;->t:Z

    if-eqz p1, :cond_4

    const-string p1, "viewType attribute is surfaceView."

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->f:Ljx;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->g:Lix;

    invoke-virtual {p1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->g:Lix;

    :goto_3
    iput-object p1, p0, Landroidx/media2/widget/VideoView;->c:Lkx;

    goto :goto_4

    :cond_5
    if-ne p1, v1, :cond_7

    sget-boolean p1, Landroidx/media2/widget/VideoView;->t:Z

    if-eqz p1, :cond_6

    const-string p1, "viewType attribute is textureView."

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->f:Ljx;

    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->g:Lix;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->f:Ljx;

    goto :goto_3

    :cond_7
    :goto_4
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->c:Lkx;

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->d:Lkx;

    return-void
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media2/widget/VideoView;->n:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "androidx.media2.widget.VideoView"

    return-object v0
.end method

.method public getMediaControlView()Landroidx/media2/widget/MediaControlView;
    .locals 1

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/MediaControlView;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->c:Lkx;

    invoke-interface {v0}, Lkx;->a()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luw;->s()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    invoke-virtual {v0}, Luw;->s()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()V
    .locals 5

    const-string v0, "VideoView"

    :try_start_0
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Luw;->G(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyf;

    invoke-interface {v1}, Lyf;->c()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling setSurface(null) was not successful. ResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    const-string v2, "calling setSurface(null) was not successful."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Luw;->G(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media2/widget/VideoView$c;

    invoke-direct {v1, p0, v0}, Landroidx/media2/widget/VideoView$c;-><init>(Landroidx/media2/widget/VideoView;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lg8;->i(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public k(Landroidx/media2/common/MediaItem;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->h()Landroidx/media2/common/MediaMetadata;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lyw;->ic_default_album_image:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroidx/media2/widget/VideoView;->c(Landroidx/media2/common/MediaMetadata;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lbx;->mcv2_music_title_unknown_text:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {p0, p1, v3, v2}, Landroidx/media2/widget/VideoView;->d(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lbx;->mcv2_music_artist_unknown_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {p0, p1, v3, v0}, Landroidx/media2/widget/VideoView;->d(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    invoke-virtual {v0, v1}, Ltw;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    invoke-virtual {v0, v2}, Ltw;->e(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    invoke-virtual {v0, p1}, Ltw;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltw;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    invoke-virtual {p1, v0}, Ltw;->e(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->k:Ltw;

    invoke-virtual {p1, v0}, Ltw;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public l(Luw;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luw;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->o:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/widget/VideoView;->m:I

    iput v0, p0, Landroidx/media2/widget/VideoView;->n:I

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->j()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v1, p0, Landroidx/media2/widget/VideoView;->m:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/widget/VideoView;->m:I

    goto :goto_1

    :cond_0
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    iget v1, p0, Landroidx/media2/widget/VideoView;->n:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/widget/VideoView;->n:I

    goto :goto_1

    :cond_1
    if-ne v3, v2, :cond_2

    iget-object v2, p0, Landroidx/media2/widget/VideoView;->p:Lex;

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->f()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lex;->a(Landroid/media/MediaFormat;)Lfx;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->o:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Luw;->u(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->q:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luw;->a()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luw;->j()V

    :cond_0
    return-void
.end method

.method public setMediaControlView(Landroidx/media2/widget/MediaControlView;J)V
    .locals 2

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->setAttachedToVideoView(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->l:Lcx$a;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->setAttachedToVideoView(Z)V

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1, p2, p3}, Landroidx/media2/widget/MediaControlView;->setDelayedAnimationInterval(J)V

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    if-eqz p1, :cond_2

    iget-object p2, p1, Luw;->a:Landroidx/media2/session/MediaController;

    if-eqz p2, :cond_1

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p1, p2}, Landroidx/media2/widget/MediaControlView;->setMediaControllerInternal(Landroidx/media2/session/MediaController;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Luw;->b:Landroidx/media2/common/SessionPlayer;

    if-eqz p1, :cond_2

    iget-object p2, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {p2, p1}, Landroidx/media2/widget/MediaControlView;->setPlayerInternal(Landroidx/media2/common/SessionPlayer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMediaController(Landroidx/media2/session/MediaController;)V
    .locals 3

    const-string v0, "controller must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luw;->j()V

    :cond_0
    new-instance v0, Luw;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lg8;->i(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/widget/VideoView$f;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$f;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-direct {v0, p1, v1, v2}, Luw;-><init>(Landroidx/media2/session/MediaController;Ljava/util/concurrent/Executor;Luw$b;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    invoke-virtual {v0}, Luw;->a()V

    :cond_1
    invoke-virtual {p0}, Lsw;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->d:Lkx;

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    invoke-interface {v0, v1}, Lkx;->b(Luw;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->j()V

    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView;->setMediaControllerInternal(Landroidx/media2/session/MediaController;)V

    :cond_3
    return-void
.end method

.method public setOnViewTypeChangedListener(Landroidx/media2/widget/VideoView$e;)V
    .locals 0

    iput-object p1, p0, Landroidx/media2/widget/VideoView;->b:Landroidx/media2/widget/VideoView$e;

    return-void
.end method

.method public setPlayer(Landroidx/media2/common/SessionPlayer;)V
    .locals 3

    const-string v0, "player must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luw;->j()V

    :cond_0
    new-instance v0, Luw;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lg8;->i(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/widget/VideoView$f;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$f;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-direct {v0, p1, v1, v2}, Luw;-><init>(Landroidx/media2/common/SessionPlayer;Ljava/util/concurrent/Executor;Luw$b;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    invoke-virtual {v0}, Luw;->a()V

    :cond_1
    invoke-virtual {p0}, Lsw;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->d:Lkx;

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    invoke-interface {v0, v1}, Lkx;->b(Luw;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->j()V

    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->j:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView;->setPlayerInternal(Landroidx/media2/common/SessionPlayer;)V

    :cond_3
    return-void
.end method

.method public setViewType(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->d:Lkx;

    invoke-interface {v0}, Lkx;->a()I

    move-result v0

    const-string v1, "VideoView"

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewType with the same type ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is ignored."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "switching to TextureView"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->f:Ljx;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    const-string p1, "switching to SurfaceView"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Landroidx/media2/widget/VideoView;->g:Lix;

    :goto_0
    iput-object p1, p0, Landroidx/media2/widget/VideoView;->d:Lkx;

    invoke-virtual {p0}, Lsw;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->h:Luw;

    invoke-interface {p1, v0}, Lkx;->b(Luw;)Z

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
