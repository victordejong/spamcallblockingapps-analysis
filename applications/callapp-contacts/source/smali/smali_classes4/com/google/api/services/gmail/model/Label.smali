.class public final Lcom/google/api/services/gmail/model/Label;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private color:Lcom/google/api/services/gmail/model/LabelColor;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private labelListVisibility:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private messageListVisibility:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private messagesTotal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private messagesUnread:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private threadsTotal:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private threadsUnread:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Label;->clone()Lcom/google/api/services/gmail/model/Label;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Label;->clone()Lcom/google/api/services/gmail/model/Label;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/Label;
    .locals 1

    .line 301
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/Label;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/Label;->clone()Lcom/google/api/services/gmail/model/Label;

    move-result-object v0

    return-object v0
.end method

.method public final getColor()Lcom/google/api/services/gmail/model/LabelColor;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->color:Lcom/google/api/services/gmail/model/LabelColor;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabelListVisibility()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->labelListVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageListVisibility()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->messageListVisibility:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessagesTotal()Ljava/lang/Integer;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->messagesTotal:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMessagesUnread()Ljava/lang/Integer;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->messagesUnread:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getThreadsTotal()Ljava/lang/Integer;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->threadsTotal:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getThreadsUnread()Ljava/lang/Integer;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->threadsUnread:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/api/services/gmail/model/Label;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/Label;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Label;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/Label;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Label;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 296
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/Label;

    return-object p1
.end method

.method public final setColor(Lcom/google/api/services/gmail/model/LabelColor;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->color:Lcom/google/api/services/gmail/model/LabelColor;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setLabelListVisibility(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->labelListVisibility:Ljava/lang/String;

    return-object p0
.end method

.method public final setMessageListVisibility(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->messageListVisibility:Ljava/lang/String;

    return-object p0
.end method

.method public final setMessagesTotal(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->messagesTotal:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMessagesUnread(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->messagesUnread:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final setThreadsTotal(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->threadsTotal:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setThreadsUnread(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->threadsUnread:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/services/gmail/model/Label;
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/google/api/services/gmail/model/Label;->type:Ljava/lang/String;

    return-object p0
.end method
