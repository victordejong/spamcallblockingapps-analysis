.class final Lcom/explorestack/iab/mraid/MraidView$6;
.super Lcom/explorestack/iab/mraid/MraidView$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;->handleExpand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 1

    .line 560
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$6;->a:Lcom/explorestack/iab/mraid/MraidView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/explorestack/iab/mraid/MraidView$b;-><init>(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/MraidView$1;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 563
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$6;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidView;->access$4200(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 568
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$6;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidView;->access$4300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$6;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/MraidView;->access$4300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2000(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/h;)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 0

    return-void
.end method
