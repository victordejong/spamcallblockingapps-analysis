.class Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/action/ActionDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 53
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->finishViewContainer(Z)V

    return-void
.end method
