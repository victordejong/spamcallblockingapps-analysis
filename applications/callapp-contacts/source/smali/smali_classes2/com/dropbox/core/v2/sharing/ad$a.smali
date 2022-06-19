.class final Lcom/dropbox/core/v2/sharing/ad$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ad$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 296
    new-instance v0, Lcom/dropbox/core/v2/sharing/ad$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ad$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ad$a;->a:Lcom/dropbox/core/v2/sharing/ad$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 295
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

    .line 1328
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1330
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ad$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1331
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1335
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ad$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1336
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ad$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "user_error"

    .line 1341
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1343
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/ad$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1344
    sget-object v1, Lcom/dropbox/core/v2/sharing/bn$a;->a:Lcom/dropbox/core/v2/sharing/bn$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bn$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bn;

    move-result-object v1

    .line 1345
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ad;->a(Lcom/dropbox/core/v2/sharing/bn;)Lcom/dropbox/core/v2/sharing/ad;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "access_error"

    .line 1347
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1349
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/ad$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1350
    sget-object v1, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bm;

    move-result-object v1

    .line 1351
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ad;->a(Lcom/dropbox/core/v2/sharing/bm;)Lcom/dropbox/core/v2/sharing/ad;

    move-result-object v1

    goto :goto_1

    .line 1354
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/sharing/ad;->a:Lcom/dropbox/core/v2/sharing/ad;

    :goto_1
    if-nez v0, :cond_3

    .line 1357
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ad$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1358
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ad$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 1339
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

    .line 295
    check-cast p1, Lcom/dropbox/core/v2/sharing/ad;

    .line 2300
    sget-object v0, Lcom/dropbox/core/v2/sharing/ad$1;->a:[I

    .line 3129
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ad;->b:Lcom/dropbox/core/v2/sharing/ad$b;

    .line 2300
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ad$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p1, "other"

    .line 2318
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2310
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2311
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ad$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2312
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2313
    sget-object v0, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ad;->b(Lcom/dropbox/core/v2/sharing/ad;)Lcom/dropbox/core/v2/sharing/bm;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/dropbox/core/v2/sharing/bm;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2314
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2302
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "user_error"

    .line 2303
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ad$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2304
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2305
    sget-object v0, Lcom/dropbox/core/v2/sharing/bn$a;->a:Lcom/dropbox/core/v2/sharing/bn$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ad;->a(Lcom/dropbox/core/v2/sharing/ad;)Lcom/dropbox/core/v2/sharing/bn;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bn$a;->a(Lcom/dropbox/core/v2/sharing/bn;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2306
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
