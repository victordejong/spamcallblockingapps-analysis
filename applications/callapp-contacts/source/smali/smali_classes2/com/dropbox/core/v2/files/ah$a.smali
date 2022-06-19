.class final Lcom/dropbox/core/v2/files/ah$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/ah;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ah$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 438
    new-instance v0, Lcom/dropbox/core/v2/files/ah$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ah$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ah$a;->a:Lcom/dropbox/core/v2/files/ah$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 437
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

    .line 1493
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1495
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ah$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1500
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ah$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1501
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ah$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_a

    const-string v3, "path_lookup"

    .line 1506
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1508
    invoke-static {v3, p1}, Lcom/dropbox/core/v2/files/ah$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1509
    sget-object v0, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v0

    .line 1510
    invoke-static {v0}, Lcom/dropbox/core/v2/files/ah;->a(Lcom/dropbox/core/v2/files/ai;)Lcom/dropbox/core/v2/files/ah;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "too_many_write_operations"

    .line 1512
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1513
    sget-object v0, Lcom/dropbox/core/v2/files/ah;->a:Lcom/dropbox/core/v2/files/ah;

    goto :goto_1

    :cond_2
    const-string v3, "too_many_files"

    .line 1515
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1516
    sget-object v0, Lcom/dropbox/core/v2/files/ah;->b:Lcom/dropbox/core/v2/files/ah;

    goto :goto_1

    :cond_3
    const-string v3, "no_write_permission"

    .line 1518
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1519
    sget-object v0, Lcom/dropbox/core/v2/files/ah;->c:Lcom/dropbox/core/v2/files/ah;

    goto :goto_1

    :cond_4
    const-string v3, "cannot_be_locked"

    .line 1521
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1522
    sget-object v0, Lcom/dropbox/core/v2/files/ah;->d:Lcom/dropbox/core/v2/files/ah;

    goto :goto_1

    :cond_5
    const-string v3, "file_not_shared"

    .line 1524
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1525
    sget-object v0, Lcom/dropbox/core/v2/files/ah;->e:Lcom/dropbox/core/v2/files/ah;

    goto :goto_1

    :cond_6
    const-string v3, "lock_conflict"

    .line 1527
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1529
    sget-object v0, Lcom/dropbox/core/v2/files/ag$a;->a:Lcom/dropbox/core/v2/files/ag$a;

    invoke-static {p1, v2}, Lcom/dropbox/core/v2/files/ag$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ag;

    move-result-object v0

    .line 1530
    invoke-static {v0}, Lcom/dropbox/core/v2/files/ah;->a(Lcom/dropbox/core/v2/files/ag;)Lcom/dropbox/core/v2/files/ah;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v2, "internal_error"

    .line 1532
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1533
    sget-object v0, Lcom/dropbox/core/v2/files/ah;->f:Lcom/dropbox/core/v2/files/ah;

    goto :goto_1

    .line 1536
    :cond_8
    sget-object v0, Lcom/dropbox/core/v2/files/ah;->g:Lcom/dropbox/core/v2/files/ah;

    :goto_1
    if-nez v1, :cond_9

    .line 1539
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ah$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1540
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ah$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_9
    return-object v0

    .line 1504
    :cond_a
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

    .line 437
    check-cast p1, Lcom/dropbox/core/v2/files/ah;

    .line 2442
    sget-object v0, Lcom/dropbox/core/v2/files/ah$1;->a:[I

    .line 3189
    iget-object v1, p1, Lcom/dropbox/core/v2/files/ah;->h:Lcom/dropbox/core/v2/files/ah$b;

    .line 2442
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ah$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 2483
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "internal_error"

    .line 2479
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2472
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "lock_conflict"

    .line 2473
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ah$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2474
    sget-object v0, Lcom/dropbox/core/v2/files/ag$a;->a:Lcom/dropbox/core/v2/files/ag$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ah;->b(Lcom/dropbox/core/v2/files/ah;)Lcom/dropbox/core/v2/files/ag;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/dropbox/core/v2/files/ag$a;->a(Lcom/dropbox/core/v2/files/ag;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 2475
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_2
    const-string p1, "file_not_shared"

    .line 2468
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "cannot_be_locked"

    .line 2464
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "no_write_permission"

    .line 2460
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "too_many_files"

    .line 2456
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p1, "too_many_write_operations"

    .line 2452
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2444
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path_lookup"

    .line 2445
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ah$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2446
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2447
    sget-object v0, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ah;->a(Lcom/dropbox/core/v2/files/ah;)Lcom/dropbox/core/v2/files/ai;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/dropbox/core/v2/files/ai;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2448
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
