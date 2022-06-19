.class final Lcom/dropbox/core/v2/sharing/at$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/at;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/at$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 401
    new-instance v0, Lcom/dropbox/core/v2/sharing/at$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/at$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/at$a;->a:Lcom/dropbox/core/v2/sharing/at$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 400
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

    .line 1453
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1455
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/at$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1456
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1460
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/at$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1461
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/at$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "access_error"

    .line 1466
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1468
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/at$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1469
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object v1

    .line 1470
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/at;->a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/at;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "member_error"

    .line 1472
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1474
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/at$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1475
    sget-object v1, Lcom/dropbox/core/v2/sharing/bd$a;->a:Lcom/dropbox/core/v2/sharing/bd$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bd$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bd;

    move-result-object v1

    .line 1476
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/at;->a(Lcom/dropbox/core/v2/sharing/bd;)Lcom/dropbox/core/v2/sharing/at;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "folder_owner"

    .line 1478
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1479
    sget-object v1, Lcom/dropbox/core/v2/sharing/at;->a:Lcom/dropbox/core/v2/sharing/at;

    goto :goto_1

    :cond_3
    const-string v2, "group_access"

    .line 1481
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1482
    sget-object v1, Lcom/dropbox/core/v2/sharing/at;->b:Lcom/dropbox/core/v2/sharing/at;

    goto :goto_1

    :cond_4
    const-string v2, "team_folder"

    .line 1484
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1485
    sget-object v1, Lcom/dropbox/core/v2/sharing/at;->c:Lcom/dropbox/core/v2/sharing/at;

    goto :goto_1

    :cond_5
    const-string v2, "no_permission"

    .line 1487
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1488
    sget-object v1, Lcom/dropbox/core/v2/sharing/at;->d:Lcom/dropbox/core/v2/sharing/at;

    goto :goto_1

    :cond_6
    const-string v2, "too_many_files"

    .line 1490
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1491
    sget-object v1, Lcom/dropbox/core/v2/sharing/at;->e:Lcom/dropbox/core/v2/sharing/at;

    goto :goto_1

    .line 1494
    :cond_7
    sget-object v1, Lcom/dropbox/core/v2/sharing/at;->f:Lcom/dropbox/core/v2/sharing/at;

    :goto_1
    if-nez v0, :cond_8

    .line 1497
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/at$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1498
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/at$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_8
    return-object v1

    .line 1464
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

    .line 400
    check-cast p1, Lcom/dropbox/core/v2/sharing/at;

    .line 2405
    sget-object v0, Lcom/dropbox/core/v2/sharing/at$1;->a:[I

    .line 3168
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/at;->g:Lcom/dropbox/core/v2/sharing/at$b;

    .line 2405
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/at$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string p1, "other"

    .line 2443
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string p1, "too_many_files"

    .line 2439
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "no_permission"

    .line 2435
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p1, "team_folder"

    .line 2431
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "group_access"

    .line 2427
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "folder_owner"

    .line 2423
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2415
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "member_error"

    .line 2416
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/at$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2417
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2418
    sget-object v0, Lcom/dropbox/core/v2/sharing/bd$a;->a:Lcom/dropbox/core/v2/sharing/bd$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/at;->b(Lcom/dropbox/core/v2/sharing/at;)Lcom/dropbox/core/v2/sharing/bd;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/bd$a;->a(Lcom/dropbox/core/v2/sharing/bd;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2419
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2407
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2408
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/at$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2409
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2410
    sget-object v0, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/at;->a(Lcom/dropbox/core/v2/sharing/at;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/dropbox/core/v2/sharing/bc;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2411
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
