.class final Lcom/dropbox/core/v2/files/be$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/be;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/be$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 436
    new-instance v0, Lcom/dropbox/core/v2/files/be$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/be$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/be$a;->a:Lcom/dropbox/core/v2/files/be$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 435
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

    .line 1484
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1486
    invoke-static {p1}, Lcom/dropbox/core/v2/files/be$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1487
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1491
    invoke-static {p1}, Lcom/dropbox/core/v2/files/be$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1492
    invoke-static {p1}, Lcom/dropbox/core/v2/files/be$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "lookup_failed"

    .line 1497
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1499
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/be$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1500
    sget-object v1, Lcom/dropbox/core/v2/files/bf$a;->a:Lcom/dropbox/core/v2/files/bf$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bf$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bf;

    move-result-object v1

    .line 1501
    invoke-static {v1}, Lcom/dropbox/core/v2/files/be;->a(Lcom/dropbox/core/v2/files/bf;)Lcom/dropbox/core/v2/files/be;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "path"

    .line 1503
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1505
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/be$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1506
    sget-object v1, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v1

    .line 1507
    invoke-static {v1}, Lcom/dropbox/core/v2/files/be;->a(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/be;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "properties_error"

    .line 1509
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1511
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/be$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1512
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/c$a;->a:Lcom/dropbox/core/v2/fileproperties/c$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/c$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object v1

    .line 1513
    invoke-static {v1}, Lcom/dropbox/core/v2/files/be;->a(Lcom/dropbox/core/v2/fileproperties/c;)Lcom/dropbox/core/v2/files/be;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "too_many_shared_folder_targets"

    .line 1515
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1516
    sget-object v1, Lcom/dropbox/core/v2/files/be;->a:Lcom/dropbox/core/v2/files/be;

    goto :goto_1

    :cond_4
    const-string v2, "too_many_write_operations"

    .line 1518
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1519
    sget-object v1, Lcom/dropbox/core/v2/files/be;->b:Lcom/dropbox/core/v2/files/be;

    goto :goto_1

    .line 1522
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/files/be;->c:Lcom/dropbox/core/v2/files/be;

    :goto_1
    if-nez v0, :cond_6

    .line 1525
    invoke-static {p1}, Lcom/dropbox/core/v2/files/be$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1526
    invoke-static {p1}, Lcom/dropbox/core/v2/files/be$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 1495
    :cond_7
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

    .line 435
    check-cast p1, Lcom/dropbox/core/v2/files/be;

    .line 2440
    sget-object v0, Lcom/dropbox/core/v2/files/be$1;->a:[I

    .line 3180
    iget-object v1, p1, Lcom/dropbox/core/v2/files/be;->d:Lcom/dropbox/core/v2/files/be$b;

    .line 2440
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/be$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 2474
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "too_many_write_operations"

    .line 2470
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "too_many_shared_folder_targets"

    .line 2466
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2458
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "properties_error"

    .line 2459
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/be$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2460
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2461
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$a;->a:Lcom/dropbox/core/v2/fileproperties/c$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/be;->c(Lcom/dropbox/core/v2/files/be;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/c$a;->a(Lcom/dropbox/core/v2/fileproperties/c;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2462
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2450
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 2451
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/be$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2452
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2453
    sget-object v0, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/be;->b(Lcom/dropbox/core/v2/files/be;)Lcom/dropbox/core/v2/files/bl;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/dropbox/core/v2/files/bl;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2454
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2442
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "lookup_failed"

    .line 2443
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/be$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2444
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2445
    sget-object v0, Lcom/dropbox/core/v2/files/bf$a;->a:Lcom/dropbox/core/v2/files/bf$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/be;->a(Lcom/dropbox/core/v2/files/be;)Lcom/dropbox/core/v2/files/bf;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/bf$a;->a(Lcom/dropbox/core/v2/files/bf;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2446
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
