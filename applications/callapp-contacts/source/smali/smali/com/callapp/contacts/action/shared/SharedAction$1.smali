.class Lcom/callapp/contacts/action/shared/SharedAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/shared/SharedAction;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/action/shared/SharedAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/SharedAction;Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/SharedAction$1;->c:Lcom/callapp/contacts/action/shared/SharedAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/SharedAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/SharedAction$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;)V
    .locals 4

    .line 34
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f12004e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/callapp/contacts/action/shared/SharedAction$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/callapp/common/model/message/OutgoingMessage;

    invoke-direct {v0}, Lcom/callapp/common/model/message/OutgoingMessage;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/common/model/message/OutgoingMessage;->setTo(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/SharedAction$1;->c:Lcom/callapp/contacts/action/shared/SharedAction;

    invoke-virtual {v0}, Lcom/callapp/contacts/action/shared/SharedAction;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/common/model/message/OutgoingMessage;->setType(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/action/shared/SharedAction$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/common/model/message/OutgoingMessage;->setBody(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/SharedAction$1;->c:Lcom/callapp/contacts/action/shared/SharedAction;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/action/shared/SharedAction;->b(Lcom/callapp/common/model/message/OutgoingMessage;)V

    return-void
.end method
