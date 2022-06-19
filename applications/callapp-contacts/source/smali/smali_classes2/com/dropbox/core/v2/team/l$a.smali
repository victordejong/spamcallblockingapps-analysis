.class final Lcom/dropbox/core/v2/team/l$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/team/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 397
    new-instance v0, Lcom/dropbox/core/v2/team/l$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/l$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/l$a;->a:Lcom/dropbox/core/v2/team/l$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 396
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

    .line 1449
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1451
    invoke-static {p1}, Lcom/dropbox/core/v2/team/l$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1452
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1456
    invoke-static {p1}, Lcom/dropbox/core/v2/team/l$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1457
    invoke-static {p1}, Lcom/dropbox/core/v2/team/l$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_9

    const-string v2, "group_not_found"

    .line 1462
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1463
    sget-object v1, Lcom/dropbox/core/v2/team/l;->a:Lcom/dropbox/core/v2/team/l;

    goto :goto_1

    :cond_1
    const-string v2, "other"

    .line 1465
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1466
    sget-object v1, Lcom/dropbox/core/v2/team/l;->b:Lcom/dropbox/core/v2/team/l;

    goto :goto_1

    :cond_2
    const-string v2, "system_managed_group_disallowed"

    .line 1468
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1469
    sget-object v1, Lcom/dropbox/core/v2/team/l;->c:Lcom/dropbox/core/v2/team/l;

    goto :goto_1

    :cond_3
    const-string v2, "member_not_in_group"

    .line 1471
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1472
    sget-object v1, Lcom/dropbox/core/v2/team/l;->d:Lcom/dropbox/core/v2/team/l;

    goto :goto_1

    :cond_4
    const-string v2, "group_not_in_team"

    .line 1474
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1475
    sget-object v1, Lcom/dropbox/core/v2/team/l;->e:Lcom/dropbox/core/v2/team/l;

    goto :goto_1

    :cond_5
    const-string v2, "members_not_in_team"

    .line 1477
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1479
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/l$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1480
    invoke-static {v1}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1481
    invoke-static {v1}, Lcom/dropbox/core/v2/team/l;->a(Ljava/util/List;)Lcom/dropbox/core/v2/team/l;

    move-result-object v1

    goto :goto_1

    :cond_6
    const-string v2, "users_not_found"

    .line 1483
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1485
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/l$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1486
    invoke-static {v1}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1487
    invoke-static {v1}, Lcom/dropbox/core/v2/team/l;->b(Ljava/util/List;)Lcom/dropbox/core/v2/team/l;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_7

    .line 1493
    invoke-static {p1}, Lcom/dropbox/core/v2/team/l$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1494
    invoke-static {p1}, Lcom/dropbox/core/v2/team/l$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_7
    return-object v1

    .line 1490
    :cond_8
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1460
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

    .line 396
    check-cast p1, Lcom/dropbox/core/v2/team/l;

    .line 3401
    sget-object v0, Lcom/dropbox/core/v2/team/l$1;->a:[I

    .line 4160
    iget-object v1, p1, Lcom/dropbox/core/v2/team/l;->f:Lcom/dropbox/core/v2/team/l$b;

    .line 3401
    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/l$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3439
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6160
    iget-object p1, p1, Lcom/dropbox/core/v2/team/l;->f:Lcom/dropbox/core/v2/team/l$b;

    .line 3439
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3431
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "users_not_found"

    .line 3432
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/l$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3433
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 6052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 3434
    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/l;->b(Lcom/dropbox/core/v2/team/l;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3435
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 3423
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "members_not_in_team"

    .line 3424
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/l$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3425
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 5052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 3426
    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/l;->a(Lcom/dropbox/core/v2/team/l;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3427
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :pswitch_2
    const-string p1, "group_not_in_team"

    .line 3419
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p1, "member_not_in_group"

    .line 3415
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p1, "system_managed_group_disallowed"

    .line 3411
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p1, "other"

    .line 3407
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p1, "group_not_found"

    .line 3403
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

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
