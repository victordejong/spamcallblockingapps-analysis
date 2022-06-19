.class public final Lcom/google/api/services/gmail/model/SmtpMsa;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private host:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private port:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private securityMode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private username:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SmtpMsa;->clone()Lcom/google/api/services/gmail/model/SmtpMsa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SmtpMsa;->clone()Lcom/google/api/services/gmail/model/SmtpMsa;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/SmtpMsa;
    .locals 1

    .line 175
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/SmtpMsa;

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
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SmtpMsa;->clone()Lcom/google/api/services/gmail/model/SmtpMsa;

    move-result-object v0

    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmtpMsa;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmtpMsa;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getPort()Ljava/lang/Integer;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmtpMsa;->port:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSecurityMode()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmtpMsa;->securityMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SmtpMsa;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/SmtpMsa;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SmtpMsa;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/SmtpMsa;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SmtpMsa;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SmtpMsa;
    .locals 0

    .line 170
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/SmtpMsa;

    return-object p1
.end method

.method public final setHost(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SmtpMsa;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmtpMsa;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final setPassword(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SmtpMsa;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmtpMsa;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final setPort(Ljava/lang/Integer;)Lcom/google/api/services/gmail/model/SmtpMsa;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmtpMsa;->port:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setSecurityMode(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SmtpMsa;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmtpMsa;->securityMode:Ljava/lang/String;

    return-object p0
.end method

.method public final setUsername(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SmtpMsa;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SmtpMsa;->username:Ljava/lang/String;

    return-object p0
.end method
