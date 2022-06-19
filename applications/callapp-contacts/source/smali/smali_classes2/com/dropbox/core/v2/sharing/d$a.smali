.class final Lcom/dropbox/core/v2/sharing/d$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 342
    new-instance v0, Lcom/dropbox/core/v2/sharing/d$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/d$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/d$a;->a:Lcom/dropbox/core/v2/sharing/d$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 341
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

    .line 1382
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1384
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/d$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1389
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/d$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1390
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/d$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "user_error"

    .line 1395
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1397
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/d$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1398
    sget-object v1, Lcom/dropbox/core/v2/sharing/bn$a;->a:Lcom/dropbox/core/v2/sharing/bn$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bn$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bn;

    move-result-object v1

    .line 1399
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/d;->a(Lcom/dropbox/core/v2/sharing/bn;)Lcom/dropbox/core/v2/sharing/d;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "access_error"

    .line 1401
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1403
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/d$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1404
    sget-object v1, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bm;

    move-result-object v1

    .line 1405
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/d;->a(Lcom/dropbox/core/v2/sharing/bm;)Lcom/dropbox/core/v2/sharing/d;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "rate_limit"

    .line 1407
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1408
    sget-object v1, Lcom/dropbox/core/v2/sharing/d;->a:Lcom/dropbox/core/v2/sharing/d;

    goto :goto_1

    :cond_3
    const-string v2, "invalid_comment"

    .line 1410
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1411
    sget-object v1, Lcom/dropbox/core/v2/sharing/d;->b:Lcom/dropbox/core/v2/sharing/d;

    goto :goto_1

    .line 1414
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/sharing/d;->c:Lcom/dropbox/core/v2/sharing/d;

    :goto_1
    if-nez v0, :cond_5

    .line 1417
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/d$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1418
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/d$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 1393
    :cond_6
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

    .line 341
    check-cast p1, Lcom/dropbox/core/v2/sharing/d;

    .line 2346
    sget-object v0, Lcom/dropbox/core/v2/sharing/d$1;->a:[I

    .line 3149
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/d;->d:Lcom/dropbox/core/v2/sharing/d$b;

    .line 2346
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/d$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 2372
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "invalid_comment"

    .line 2368
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "rate_limit"

    .line 2364
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2356
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2357
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/d$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2358
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2359
    sget-object v0, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/d;->b(Lcom/dropbox/core/v2/sharing/d;)Lcom/dropbox/core/v2/sharing/bm;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/dropbox/core/v2/sharing/bm;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2360
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2348
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "user_error"

    .line 2349
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/d$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2350
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2351
    sget-object v0, Lcom/dropbox/core/v2/sharing/bn$a;->a:Lcom/dropbox/core/v2/sharing/bn$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/d;->a(Lcom/dropbox/core/v2/sharing/d;)Lcom/dropbox/core/v2/sharing/bn;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bn$a;->a(Lcom/dropbox/core/v2/sharing/bn;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2352
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
