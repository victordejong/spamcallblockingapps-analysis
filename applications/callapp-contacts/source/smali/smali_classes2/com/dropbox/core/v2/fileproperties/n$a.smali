.class public final Lcom/dropbox/core/v2/fileproperties/n$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/fileproperties/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 478
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/n$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/n$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/n$a;->a:Lcom/dropbox/core/v2/fileproperties/n$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 477
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

    .line 1542
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1544
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/n$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1545
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1549
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/n$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1550
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/n$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_b

    const-string v2, "template_not_found"

    .line 1555
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1557
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/fileproperties/n$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1558
    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1559
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/n;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/n;

    move-result-object v1

    goto/16 :goto_1

    :cond_1
    const-string v2, "restricted_content"

    .line 1561
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1562
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/n;->a:Lcom/dropbox/core/v2/fileproperties/n;

    goto :goto_1

    :cond_2
    const-string v2, "other"

    .line 1564
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1565
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/n;->b:Lcom/dropbox/core/v2/fileproperties/n;

    goto :goto_1

    :cond_3
    const-string v2, "path"

    .line 1567
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1569
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/fileproperties/n$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1570
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/e$a;->a:Lcom/dropbox/core/v2/fileproperties/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/e$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object v1

    .line 1571
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/n;->a(Lcom/dropbox/core/v2/fileproperties/e;)Lcom/dropbox/core/v2/fileproperties/n;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v2, "unsupported_folder"

    .line 1573
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1574
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/n;->c:Lcom/dropbox/core/v2/fileproperties/n;

    goto :goto_1

    :cond_5
    const-string v2, "property_field_too_large"

    .line 1576
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1577
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/n;->d:Lcom/dropbox/core/v2/fileproperties/n;

    goto :goto_1

    :cond_6
    const-string v2, "does_not_fit_template"

    .line 1579
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1580
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/n;->e:Lcom/dropbox/core/v2/fileproperties/n;

    goto :goto_1

    :cond_7
    const-string v2, "duplicate_property_groups"

    .line 1582
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1583
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/n;->f:Lcom/dropbox/core/v2/fileproperties/n;

    goto :goto_1

    :cond_8
    const-string v2, "property_group_lookup"

    .line 1585
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1587
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/fileproperties/n$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1588
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/d$a;->a:Lcom/dropbox/core/v2/fileproperties/d$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/d$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/d;

    move-result-object v1

    .line 1589
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/n;->a(Lcom/dropbox/core/v2/fileproperties/d;)Lcom/dropbox/core/v2/fileproperties/n;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_9

    .line 1595
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/n$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1596
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/n$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_9
    return-object v1

    .line 1592
    :cond_a
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1553
    :cond_b
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

    .line 477
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/n;

    .line 2482
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/n$1;->a:[I

    .line 3186
    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/n;->g:Lcom/dropbox/core/v2/fileproperties/n$b;

    .line 2482
    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/n$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2532
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4186
    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/n;->g:Lcom/dropbox/core/v2/fileproperties/n$b;

    .line 2532
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2524
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "property_group_lookup"

    .line 2525
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/n$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2526
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2527
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/d$a;->a:Lcom/dropbox/core/v2/fileproperties/d$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/n;->c(Lcom/dropbox/core/v2/fileproperties/n;)Lcom/dropbox/core/v2/fileproperties/d;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/fileproperties/d$a;->a(Lcom/dropbox/core/v2/fileproperties/d;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2528
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_1
    const-string p1, "duplicate_property_groups"

    .line 2520
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "does_not_fit_template"

    .line 2516
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "property_field_too_large"

    .line 2512
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "unsupported_folder"

    .line 2508
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2500
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 2501
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/n$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2502
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2503
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$a;->a:Lcom/dropbox/core/v2/fileproperties/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/n;->b(Lcom/dropbox/core/v2/fileproperties/n;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/e$a;->a(Lcom/dropbox/core/v2/fileproperties/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2504
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_6
    const-string p1, "other"

    .line 2496
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_7
    const-string p1, "restricted_content"

    .line 2492
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2484
    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "template_not_found"

    .line 2485
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/n$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2486
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 2487
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/n;->a(Lcom/dropbox/core/v2/fileproperties/n;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2488
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
