.class public Lbg1;
.super Lcom/mopub/common/ViewabilityTracker;
.source ""


# instance fields
.field public h:Lh41;


# direct methods
.method public constructor <init>(Lv31;Lu31;Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lh41;->g(Lv31;)Lh41;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lbg1;-><init>(Lv31;Lu31;Landroid/view/View;Lh41;)V

    return-void
.end method

.method public constructor <init>(Lv31;Lu31;Landroid/view/View;Lh41;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/ViewabilityTracker;-><init>(Lv31;Lu31;Landroid/view/View;)V

    iput-object p4, p0, Lbg1;->h:Lh41;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ViewabilityTrackerVideo() sesseionId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static m(Landroid/view/View;Ljava/util/Set;)Lcom/mopub/common/ViewabilityTracker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)",
            "Lcom/mopub/common/ViewabilityTracker;"
        }
    .end annotation

    sget-object v0, Lz31;->f:Lz31;

    sget-object v1, Lc41;->b:Lc41;

    invoke-static {v0, p1, v1}, Lcom/mopub/common/ViewabilityTracker;->b(Lz31;Ljava/util/Set;Lc41;)Lv31;

    move-result-object p1

    invoke-static {p1}, Lu31;->a(Lv31;)Lu31;

    move-result-object v0

    new-instance v1, Lbg1;

    invoke-direct {v1, p1, v0, p0}, Lbg1;-><init>(Lv31;Lu31;Landroid/view/View;)V

    return-object v1
.end method


# virtual methods
.method public startTracking()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewabilityTrackerVideo.startTracking() sesseionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED_VIDEO:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->a(Lcom/mopub/common/ViewabilityTracker$STATE;)V

    return-void
.end method

.method public trackVideo(Lcom/mopub/common/VideoEvent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/mopub/common/ViewabilityTracker;->g()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackVideo() skip event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackVideo() event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    sget-object v0, Lbg1$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lbg1;->h:Lh41;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lh41;->p(F)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lbg1;->h:Lh41;

    sget-object v0, Li41;->d:Li41;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lbg1;->h:Lh41;

    sget-object v0, Li41;->g:Li41;

    :goto_0
    invoke-virtual {p1, v0}, Lh41;->k(Li41;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lbg1;->h:Lh41;

    invoke-virtual {p1}, Lh41;->d()V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Lbg1;->h:Lh41;

    invoke-virtual {p1}, Lh41;->o()V

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lbg1;->h:Lh41;

    invoke-virtual {p1}, Lh41;->i()V

    goto :goto_1

    :pswitch_6
    iget-object p1, p0, Lbg1;->h:Lh41;

    invoke-virtual {p1}, Lh41;->h()V

    goto :goto_1

    :pswitch_7
    iget-object p1, p0, Lbg1;->h:Lh41;

    invoke-virtual {p1}, Lh41;->b()V

    goto :goto_1

    :pswitch_8
    iget-object p1, p0, Lbg1;->h:Lh41;

    invoke-virtual {p1}, Lh41;->c()V

    goto :goto_1

    :pswitch_9
    iget-object p1, p0, Lbg1;->h:Lh41;

    sget-object v0, Lg41;->b:Lg41;

    invoke-virtual {p1, v0}, Lh41;->a(Lg41;)V

    goto :goto_1

    :pswitch_a
    iget-object p1, p0, Lbg1;->h:Lh41;

    invoke-virtual {p1}, Lh41;->m()V

    goto :goto_1

    :pswitch_b
    iget-object p1, p0, Lbg1;->h:Lh41;

    invoke-virtual {p1}, Lh41;->l()V

    goto :goto_1

    :pswitch_c
    iget-object p1, p0, Lbg1;->h:Lh41;

    invoke-virtual {p1}, Lh41;->j()V

    goto :goto_1

    :pswitch_d
    invoke-virtual {p0}, Lcom/mopub/common/ViewabilityTracker;->trackImpression()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public videoPrepared(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "videoPrepared() duration= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/common/ViewabilityTracker;->g()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "videoPrepared() not tracking yet: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/common/ViewabilityTracker;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lbg1;->h:Lh41;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1}, Lh41;->n(FF)V

    return-void
.end method
