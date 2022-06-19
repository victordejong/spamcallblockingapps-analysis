.class public Lcom/callapp/common/model/message/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3244f570d0c77080L


# instance fields
.field private code:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/callapp/common/model/message/ResultCode;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/common/model/message/Response;->code:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/callapp/common/model/message/Response;->value:Ljava/lang/String;

    return-void
.end method

.method public static error(Ljava/lang/String;)Lcom/callapp/common/model/message/Response;
    .locals 2

    .line 64
    new-instance v0, Lcom/callapp/common/model/message/Response;

    sget-object v1, Lcom/callapp/common/model/message/ResultCode;->GENERAL_ERROR:Lcom/callapp/common/model/message/ResultCode;

    invoke-direct {v0, v1, p0}, Lcom/callapp/common/model/message/Response;-><init>(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)Lcom/callapp/common/model/message/Response;
    .locals 2

    .line 60
    new-instance v0, Lcom/callapp/common/model/message/Response;

    sget-object v1, Lcom/callapp/common/model/message/ResultCode;->GENERAL_ERROR:Lcom/callapp/common/model/message/ResultCode;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/callapp/common/model/message/Response;-><init>(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Lcom/callapp/common/model/message/ResultCode;)Lcom/callapp/common/model/message/Response;
    .locals 2

    .line 48
    new-instance v0, Lcom/callapp/common/model/message/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/callapp/common/model/message/Response;-><init>(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)Lcom/callapp/common/model/message/Response;
    .locals 1

    .line 52
    new-instance v0, Lcom/callapp/common/model/message/Response;

    invoke-direct {v0, p0, p1}, Lcom/callapp/common/model/message/Response;-><init>(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs of(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;[Ljava/lang/Object;)Lcom/callapp/common/model/message/Response;
    .locals 1

    .line 56
    new-instance v0, Lcom/callapp/common/model/message/Response;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/callapp/common/model/message/Response;-><init>(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ok()Lcom/callapp/common/model/message/Response;
    .locals 3

    .line 72
    new-instance v0, Lcom/callapp/common/model/message/Response;

    sget-object v1, Lcom/callapp/common/model/message/ResultCode;->OK:Lcom/callapp/common/model/message/ResultCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/common/model/message/Response;-><init>(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ok(Ljava/lang/String;)Lcom/callapp/common/model/message/Response;
    .locals 2

    .line 68
    new-instance v0, Lcom/callapp/common/model/message/Response;

    sget-object v1, Lcom/callapp/common/model/message/ResultCode;->OK:Lcom/callapp/common/model/message/ResultCode;

    invoke-direct {v0, v1, p0}, Lcom/callapp/common/model/message/Response;-><init>(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getResultCode()Lcom/callapp/common/model/message/ResultCode;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/callapp/common/model/message/Response;->code:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 24
    sget-object v0, Lcom/callapp/common/model/message/ResultCode;->GENERAL_ERROR:Lcom/callapp/common/model/message/ResultCode;

    return-object v0

    .line 26
    :cond_0
    invoke-static {v0}, Lcom/callapp/common/model/message/ResultCode;->valueOf(Ljava/lang/String;)Lcom/callapp/common/model/message/ResultCode;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/common/model/message/Response;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 2

    .line 44
    sget-object v0, Lcom/callapp/common/model/message/ResultCode;->OK:Lcom/callapp/common/model/message/ResultCode;

    invoke-virtual {p0}, Lcom/callapp/common/model/message/Response;->getResultCode()Lcom/callapp/common/model/message/ResultCode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setResultCode(Lcom/callapp/common/model/message/ResultCode;)Lcom/callapp/common/model/message/Response;
    .locals 0

    .line 30
    invoke-virtual {p1}, Lcom/callapp/common/model/message/ResultCode;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/common/model/message/Response;->code:Ljava/lang/String;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/callapp/common/model/message/Response;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/common/model/message/Response;->value:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/common/model/message/Response;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/common/model/message/Response;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
