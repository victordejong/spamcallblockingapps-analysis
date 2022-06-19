.class final Lcom/dropbox/core/v2/sharing/as$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/as;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/as$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 383
    new-instance v0, Lcom/dropbox/core/v2/sharing/as$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/as$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/as$a;->a:Lcom/dropbox/core/v2/sharing/as$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1422
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1424
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/as$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1429
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/as$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1430
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/as$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const-string v3, "user_error"

    .line 1435
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1437
    invoke-static {v3, p1}, Lcom/dropbox/core/v2/sharing/as$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1438
    sget-object v0, Lcom/dropbox/core/v2/sharing/bn$a;->a:Lcom/dropbox/core/v2/sharing/bn$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bn$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bn;

    move-result-object v0

    .line 1439
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/as;->a(Lcom/dropbox/core/v2/sharing/bn;)Lcom/dropbox/core/v2/sharing/as;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "access_error"

    .line 1441
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1443
    invoke-static {v3, p1}, Lcom/dropbox/core/v2/sharing/as$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1444
    sget-object v0, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bm;

    move-result-object v0

    .line 1445
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/as;->a(Lcom/dropbox/core/v2/sharing/bm;)Lcom/dropbox/core/v2/sharing/as;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v3, "no_explicit_access"

    .line 1447
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1449
    sget-object v0, Lcom/dropbox/core/v2/sharing/ai$a;->a:Lcom/dropbox/core/v2/sharing/ai$a;

    invoke-static {p1, v2}, Lcom/dropbox/core/v2/sharing/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ai;

    move-result-object v0

    .line 1450
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/as;->a(Lcom/dropbox/core/v2/sharing/ai;)Lcom/dropbox/core/v2/sharing/as;

    move-result-object v0

    goto :goto_1

    .line 1453
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/sharing/as;->a:Lcom/dropbox/core/v2/sharing/as;

    :goto_1
    if-nez v1, :cond_4

    .line 1456
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/as$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1457
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/as$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v0

    .line 1433
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 382
    check-cast p1, Lcom/dropbox/core/v2/sharing/as;

    .line 2387
    sget-object v0, Lcom/dropbox/core/v2/sharing/as$1;->a:[I

    .line 3160
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/as;->b:Lcom/dropbox/core/v2/sharing/as$b;

    .line 2387
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/as$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p1, "other"

    .line 2412
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2405
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_explicit_access"

    .line 2406
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/as$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2407
    sget-object v0, Lcom/dropbox/core/v2/sharing/ai$a;->a:Lcom/dropbox/core/v2/sharing/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/as;->c(Lcom/dropbox/core/v2/sharing/as;)Lcom/dropbox/core/v2/sharing/ai;

    move-result-object p1

    invoke-static {p1, p2, v1}, Lcom/dropbox/core/v2/sharing/ai$a;->a(Lcom/dropbox/core/v2/sharing/ai;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 2408
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2397
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2398
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/as$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2399
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2400
    sget-object v0, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/as;->b(Lcom/dropbox/core/v2/sharing/as;)Lcom/dropbox/core/v2/sharing/bm;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/dropbox/core/v2/sharing/bm;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2401
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2389
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "user_error"

    .line 2390
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/as$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2391
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2392
    sget-object v0, Lcom/dropbox/core/v2/sharing/bn$a;->a:Lcom/dropbox/core/v2/sharing/bn$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/as;->a(Lcom/dropbox/core/v2/sharing/as;)Lcom/dropbox/core/v2/sharing/bn;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bn$a;->a(Lcom/dropbox/core/v2/sharing/bn;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2393
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
