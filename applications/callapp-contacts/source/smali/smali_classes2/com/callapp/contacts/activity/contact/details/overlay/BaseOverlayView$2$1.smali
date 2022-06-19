.class Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;

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

    .line 111
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

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
