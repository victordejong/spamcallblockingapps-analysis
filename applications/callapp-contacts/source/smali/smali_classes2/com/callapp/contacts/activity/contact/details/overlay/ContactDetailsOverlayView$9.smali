.class Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$9;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$9;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->removeView()V

    .line 475
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$9;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$1300(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onDestroy()V

    return-void
.end method
