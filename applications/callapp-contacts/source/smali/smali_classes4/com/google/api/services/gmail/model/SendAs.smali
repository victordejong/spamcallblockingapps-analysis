.class public final Lcom/google/api/services/gmail/model/SendAs;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isDefault:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private isPrimary:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private replyToAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private sendAsEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private signature:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private smtpMsa:Lcom/google/api/services/gmail/model/SmtpMsa;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private treatAsAlias:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field

.field private verificationStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/a/q;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SendAs;->clone()Lcom/google/api/services/gmail/model/SendAs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SendAs;->clone()Lcom/google/api/services/gmail/model/SendAs;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/google/api/services/gmail/model/SendAs;
    .locals 1

    .line 312
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/gmail/model/SendAs;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/google/api/services/gmail/model/SendAs;->clone()Lcom/google/api/services/gmail/model/SendAs;

    move-result-object v0

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsDefault()Ljava/lang/Boolean;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->isDefault:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getIsPrimary()Ljava/lang/Boolean;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->isPrimary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getReplyToAddress()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->replyToAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getSendAsEmail()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->sendAsEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getSmtpMsa()Lcom/google/api/services/gmail/model/SmtpMsa;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->smtpMsa:Lcom/google/api/services/gmail/model/SmtpMsa;

    return-object v0
.end method

.method public final getTreatAsAlias()Ljava/lang/Boolean;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->treatAsAlias:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getVerificationStatus()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/api/services/gmail/model/SendAs;->verificationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/SendAs;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SendAs;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/gmail/model/SendAs;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SendAs;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/gmail/model/SendAs;
    .locals 0

    .line 307
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object p1

    check-cast p1, Lcom/google/api/services/gmail/model/SendAs;

    return-object p1
.end method

.method public final setDisplayName(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SendAs;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final setIsDefault(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/SendAs;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->isDefault:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setIsPrimary(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/SendAs;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->isPrimary:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setReplyToAddress(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SendAs;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->replyToAddress:Ljava/lang/String;

    return-object p0
.end method

.method public final setSendAsEmail(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SendAs;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->sendAsEmail:Ljava/lang/String;

    return-object p0
.end method

.method public final setSignature(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SendAs;
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public final setSmtpMsa(Lcom/google/api/services/gmail/model/SmtpMsa;)Lcom/google/api/services/gmail/model/SendAs;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->smtpMsa:Lcom/google/api/services/gmail/model/SmtpMsa;

    return-object p0
.end method

.method public final setTreatAsAlias(Ljava/lang/Boolean;)Lcom/google/api/services/gmail/model/SendAs;
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->treatAsAlias:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setVerificationStatus(Ljava/lang/String;)Lcom/google/api/services/gmail/model/SendAs;
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/google/api/services/gmail/model/SendAs;->verificationStatus:Ljava/lang/String;

    return-object p0
.end method
