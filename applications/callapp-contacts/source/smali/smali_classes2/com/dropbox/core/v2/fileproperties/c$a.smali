.class public final Lcom/dropbox/core/v2/fileproperties/c$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/fileproperties/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 411
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/c$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/c$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/c$a;->a:Lcom/dropbox/core/v2/fileproperties/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 410
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 469
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/c$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 474
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/c$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 475
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/c$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_a

    const-string v2, "template_not_found"

    .line 480
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 482
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/fileproperties/c$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 483
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 484
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/c;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "restricted_content"

    .line 486
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 487
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/c;->a:Lcom/dropbox/core/v2/fileproperties/c;

    goto :goto_1

    :cond_2
    const-string v2, "other"

    .line 489
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 490
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/c;->b:Lcom/dropbox/core/v2/fileproperties/c;

    goto :goto_1

    :cond_3
    const-string v2, "path"

    .line 492
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 494
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/fileproperties/c$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 495
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/e$a;->a:Lcom/dropbox/core/v2/fileproperties/e$a;

    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/e$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object v1

    .line 496
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/c;->a(Lcom/dropbox/core/v2/fileproperties/e;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v2, "unsupported_folder"

    .line 498
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 499
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/c;->c:Lcom/dropbox/core/v2/fileproperties/c;

    goto :goto_1

    :cond_5
    const-string v2, "property_field_too_large"

    .line 501
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 502
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/c;->d:Lcom/dropbox/core/v2/fileproperties/c;

    goto :goto_1

    :cond_6
    const-string v2, "does_not_fit_template"

    .line 504
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 505
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/c;->e:Lcom/dropbox/core/v2/fileproperties/c;

    goto :goto_1

    :cond_7
    const-string v2, "duplicate_property_groups"

    .line 507
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 508
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/c;->f:Lcom/dropbox/core/v2/fileproperties/c;

    :goto_1
    if-nez v0, :cond_8

    .line 514
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/c$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 515
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/c$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object v1

    .line 511
    :cond_9
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_a
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/fileproperties/c;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 415
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$1;->a:[I

    .line 1169
    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/c;->g:Lcom/dropbox/core/v2/fileproperties/c$b;

    .line 415
    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/c$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 457
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2169
    iget-object p1, p1, Lcom/dropbox/core/v2/fileproperties/c;->g:Lcom/dropbox/core/v2/fileproperties/c$b;

    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const-string p1, "duplicate_property_groups"

    .line 453
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "does_not_fit_template"

    .line 449
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "property_field_too_large"

    .line 445
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "unsupported_folder"

    .line 441
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 433
    :pswitch_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 434
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/c$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 435
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 436
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$a;->a:Lcom/dropbox/core/v2/fileproperties/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/c;->b(Lcom/dropbox/core/v2/fileproperties/c;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/e$a;->a(Lcom/dropbox/core/v2/fileproperties/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 437
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_5
    const-string p1, "other"

    .line 429
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p1, "restricted_content"

    .line 425
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 417
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "template_not_found"

    .line 418
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/c$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 419
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 420
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/c;->a(Lcom/dropbox/core/v2/fileproperties/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 421
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 410
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/c$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 410
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/c;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/c$a;->a(Lcom/dropbox/core/v2/fileproperties/c;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
