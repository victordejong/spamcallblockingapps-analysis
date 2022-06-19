.class public Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private externalSourceId:I

.field private id:J

.field private jsonDoc:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->id:J

    .line 54
    iput p3, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->externalSourceId:I

    .line 55
    iput-object p4, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->key:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->jsonDoc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExternalSourceId()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->externalSourceId:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->id:J

    return-wide v0
.end method

.method public getJsonDoc()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->jsonDoc:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setExternalSourceId(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->externalSourceId:I

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->id:J

    return-void
.end method

.method public setJsonDoc(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->jsonDoc:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->key:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JSONExternalSourceContactOBEntity{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", externalSourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->externalSourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", jsonDoc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/model/objectbox/JSONExternalSourceContactOBEntity;->jsonDoc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
