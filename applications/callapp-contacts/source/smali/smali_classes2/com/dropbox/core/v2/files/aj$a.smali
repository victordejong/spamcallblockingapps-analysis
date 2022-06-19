.class final Lcom/dropbox/core/v2/files/aj$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/aj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 216
    new-instance v0, Lcom/dropbox/core/v2/files/aj$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/aj$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/aj$a;->a:Lcom/dropbox/core/v2/files/aj$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1244
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1246
    invoke-static {p1}, Lcom/dropbox/core/v2/files/aj$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1247
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1251
    invoke-static {p1}, Lcom/dropbox/core/v2/files/aj$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1252
    invoke-static {p1}, Lcom/dropbox/core/v2/files/aj$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "pending"

    .line 1257
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1258
    sget-object v1, Lcom/dropbox/core/v2/files/aj;->a:Lcom/dropbox/core/v2/files/aj;

    goto :goto_1

    :cond_1
    const-string v2, "metadata"

    .line 1260
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1262
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/aj$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1263
    sget-object v1, Lcom/dropbox/core/v2/files/ak$a;->a:Lcom/dropbox/core/v2/files/ak$a;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/v2/files/ak$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/files/ak;

    .line 1264
    invoke-static {v1}, Lcom/dropbox/core/v2/files/aj;->a(Lcom/dropbox/core/v2/files/ak;)Lcom/dropbox/core/v2/files/aj;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_2

    .line 1270
    invoke-static {p1}, Lcom/dropbox/core/v2/files/aj$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1271
    invoke-static {p1}, Lcom/dropbox/core/v2/files/aj$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v1

    .line 1267
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_4
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

    .line 215
    check-cast p1, Lcom/dropbox/core/v2/files/aj;

    .line 2220
    sget-object v0, Lcom/dropbox/core/v2/files/aj$1;->a:[I

    .line 3097
    iget-object v1, p1, Lcom/dropbox/core/v2/files/aj;->b:Lcom/dropbox/core/v2/files/aj$b;

    .line 2220
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/aj$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2226
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "metadata"

    .line 2227
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/aj$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2228
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2229
    sget-object v0, Lcom/dropbox/core/v2/files/ak$a;->a:Lcom/dropbox/core/v2/files/ak$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/aj;->a(Lcom/dropbox/core/v2/files/aj;)Lcom/dropbox/core/v2/files/ak;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ak$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2230
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2234
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4097
    iget-object p1, p1, Lcom/dropbox/core/v2/files/aj;->b:Lcom/dropbox/core/v2/files/aj$b;

    .line 2234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "pending"

    .line 2222
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method
