.class final Lcom/explorestack/iab/vast/activity/VastView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/activity/VastView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 1384
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIF)V
    .locals 5

    .line 1388
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isSkipEnabled:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    const/4 p3, 0x0

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 1390
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object p1

    sget-object v0, Lcom/explorestack/iab/vast/VideoType;->NonRewarded:Lcom/explorestack/iab/vast/VideoType;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1393
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p1, p1, v0

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p2, p2, v1

    .line 1394
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v1, v1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget v1, v1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    mul-float v1, v1, v0

    div-float/2addr p2, v1

    float-to-int p2, p2

    .line 1396
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skip percent: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/utils/e;

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v0, v0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/utils/e;

    float-to-double v1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    .line 1399
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 1398
    invoke-virtual {v0, p2, v1}, Lcom/explorestack/iab/utils/e;->a(II)V

    :cond_1
    cmpg-float p1, p1, p3

    if-gtz p1, :cond_2

    .line 1402
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iput p3, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->skipTime:F

    .line 1403
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isSkipEnabled:Z

    .line 1404
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$2;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->m(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_2
    :goto_0
    return-void
.end method
