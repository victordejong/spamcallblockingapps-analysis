.class Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;
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

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 44
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v7

    new-instance v8, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1$1;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ClipboardAutoSearchOverlayView$1;)V

    const-string v6, "Call"

    invoke-static/range {v0 .. v8}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    :cond_0
    return-void
.end method
