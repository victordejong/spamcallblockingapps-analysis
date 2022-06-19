.class Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->showTooltipIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->getWindowHeight()I

    move-result v1

    add-int/lit16 v1, v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->setWindowHeight(I)V

    .line 149
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->getWindowY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/DuringCallOverlayView;->repositionOverlayVertically(I)V

    return-void
.end method
