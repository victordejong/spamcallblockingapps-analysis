.class final Lcom/explorestack/iab/vast/activity/VastView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 1544
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$6;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1547
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$6;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->k(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer - onCompletion"

    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$6;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->l(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void
.end method
