.class final Lcom/explorestack/iab/mraid/MraidView$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/MraidView$5$1;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/MraidView$5$1;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$5$1$1;->a:Lcom/explorestack/iab/mraid/MraidView$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$5$1$1;->a:Lcom/explorestack/iab/mraid/MraidView$5$1;

    iget-object v0, v0, Lcom/explorestack/iab/mraid/MraidView$5$1;->b:Lcom/explorestack/iab/mraid/MraidView$5;

    iget-object v0, v0, Lcom/explorestack/iab/mraid/MraidView$5;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$3900(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void
.end method
