.class Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/SmsUtils;->c(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    .line 68
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->finishViewContainer(Z)V

    :cond_0
    return-void
.end method
