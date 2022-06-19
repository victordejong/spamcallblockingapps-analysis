.class public final Lcom/google/api/services/gmail/model/MessagePart;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private body:Lcom/google/api/services/gmail/model/MessagePartBody;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private filename:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private headers:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/MessagePartHeader;",
            ">;"
        }
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private partId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private parts:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/MessagePart;",
            ">;"
        }
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/MessagePart;->clone()Lcom/google/api/services/gmail/model/MessagePart;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/MessagePart;->clone()Lcom/google/api/services/gmail/model/MessagePart;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/MessagePart;
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/MessagePart;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/MessagePart;->clone()Lcom/google/api/services/gmail/model/MessagePart;

    move-result-object v0

    return-object v0
.end method

.method public final getBody()Lcom/google/api/services/gmail/model/MessagePartBody;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePart;->body:Lcom/google/api/services/gmail/model/MessagePartBody;

    return-object v0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePart;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/MessagePartHeader;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePart;->headers:Ljava/util/List;

    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePart;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPartId()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePart;->partId:Ljava/lang/String;

    return-object v0
.end method

.method public final getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/MessagePart;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/api/services/gmail/model/MessagePart;->parts:Ljava/util/List;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/MessagePart;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/MessagePart;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/MessagePart;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/MessagePart;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/MessagePart;
    .locals 0

    .line 194
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/MessagePart;

    return-object p1
.end method

.method public final setBody(Lcom/google/api/services/gmail/model/MessagePartBody;)Lcom/google/api/services/gmail/model/MessagePart;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePart;->body:Lcom/google/api/services/gmail/model/MessagePartBody;

    return-object p0
.end method

.method public final setFilename(Ljava/lang/String;)Lcom/google/api/services/gmail/model/MessagePart;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePart;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public final setHeaders(Ljava/util/List;)Lcom/google/api/services/gmail/model/MessagePart;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/MessagePartHeader;",
            ">;)",
            "Lcom/google/api/services/gmail/model/MessagePart;"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePart;->headers:Ljava/util/List;

    return-object p0
.end method

.method public final setMimeType(Ljava/lang/String;)Lcom/google/api/services/gmail/model/MessagePart;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePart;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public final setPartId(Ljava/lang/String;)Lcom/google/api/services/gmail/model/MessagePart;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePart;->partId:Ljava/lang/String;

    return-object p0
.end method

.method public final setParts(Ljava/util/List;)Lcom/google/api/services/gmail/model/MessagePart;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/gmail/model/MessagePart;",
            ">;)",
            "Lcom/google/api/services/gmail/model/MessagePart;"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/google/api/services/gmail/model/MessagePart;->parts:Ljava/util/List;

    return-object p0
.end method
