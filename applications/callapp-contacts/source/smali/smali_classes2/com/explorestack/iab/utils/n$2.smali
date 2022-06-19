.class final Lcom/explorestack/iab/utils/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/utils/n;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/utils/n;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 92
    iget-object v0, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 1008
    iget-wide v0, v0, Lcom/explorestack/iab/utils/n;->e:J

    .line 93
    iget-object v2, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 2008
    iget-object v2, v2, Lcom/explorestack/iab/utils/n;->a:Landroid/view/View;

    .line 93
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    const-wide/16 v3, 0x10

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 3008
    iget-wide v5, v2, Lcom/explorestack/iab/utils/n;->d:J

    add-long/2addr v0, v3

    .line 94
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 4065
    iput-wide v0, v2, Lcom/explorestack/iab/utils/n;->e:J

    const/high16 v2, 0x42c80000    # 100.0f

    .line 96
    iget-object v5, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 5008
    iget-wide v5, v5, Lcom/explorestack/iab/utils/n;->e:J

    long-to-float v5, v5

    mul-float v5, v5, v2

    .line 96
    iget-object v2, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 6008
    iget-wide v6, v2, Lcom/explorestack/iab/utils/n;->d:J

    long-to-float v2, v6

    div-float v7, v5, v2

    .line 97
    iget-object v2, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 7008
    iget-object v6, v2, Lcom/explorestack/iab/utils/n;->b:Lcom/explorestack/iab/utils/n$a;

    .line 97
    iget-object v2, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 8008
    iget-wide v8, v2, Lcom/explorestack/iab/utils/n;->e:J

    .line 97
    iget-object v2, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 9008
    iget-wide v10, v2, Lcom/explorestack/iab/utils/n;->d:J

    .line 97
    invoke-interface/range {v6 .. v11}, Lcom/explorestack/iab/utils/n$a;->a(FJJ)V

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 10008
    iget-wide v5, v2, Lcom/explorestack/iab/utils/n;->d:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_1

    .line 100
    iget-object v0, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 11008
    iget-object v0, v0, Lcom/explorestack/iab/utils/n;->b:Lcom/explorestack/iab/utils/n$a;

    .line 100
    invoke-interface {v0}, Lcom/explorestack/iab/utils/n$a;->a()V

    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/utils/n$2;->a:Lcom/explorestack/iab/utils/n;

    .line 12008
    iget-object v0, v0, Lcom/explorestack/iab/utils/n;->a:Landroid/view/View;

    .line 102
    invoke-virtual {v0, p0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
