.class Lcom/callapp/contacts/action/shared/SharedAction$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/SharedAction;->b(Lcom/callapp/common/model/message/OutgoingMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/common/model/message/OutgoingMessage;

.field final synthetic b:Lcom/callapp/contacts/action/shared/SharedAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/SharedAction;Lcom/callapp/common/model/message/OutgoingMessage;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/SharedAction$3;->b:Lcom/callapp/contacts/action/shared/SharedAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/SharedAction$3;->a:Lcom/callapp/common/model/message/OutgoingMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/SharedAction$3;->a:Lcom/callapp/common/model/message/OutgoingMessage;

    invoke-virtual {v0}, Lcom/callapp/common/model/message/OutgoingMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/action/shared/SharedAction$3;->b:Lcom/callapp/contacts/action/shared/SharedAction;

    iget-object v3, p0, Lcom/callapp/contacts/action/shared/SharedAction$3;->a:Lcom/callapp/common/model/message/OutgoingMessage;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/action/shared/SharedAction;->a(Lcom/callapp/common/model/message/OutgoingMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/callapp/contacts/util/SmsUtils;->b(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    return-void
.end method
