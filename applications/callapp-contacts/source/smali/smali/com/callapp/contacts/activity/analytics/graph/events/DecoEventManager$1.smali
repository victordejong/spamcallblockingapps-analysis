.class public Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

.field final synthetic c:Z

.field final synthetic d:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;ZLcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;Z)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->d:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->a:Z

    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    iput-boolean p4, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 57
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getLinkedViews()[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getLinkedViews()[Landroid/view/View;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 62
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-gt v5, v6, :cond_0

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 63
    move-object v5, v4

    check-cast v5, Landroid/widget/TextView;

    .line 64
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gtz v6, :cond_0

    const-string v6, " "

    .line 65
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->c:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getLinkedViews()[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getLinkedViews()[Landroid/view/View;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 73
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    iget-boolean v5, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->a:Z

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_2
    if-eqz v5, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_3
    invoke-direct {v4, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 74
    iget-object v5, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->getFadeDuration()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v5, 0x1

    .line 75
    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 76
    new-instance v5, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1$1;

    invoke-direct {v5, p0, v3}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1$1;-><init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->d:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;)Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->d:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager;)Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$1;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEventManager$ArcEventManagerListener;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;)V

    :cond_5
    return-void
.end method
