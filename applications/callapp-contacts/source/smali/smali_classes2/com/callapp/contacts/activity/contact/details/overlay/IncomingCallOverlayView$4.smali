.class Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->incomingIsPrivate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;Z)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->access$200(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$4;->a:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;->access$200(Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/IncomingCallOverlayView$4;->a:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
