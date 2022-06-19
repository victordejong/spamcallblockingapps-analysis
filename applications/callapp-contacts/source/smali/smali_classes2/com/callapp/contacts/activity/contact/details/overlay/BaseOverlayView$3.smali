.class Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishWithSlideOut(ZF)V
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

    .line 235
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$3;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$3;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->finishViewContainer(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
