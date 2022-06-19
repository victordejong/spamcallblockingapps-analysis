.class final Lcom/dropbox/core/v2/sharing/k$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 391
    new-instance v0, Lcom/dropbox/core/v2/sharing/k$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/k$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/k$a;->a:Lcom/dropbox/core/v2/sharing/k$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 390
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

    .line 1439
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1441
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/k$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1446
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/k$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1447
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/k$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "path"

    .line 1452
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1454
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/k$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1455
    sget-object v1, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v1

    .line 1456
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/k;->a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/sharing/k;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "email_not_verified"

    .line 1458
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1459
    sget-object v1, Lcom/dropbox/core/v2/sharing/k;->a:Lcom/dropbox/core/v2/sharing/k;

    goto :goto_1

    :cond_2
    const-string v2, "shared_link_already_exists"

    .line 1461
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    .line 1463
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_3

    .line 1464
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/k$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1465
    sget-object v1, Lcom/dropbox/core/v2/sharing/bh$a;->a:Lcom/dropbox/core/v2/sharing/bh$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/bh;

    :cond_3
    if-nez v1, :cond_4

    .line 1468
    invoke-static {}, Lcom/dropbox/core/v2/sharing/k;->a()Lcom/dropbox/core/v2/sharing/k;

    move-result-object v1

    goto :goto_1

    .line 1471
    :cond_4
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/k;->a(Lcom/dropbox/core/v2/sharing/bh;)Lcom/dropbox/core/v2/sharing/k;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v2, "settings_error"

    .line 1474
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1476
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/k$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1477
    sget-object v1, Lcom/dropbox/core/v2/sharing/bl$a;->a:Lcom/dropbox/core/v2/sharing/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bl$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bl;

    move-result-object v1

    .line 1478
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/k;->a(Lcom/dropbox/core/v2/sharing/bl;)Lcom/dropbox/core/v2/sharing/k;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v2, "access_denied"

    .line 1480
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1481
    sget-object v1, Lcom/dropbox/core/v2/sharing/k;->b:Lcom/dropbox/core/v2/sharing/k;

    :goto_1
    if-nez v0, :cond_7

    .line 1487
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/k$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1488
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/k$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 1484
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1450
    :cond_9
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

    .line 390
    check-cast p1, Lcom/dropbox/core/v2/sharing/k;

    .line 2395
    sget-object v0, Lcom/dropbox/core/v2/sharing/k$1;->a:[I

    .line 3142
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/k;->c:Lcom/dropbox/core/v2/sharing/k$b;

    .line 2395
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/k$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string p1, "access_denied"

    .line 2425
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2429
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4142
    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/k;->c:Lcom/dropbox/core/v2/sharing/k$b;

    .line 2429
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2417
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "settings_error"

    .line 2418
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/k$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2419
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2420
    sget-object v0, Lcom/dropbox/core/v2/sharing/bl$a;->a:Lcom/dropbox/core/v2/sharing/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/k;->c(Lcom/dropbox/core/v2/sharing/k;)Lcom/dropbox/core/v2/sharing/bl;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bl$a;->a(Lcom/dropbox/core/v2/sharing/bl;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2421
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2409
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "shared_link_already_exists"

    .line 2410
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/k$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2411
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2412
    sget-object v0, Lcom/dropbox/core/v2/sharing/bh$a;->a:Lcom/dropbox/core/v2/sharing/bh$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/k;->b(Lcom/dropbox/core/v2/sharing/k;)Lcom/dropbox/core/v2/sharing/bh;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2413
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :cond_3
    const-string p1, "email_not_verified"

    .line 2405
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2397
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 2398
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/k$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2399
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2400
    sget-object v0, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/k;->a(Lcom/dropbox/core/v2/sharing/k;)Lcom/dropbox/core/v2/files/ai;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/dropbox/core/v2/files/ai;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2401
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
