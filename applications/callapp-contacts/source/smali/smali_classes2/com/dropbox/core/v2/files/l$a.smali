.class public final Lcom/dropbox/core/v2/files/l$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 268
    new-instance v0, Lcom/dropbox/core/v2/files/l$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/l$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/l$a;->a:Lcom/dropbox/core/v2/files/l$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 267
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

    .line 1300
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1302
    invoke-static {p1}, Lcom/dropbox/core/v2/files/l$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1303
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1307
    invoke-static {p1}, Lcom/dropbox/core/v2/files/l$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1308
    invoke-static {p1}, Lcom/dropbox/core/v2/files/l$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "path"

    .line 1313
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1315
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/l$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1316
    sget-object v1, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v1

    .line 1317
    invoke-static {v1}, Lcom/dropbox/core/v2/files/l;->a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/l;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "non_exportable"

    .line 1319
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1320
    sget-object v1, Lcom/dropbox/core/v2/files/l;->a:Lcom/dropbox/core/v2/files/l;

    goto :goto_1

    :cond_2
    const-string v2, "retry_error"

    .line 1322
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1323
    sget-object v1, Lcom/dropbox/core/v2/files/l;->b:Lcom/dropbox/core/v2/files/l;

    goto :goto_1

    .line 1326
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/files/l;->c:Lcom/dropbox/core/v2/files/l;

    :goto_1
    if-nez v0, :cond_4

    .line 1329
    invoke-static {p1}, Lcom/dropbox/core/v2/files/l$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1330
    invoke-static {p1}, Lcom/dropbox/core/v2/files/l$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 1311
    :cond_5
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

    .line 267
    check-cast p1, Lcom/dropbox/core/v2/files/l;

    .line 2272
    sget-object v0, Lcom/dropbox/core/v2/files/l$1;->a:[I

    .line 3125
    iget-object v1, p1, Lcom/dropbox/core/v2/files/l;->d:Lcom/dropbox/core/v2/files/l$b;

    .line 2272
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/l$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 2290
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "retry_error"

    .line 2286
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "non_exportable"

    .line 2282
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2274
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 2275
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/l$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2276
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2277
    sget-object v0, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/l;->a(Lcom/dropbox/core/v2/files/l;)Lcom/dropbox/core/v2/files/ai;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/dropbox/core/v2/files/ai;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2278
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
