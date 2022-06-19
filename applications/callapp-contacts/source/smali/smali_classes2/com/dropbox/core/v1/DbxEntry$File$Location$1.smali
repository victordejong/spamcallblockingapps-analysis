.class final Lcom/dropbox/core/v1/DbxEntry$File$Location$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader<",
        "Lcom/dropbox/core/v1/DbxEntry$a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 561
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$a$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .line 567
    invoke-static {p1}, Lcom/dropbox/core/json/JsonArrayReader;->isArrayStart(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectArrayStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    .line 569
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->readDouble(Lcom/fasterxml/jackson/core/JsonParser;)D

    move-result-wide v0

    .line 570
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->readDouble(Lcom/fasterxml/jackson/core/JsonParser;)D

    move-result-wide v2

    .line 571
    new-instance v4, Lcom/dropbox/core/v1/DbxEntry$a$a;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/dropbox/core/v1/DbxEntry$a$a;-><init>(DD)V

    .line 572
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectArrayEnd(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    goto :goto_0

    .line 574
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    const/4 v4, 0x0

    :goto_0
    return-object v4
.end method

.method public final bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .line 561
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$File$Location$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$a$a;

    move-result-object p1

    return-object p1
.end method
