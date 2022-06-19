.class public final Lcom/dropbox/core/v2/fileproperties/m$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/fileproperties/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 251
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/m$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/m$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/m$a;->a:Lcom/dropbox/core/v2/fileproperties/m$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 250
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1275
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1277
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/m$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1278
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1282
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/m$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1283
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/m$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "filter_some"

    .line 1288
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1290
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/fileproperties/m$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1291
    invoke-static {v1}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1292
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/m;->a(Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/m;

    move-result-object v1

    goto :goto_1

    .line 1295
    :cond_1
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/m;->a:Lcom/dropbox/core/v2/fileproperties/m;

    :goto_1
    if-nez v0, :cond_2

    .line 1298
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/m$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1299
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/m$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v1

    .line 1286
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 250
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/m;

    .line 2255
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/m$1;->a:[I

    .line 3115
    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/m;->b:Lcom/dropbox/core/v2/fileproperties/m$b;

    .line 2255
    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/m$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p1, "other"

    .line 2265
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2257
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "filter_some"

    .line 2258
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/m$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2259
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 2260
    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/m;->a(Lcom/dropbox/core/v2/fileproperties/m;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2261
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
