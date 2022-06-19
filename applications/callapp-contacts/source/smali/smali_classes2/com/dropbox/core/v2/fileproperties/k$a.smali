.class public final Lcom/dropbox/core/v2/fileproperties/k$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/fileproperties/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 411
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/k$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/k$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/k$a;->a:Lcom/dropbox/core/v2/fileproperties/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 410
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

    .line 1463
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1465
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/k$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1466
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1470
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/k$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1471
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/k$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_8

    const-string v2, "template_not_found"

    .line 1476
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1478
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/fileproperties/k$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1479
    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1480
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/k;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/k;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "restricted_content"

    .line 1482
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1483
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/k;->a:Lcom/dropbox/core/v2/fileproperties/k;

    goto :goto_1

    :cond_2
    const-string v2, "other"

    .line 1485
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1486
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/k;->b:Lcom/dropbox/core/v2/fileproperties/k;

    goto :goto_1

    :cond_3
    const-string v2, "path"

    .line 1488
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1490
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/fileproperties/k$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1491
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/e$a;->a:Lcom/dropbox/core/v2/fileproperties/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/e$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object v1

    .line 1492
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/k;->a(Lcom/dropbox/core/v2/fileproperties/e;)Lcom/dropbox/core/v2/fileproperties/k;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v2, "unsupported_folder"

    .line 1494
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1495
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/k;->c:Lcom/dropbox/core/v2/fileproperties/k;

    goto :goto_1

    :cond_5
    const-string v2, "property_group_lookup"

    .line 1497
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1499
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/fileproperties/k$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1500
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/d$a;->a:Lcom/dropbox/core/v2/fileproperties/d$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/d$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/d;

    move-result-object v1

    .line 1501
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/k;->a(Lcom/dropbox/core/v2/fileproperties/d;)Lcom/dropbox/core/v2/fileproperties/k;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_6

    .line 1507
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/k$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1508
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/k$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 1504
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1474
    :cond_8
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

    .line 410
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/k;

    .line 2415
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/k$1;->a:[I

    .line 3158
    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/k;->d:Lcom/dropbox/core/v2/fileproperties/k$b;

    .line 2415
    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/k$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2453
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4158
    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/k;->d:Lcom/dropbox/core/v2/fileproperties/k$b;

    .line 2453
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2445
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "property_group_lookup"

    .line 2446
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/k$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2447
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2448
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/d$a;->a:Lcom/dropbox/core/v2/fileproperties/d$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/k;->c(Lcom/dropbox/core/v2/fileproperties/k;)Lcom/dropbox/core/v2/fileproperties/d;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/fileproperties/d$a;->a(Lcom/dropbox/core/v2/fileproperties/d;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2449
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_1
    const-string p1, "unsupported_folder"

    .line 2441
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2433
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 2434
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/k$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2435
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2436
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$a;->a:Lcom/dropbox/core/v2/fileproperties/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/k;->b(Lcom/dropbox/core/v2/fileproperties/k;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/e$a;->a(Lcom/dropbox/core/v2/fileproperties/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2437
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_3
    const-string p1, "other"

    .line 2429
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "restricted_content"

    .line 2425
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2417
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "template_not_found"

    .line 2418
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/k$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2419
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 2420
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/k;->a(Lcom/dropbox/core/v2/fileproperties/k;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2421
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
