.class final Lcom/explorestack/iab/mraid/MraidView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;->handlePartTwoLoaded()V
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

    .line 822
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$8;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$8;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$4300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$8;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->access$4500(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/a;)V

    .line 826
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$8;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$4300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$8;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->access$4600(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/c;)V

    .line 827
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$8;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$4300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$8;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->access$4300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v1

    .line 1108
    iget-object v1, v1, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/MraidWebView;

    .line 2092
    iget-boolean v1, v1, Lcom/explorestack/iab/mraid/MraidWebView;->b:Z

    .line 827
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/h;->a(Z)V

    .line 828
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$8;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$4300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$8;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->access$3200(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/g;)V

    .line 829
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$8;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$4300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;

    move-result-object v0

    const-string v1, "mraid.fireReadyEvent();"

    .line 2170
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/h;->a(Ljava/lang/String;)V

    return-void
.end method
