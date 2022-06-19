.class final Lcom/explorestack/iab/vast/activity/VastView$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 836
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$20;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$20;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/activity/VastView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView$20;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastView;->g(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_0
    return-void
.end method
