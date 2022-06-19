.class public final Lcom/dropbox/core/v2/files/ay$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/ay;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ay$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 268
    new-instance v0, Lcom/dropbox/core/v2/files/ay$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ay$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ay$a;->a:Lcom/dropbox/core/v2/files/ay$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ay;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 302
    invoke-static {p0}, Lcom/dropbox/core/v2/files/ay$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 307
    invoke-static {p0}, Lcom/dropbox/core/v2/files/ay$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 308
    invoke-static {p0}, Lcom/dropbox/core/v2/files/ay$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "path"

    .line 313
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/files/ay$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 316
    sget-object v1, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p0}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v1

    .line 317
    invoke-static {v1}, Lcom/dropbox/core/v2/files/ay;->a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/ay;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "unsupported_combination"

    .line 319
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    sget-object v1, Lcom/dropbox/core/v2/files/ay;->a:Lcom/dropbox/core/v2/files/ay;

    goto :goto_1

    :cond_2
    const-string v2, "unsupported_configuration"

    .line 322
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    sget-object v1, Lcom/dropbox/core/v2/files/ay;->b:Lcom/dropbox/core/v2/files/ay;

    goto :goto_1

    .line 326
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/files/ay;->c:Lcom/dropbox/core/v2/files/ay;

    :goto_1
    if-nez v0, :cond_4

    .line 329
    invoke-static {p0}, Lcom/dropbox/core/v2/files/ay$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 330
    invoke-static {p0}, Lcom/dropbox/core/v2/files/ay$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 311
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/files/ay;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/dropbox/core/v2/files/ay$1;->a:[I

    .line 1125
    iget-object v1, p1, Lcom/dropbox/core/v2/files/ay;->d:Lcom/dropbox/core/v2/files/ay$b;

    .line 272
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ay$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 290
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "unsupported_configuration"

    .line 286
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "unsupported_combination"

    .line 282
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 274
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 275
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ay$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 276
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 277
    sget-object v0, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ay;->a(Lcom/dropbox/core/v2/files/ay;)Lcom/dropbox/core/v2/files/ai;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/dropbox/core/v2/files/ai;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 278
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 267
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ay$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ay;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 267
    check-cast p1, Lcom/dropbox/core/v2/files/ay;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ay$a;->a(Lcom/dropbox/core/v2/files/ay;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
