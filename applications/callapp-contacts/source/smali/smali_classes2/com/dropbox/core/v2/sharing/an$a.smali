.class final Lcom/dropbox/core/v2/sharing/an$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/an;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/an$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 390
    new-instance v0, Lcom/dropbox/core/v2/sharing/an$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/an$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/an$a;->a:Lcom/dropbox/core/v2/sharing/an$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 389
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

    .line 1437
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1439
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/an$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1444
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/an$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1445
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/an$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_8

    const-string v3, "access_error"

    .line 1450
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1452
    invoke-static {v3, p1}, Lcom/dropbox/core/v2/sharing/an$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1453
    sget-object v0, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object v0

    .line 1454
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/an;->a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/an;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "inside_shared_folder"

    .line 1456
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1457
    sget-object v0, Lcom/dropbox/core/v2/sharing/an;->a:Lcom/dropbox/core/v2/sharing/an;

    goto :goto_1

    :cond_2
    const-string v3, "insufficient_quota"

    .line 1459
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1461
    sget-object v0, Lcom/dropbox/core/v2/sharing/w$a;->a:Lcom/dropbox/core/v2/sharing/w$a;

    invoke-static {p1, v2}, Lcom/dropbox/core/v2/sharing/w$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/w;

    move-result-object v0

    .line 1462
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/an;->a(Lcom/dropbox/core/v2/sharing/w;)Lcom/dropbox/core/v2/sharing/an;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v2, "already_mounted"

    .line 1464
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1465
    sget-object v0, Lcom/dropbox/core/v2/sharing/an;->b:Lcom/dropbox/core/v2/sharing/an;

    goto :goto_1

    :cond_4
    const-string v2, "no_permission"

    .line 1467
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1468
    sget-object v0, Lcom/dropbox/core/v2/sharing/an;->c:Lcom/dropbox/core/v2/sharing/an;

    goto :goto_1

    :cond_5
    const-string v2, "not_mountable"

    .line 1470
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1471
    sget-object v0, Lcom/dropbox/core/v2/sharing/an;->d:Lcom/dropbox/core/v2/sharing/an;

    goto :goto_1

    .line 1474
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/sharing/an;->e:Lcom/dropbox/core/v2/sharing/an;

    :goto_1
    if-nez v1, :cond_7

    .line 1477
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/an$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1478
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/an$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v0

    .line 1448
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

    .line 389
    check-cast p1, Lcom/dropbox/core/v2/sharing/an;

    .line 2394
    sget-object v0, Lcom/dropbox/core/v2/sharing/an$1;->a:[I

    .line 3167
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/an;->f:Lcom/dropbox/core/v2/sharing/an$b;

    .line 2394
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/an$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 2427
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "not_mountable"

    .line 2423
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "no_permission"

    .line 2419
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "already_mounted"

    .line 2415
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2408
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "insufficient_quota"

    .line 2409
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/an$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2410
    sget-object v0, Lcom/dropbox/core/v2/sharing/w$a;->a:Lcom/dropbox/core/v2/sharing/w$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/an;->b(Lcom/dropbox/core/v2/sharing/an;)Lcom/dropbox/core/v2/sharing/w;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/dropbox/core/v2/sharing/w$a;->a(Lcom/dropbox/core/v2/sharing/w;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 2411
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_4
    const-string p1, "inside_shared_folder"

    .line 2404
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2396
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2397
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/an$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2398
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2399
    sget-object v0, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/an;->a(Lcom/dropbox/core/v2/sharing/an;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/dropbox/core/v2/sharing/bc;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2400
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
