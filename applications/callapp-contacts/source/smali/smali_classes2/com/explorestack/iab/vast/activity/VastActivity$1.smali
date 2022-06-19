.class final Lcom/explorestack/iab/vast/activity/VastActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/activity/VastView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/vast/activity/VastActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/activity/VastActivity;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/activity/VastActivity;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-interface {v0, v1, p1}, Lcom/explorestack/iab/vast/VastActivityListener;->onVastShown(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {v0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;I)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/c;Ljava/lang/String;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/explorestack/iab/vast/VastActivityListener;->onVastClick(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {v0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V

    return-void
.end method

.method public final b(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity$1;->a:Lcom/explorestack/iab/vast/activity/VastActivity;

    invoke-interface {v0, v1, p1}, Lcom/explorestack/iab/vast/VastActivityListener;->onVastComplete(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;)V

    :cond_0
    return-void
.end method
