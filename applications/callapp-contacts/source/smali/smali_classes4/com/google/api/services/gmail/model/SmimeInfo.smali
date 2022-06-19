.class public final Lcom/google/api/services/gmail/model/SmimeInfo;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private encryptedKeyPassword:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private expiration:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation

    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isDefault:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private issuerCn:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private pem:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private pkcs12:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SmimeInfo;->clone()Lcom/google/api/services/gmail/model/SmimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SmimeInfo;->clone()Lcom/google/api/services/gmail/model/SmimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/SmimeInfo;
    .locals 1

    .line 257
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/SmimeInfo;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SmimeInfo;->clone()Lcom/google/api/services/gmail/model/SmimeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final decodePkcs12()[B
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->pkcs12:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final encodePkcs12([B)Lcom/google/api/services/gmail/model/SmimeInfo;
    .locals 0

    .line 246
    invoke-static {p1}, Lcom/google/api/client/a/d;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->pkcs12:Ljava/lang/String;

    return-object p0
.end method

.method public final getEncryptedKeyPassword()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->encryptedKeyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiration()Ljava/lang/Long;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->expiration:Ljava/lang/Long;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsDefault()Ljava/lang/Boolean;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->isDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIssuerCn()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->issuerCn:Ljava/lang/String;

    return-object v0
.end method

.method public final getPem()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->pem:Ljava/lang/String;

    return-object v0
.end method

.method public final getPkcs12()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->pkcs12:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/SmimeInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SmimeInfo;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/SmimeInfo;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SmimeInfo;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SmimeInfo;
    .locals 0

    .line 252
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/SmimeInfo;

    return-object p1
.end method

.method public final setEncryptedKeyPassword(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SmimeInfo;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->encryptedKeyPassword:Ljava/lang/String;

    return-object p0
.end method

.method public final setExpiration(Ljava/lang/Long;)Lcom/google/api/services/gmail/model/SmimeInfo;
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->expiration:Ljava/lang/Long;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SmimeInfo;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final setIsDefault(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/SmimeInfo;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->isDefault:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIssuerCn(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SmimeInfo;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->issuerCn:Ljava/lang/String;

    return-object p0
.end method

.method public final setPem(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SmimeInfo;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->pem:Ljava/lang/String;

    return-object p0
.end method

.method public final setPkcs12(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SmimeInfo;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmimeInfo;->pkcs12:Ljava/lang/String;

    return-object p0
.end method
