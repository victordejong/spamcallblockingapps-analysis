.class final Lcom/dropbox/core/v2/files/x$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/x$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 269
    new-instance v0, Lcom/dropbox/core/v2/files/x$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/x$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/x$a;->a:Lcom/dropbox/core/v2/files/x$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 268
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

    .line 1301
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1303
    invoke-static {p1}, Lcom/dropbox/core/v2/files/x$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1304
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1308
    invoke-static {p1}, Lcom/dropbox/core/v2/files/x$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1309
    invoke-static {p1}, Lcom/dropbox/core/v2/files/x$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "path"

    .line 1314
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1316
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/x$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1317
    sget-object v1, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v1

    .line 1318
    invoke-static {v1}, Lcom/dropbox/core/v2/files/x;->a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/x;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "email_not_verified"

    .line 1320
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1321
    sget-object v1, Lcom/dropbox/core/v2/files/x;->a:Lcom/dropbox/core/v2/files/x;

    goto :goto_1

    :cond_2
    const-string v2, "unsupported_file"

    .line 1323
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1324
    sget-object v1, Lcom/dropbox/core/v2/files/x;->b:Lcom/dropbox/core/v2/files/x;

    goto :goto_1

    .line 1327
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/files/x;->c:Lcom/dropbox/core/v2/files/x;

    :goto_1
    if-nez v0, :cond_4

    .line 1330
    invoke-static {p1}, Lcom/dropbox/core/v2/files/x$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1331
    invoke-static {p1}, Lcom/dropbox/core/v2/files/x$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 1312
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

    .line 268
    check-cast p1, Lcom/dropbox/core/v2/files/x;

    .line 2273
    sget-object v0, Lcom/dropbox/core/v2/files/x$1;->a:[I

    .line 3126
    iget-object v1, p1, Lcom/dropbox/core/v2/files/x;->d:Lcom/dropbox/core/v2/files/x$b;

    .line 2273
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/x$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 2291
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "unsupported_file"

    .line 2287
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "email_not_verified"

    .line 2283
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2275
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 2276
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/x$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2277
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2278
    sget-object v0, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/x;->a(Lcom/dropbox/core/v2/files/x;)Lcom/dropbox/core/v2/files/ai;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/dropbox/core/v2/files/ai;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2279
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
