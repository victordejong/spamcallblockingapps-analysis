.class final Lcom/explorestack/iab/mraid/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/mraid/MraidWebView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/h;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/h;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/h;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/explorestack/iab/mraid/h$1;->a:Lcom/explorestack/iab/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h$1;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/h;->a(Lcom/explorestack/iab/mraid/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h$1;->a:Lcom/explorestack/iab/mraid/h;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/h;->a(Z)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/h$1;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/h;->b(Lcom/explorestack/iab/mraid/h;)Lcom/explorestack/iab/mraid/h$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/explorestack/iab/mraid/h$a;->b(Z)V

    return-void
.end method
