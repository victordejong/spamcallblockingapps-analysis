.class final Lcom/explorestack/iab/mraid/CloseableLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/CloseableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/CloseableLayout;


# direct methods
.method private constructor <init>(Lcom/explorestack/iab/mraid/CloseableLayout;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/iab/mraid/CloseableLayout;Lcom/explorestack/iab/mraid/CloseableLayout$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/CloseableLayout$a;-><init>(Lcom/explorestack/iab/mraid/CloseableLayout;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 217
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$600(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/utils/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$700(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$b;

    move-result-object v0

    .line 1044
    iget-wide v0, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->d:J

    .line 221
    iget-object v2, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-virtual {v2}, Lcom/explorestack/iab/mraid/CloseableLayout;->isShown()Z

    move-result v2

    const-wide/16 v3, 0x32

    if-eqz v2, :cond_1

    add-long/2addr v0, v3

    .line 223
    iget-object v2, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {v2}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$700(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$b;

    move-result-object v2

    .line 1063
    iput-wide v0, v2, Lcom/explorestack/iab/mraid/CloseableLayout$b;->d:J

    .line 224
    iget-object v2, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {v2}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$600(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/utils/e;

    move-result-object v2

    const-wide/16 v5, 0x64

    mul-long v5, v5, v0

    iget-object v7, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    .line 225
    invoke-static {v7}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$700(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$b;

    move-result-object v7

    .line 2044
    iget-wide v7, v7, Lcom/explorestack/iab/mraid/CloseableLayout$b;->c:J

    .line 225
    div-long/2addr v5, v7

    long-to-int v6, v5

    iget-object v5, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    .line 226
    invoke-static {v5}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$700(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$b;

    move-result-object v5

    .line 3044
    iget-wide v7, v5, Lcom/explorestack/iab/mraid/CloseableLayout$b;->c:J

    sub-long/2addr v7, v0

    long-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    .line 226
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    .line 224
    invoke-virtual {v2, v6, v5}, Lcom/explorestack/iab/utils/e;->a(II)V

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {v2}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$700(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$b;

    move-result-object v2

    .line 4044
    iget-wide v5, v2, Lcom/explorestack/iab/mraid/CloseableLayout$b;->c:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_2

    .line 230
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$1000(Lcom/explorestack/iab/mraid/CloseableLayout;)V

    .line 231
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$700(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$b;

    move-result-object v0

    .line 5044
    iget v0, v0, Lcom/explorestack/iab/mraid/CloseableLayout$b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$300(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$300(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/iab/mraid/CloseableLayout$c;->onCountDownFinish()V

    return-void

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/mraid/CloseableLayout$a;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-virtual {v0, p0, v3, v4}, Lcom/explorestack/iab/mraid/CloseableLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
