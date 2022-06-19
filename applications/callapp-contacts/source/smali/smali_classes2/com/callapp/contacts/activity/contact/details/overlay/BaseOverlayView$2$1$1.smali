.class Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->onDestroy()V

    return-void
.end method
