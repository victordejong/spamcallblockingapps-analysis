.class Lcom/callapp/contacts/action/shared/SharedAction$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/SmsUtils$SelectNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/shared/SharedAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/action/shared/SharedAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/shared/SharedAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/action/shared/SharedAction$2;->c:Lcom/callapp/contacts/action/shared/SharedAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/shared/SharedAction$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/action/shared/SharedAction$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/framework/phone/Phone;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/action/shared/SharedAction$2;->c:Lcom/callapp/contacts/action/shared/SharedAction;

    new-instance v1, Lcom/callapp/common/model/message/OutgoingMessage;

    invoke-direct {v1}, Lcom/callapp/common/model/message/OutgoingMessage;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callapp/common/model/message/OutgoingMessage;->setTo(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/SharedAction$2;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/callapp/common/model/message/OutgoingMessage;->setType(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/action/shared/SharedAction$2;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/callapp/common/model/message/OutgoingMessage;->setBody(Ljava/lang/String;)Lcom/callapp/common/model/message/OutgoingMessage;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/action/shared/SharedAction;->b(Lcom/callapp/common/model/message/OutgoingMessage;)V

    return-void
.end method
