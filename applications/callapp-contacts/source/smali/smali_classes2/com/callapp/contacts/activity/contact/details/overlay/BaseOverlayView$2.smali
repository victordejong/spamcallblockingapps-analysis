.class Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishViewContainer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getAnimationContainer()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->c(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method
