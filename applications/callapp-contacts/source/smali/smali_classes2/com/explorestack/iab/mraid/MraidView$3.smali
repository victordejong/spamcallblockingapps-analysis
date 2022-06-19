.class final Lcom/explorestack/iab/mraid/MraidView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/utils/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$3;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$3;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2400(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/utils/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/l;->d()V

    .line 203
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$3;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2500(Lcom/explorestack/iab/mraid/MraidView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$3;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2600(Lcom/explorestack/iab/mraid/MraidView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$3;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2700(Lcom/explorestack/iab/mraid/MraidView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$3;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2800(Lcom/explorestack/iab/mraid/MraidView;)V

    :cond_0
    return-void
.end method

.method public final a(FJJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 195
    div-long/2addr p4, v0

    long-to-int p5, p4

    .line 196
    div-long/2addr p2, v0

    long-to-int p3, p2

    .line 197
    iget-object p2, p0, Lcom/explorestack/iab/mraid/MraidView$3;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView;->access$2400(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/utils/l;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p5}, Lcom/explorestack/iab/utils/l;->a(FII)V

    return-void
.end method
