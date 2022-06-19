.class abstract Lcom/explorestack/iab/mraid/MraidView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/MraidView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method private constructor <init>(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/MraidView$1;)V
    .locals 0

    .line 303
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView$b;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "MRAIDView"

    const-string v1, "Callback: onLoaded"

    .line 315
    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-interface {v0, v1}, Lcom/explorestack/iab/mraid/MraidViewListener;->onLoaded(Lcom/explorestack/iab/mraid/MraidView;)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback: onError ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-interface {v0, v1, p1}, Lcom/explorestack/iab/mraid/MraidViewListener;->onError(Lcom/explorestack/iab/mraid/MraidView;I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/explorestack/iab/mraid/b;)V
    .locals 2

    .line 350
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback: onOrientation "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$3000(Lcom/explorestack/iab/mraid/MraidView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$3200(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/g;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/mraid/g;->EXPANDED:Lcom/explorestack/iab/mraid/g;

    if-ne v0, v1, :cond_1

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->access$3300(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/b;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/explorestack/iab/mraid/d;)V
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback: onResize ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->access$2900(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/d;)V

    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "MRAIDView"

    const-string v1, "Callback: onClose"

    .line 329
    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidView;->handleClose()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Callback: onOpen ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->handleOpen(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 341
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback: onExpand "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$3000(Lcom/explorestack/iab/mraid/MraidView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->access$3100(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 358
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback: playVideo "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "UTF-8"

    .line 360
    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 361
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$b;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-interface {v0, v1, p1}, Lcom/explorestack/iab/mraid/MraidViewListener;->onPlayVideo(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 365
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-void
.end method
