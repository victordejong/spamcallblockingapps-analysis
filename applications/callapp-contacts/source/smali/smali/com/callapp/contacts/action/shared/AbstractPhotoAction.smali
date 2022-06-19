.class public abstract Lcom/callapp/contacts/action/shared/AbstractPhotoAction;
.super Lcom/callapp/contacts/action/shared/SharedAction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/action/shared/SharedAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/callapp/common/model/message/OutgoingMessage;)Ljava/lang/String;
    .locals 6

    .line 14
    invoke-virtual {p1}, Lcom/callapp/common/model/message/OutgoingMessage;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/callapp/common/model/message/OutgoingMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120071

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f12066c

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p1, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
