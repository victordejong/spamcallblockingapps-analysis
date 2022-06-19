.class public abstract Lcom/fasterxml/jackson/core/exc/StreamReadException;
.super Lcom/fasterxml/jackson/core/JsonProcessingException;
.source "StreamReadException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field protected _requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

.field protected transient d:Lcom/fasterxml/jackson/core/b;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/b;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    return-void

    :cond_0
    throw v0
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/b;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p2, p3, p1}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/b;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0, p2, v0, p3}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    throw v0
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p0, p3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    :cond_0
    iput-object p2, p0, Lcom/fasterxml/jackson/core/JsonProcessingException;->_location:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nRequest payload : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/RequestPayload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProcessor()Lcom/fasterxml/jackson/core/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->d:Lcom/fasterxml/jackson/core/b;

    return-object v0
.end method

.method public bridge synthetic getProcessor()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/exc/StreamReadException;->getProcessor()Lcom/fasterxml/jackson/core/b;

    move-result-object v0

    return-object v0
.end method

.method public getRequestPayload()Lcom/fasterxml/jackson/core/util/RequestPayload;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    return-object v0
.end method

.method public getRequestPayloadAsString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/exc/StreamReadException;->_requestPayload:Lcom/fasterxml/jackson/core/util/RequestPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/RequestPayload;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public abstract withParser(Lcom/fasterxml/jackson/core/b;)Lcom/fasterxml/jackson/core/exc/StreamReadException;
.end method

.method public abstract withRequestPayload(Lcom/fasterxml/jackson/core/util/RequestPayload;)Lcom/fasterxml/jackson/core/exc/StreamReadException;
.end method
