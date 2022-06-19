.class Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;->onSendMessageClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$6;->c:Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$6;->a:Lcom/callapp/framework/phone/Phone;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 593
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$6;->a:Lcom/callapp/framework/phone/Phone;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/MultipleIncomingSmsOverlayView$6;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/SmsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)Z

    return-void
.end method
