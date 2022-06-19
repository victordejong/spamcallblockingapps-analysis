.class final Lcom/explorestack/iab/vast/activity/VastView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    .line 1604
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$9;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 1607
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$9;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onVideoSizeChanged"

    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$9;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;I)I

    .line 1609
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$9;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1, p3}, Lcom/explorestack/iab/vast/activity/VastView;->b(Lcom/explorestack/iab/vast/activity/VastView;I)I

    .line 1610
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$9;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->g(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void
.end method
