.class final Lcom/dropbox/core/v2/sharing/bj$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/sharing/bj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 388
    new-instance v0, Lcom/dropbox/core/v2/sharing/bj$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bj$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bj$a;->a:Lcom/dropbox/core/v2/sharing/bj$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/bj;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 439
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bj$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 440
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bj$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    if-nez v2, :cond_e

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    .line 454
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_a

    .line 455
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "url"

    .line 457
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 458
    invoke-virtual {v0, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "name"

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 461
    invoke-virtual {v0, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "link_permissions"

    .line 463
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 464
    sget-object v0, Lcom/dropbox/core/v2/sharing/ab$a;->a:Lcom/dropbox/core/v2/sharing/ab$a;

    invoke-virtual {v0, p0}, Lcom/dropbox/core/v2/sharing/ab$a;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/dropbox/core/v2/sharing/ab;

    goto :goto_0

    :cond_4
    const-string v1, "id"

    .line 466
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 467
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v1, "expires"

    .line 469
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 470
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Date;

    goto :goto_0

    :cond_6
    const-string v1, "path_lower"

    .line 472
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 473
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v1, "team_member_info"

    .line 475
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 476
    sget-object v0, Lcom/dropbox/core/v2/sharing/bo$a;->a:Lcom/dropbox/core/v2/sharing/bo$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/dropbox/core/v2/sharing/bo;

    goto/16 :goto_0

    :cond_8
    const-string v1, "content_owner_team_info"

    .line 478
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 479
    sget-object v0, Lcom/dropbox/core/v2/users/d$a;->a:Lcom/dropbox/core/v2/users/d$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/dropbox/core/v2/users/d;

    goto/16 :goto_0

    .line 482
    :cond_9
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bj$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    :cond_a
    if-eqz v4, :cond_d

    if-eqz v5, :cond_c

    if-eqz v6, :cond_b

    .line 494
    new-instance v0, Lcom/dropbox/core/v2/sharing/bj;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/dropbox/core/v2/sharing/bj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/ab;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/bo;Lcom/dropbox/core/v2/users/d;)V

    goto :goto_1

    .line 492
    :cond_b
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"link_permissions\" missing."

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1

    .line 489
    :cond_c
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"name\" missing."

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1

    .line 486
    :cond_d
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"url\" missing."

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_e
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 497
    invoke-static {p0, v1}, Lcom/dropbox/core/v2/sharing/bj$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/bj;

    move-result-object v0

    goto :goto_1

    :cond_f
    const-string v0, "file"

    .line 499
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 500
    sget-object v0, Lcom/dropbox/core/v2/sharing/m$a;->a:Lcom/dropbox/core/v2/sharing/m$a;

    invoke-static {p0, v1}, Lcom/dropbox/core/v2/sharing/m$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/m;

    move-result-object v0

    goto :goto_1

    :cond_10
    const-string v0, "folder"

    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 503
    sget-object v0, Lcom/dropbox/core/v2/sharing/p$a;->a:Lcom/dropbox/core/v2/sharing/p$a;

    invoke-static {p0, v1}, Lcom/dropbox/core/v2/sharing/p$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/p;

    move-result-object v0

    :goto_1
    if-nez p1, :cond_11

    .line 509
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bj$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 511
    :cond_11
    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/bj;->a()Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v0

    .line 506
    :cond_12
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No subtype found that matches tag: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 387
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bj$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/bj;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 387
    check-cast p1, Lcom/dropbox/core/v2/sharing/bj;

    .line 4392
    instance-of v0, p1, Lcom/dropbox/core/v2/sharing/m;

    if-eqz v0, :cond_0

    .line 4393
    sget-object v0, Lcom/dropbox/core/v2/sharing/m$a;->a:Lcom/dropbox/core/v2/sharing/m$a;

    check-cast p1, Lcom/dropbox/core/v2/sharing/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/m$a;->a(Lcom/dropbox/core/v2/sharing/m;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 4396
    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/sharing/p;

    if-eqz v0, :cond_1

    .line 4397
    sget-object v0, Lcom/dropbox/core/v2/sharing/p$a;->a:Lcom/dropbox/core/v2/sharing/p$a;

    check-cast p1, Lcom/dropbox/core/v2/sharing/p;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/p$a;->a(Lcom/dropbox/core/v2/sharing/p;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 4401
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_2
    const-string v0, "url"

    .line 4403
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 5052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 4404
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bj;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "name"

    .line 4405
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 6052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 4406
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bj;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "link_permissions"

    .line 4407
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4408
    sget-object v0, Lcom/dropbox/core/v2/sharing/ab$a;->a:Lcom/dropbox/core/v2/sharing/ab$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bj;->j:Lcom/dropbox/core/v2/sharing/ab;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/ab$a;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4409
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/bj;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "id"

    .line 4410
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 7052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 4411
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bj;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4413
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/bj;->h:Ljava/util/Date;

    if-eqz v0, :cond_4

    const-string v0, "expires"

    .line 4414
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 7056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 4415
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bj;->h:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4417
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/bj;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "path_lower"

    .line 4418
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 8052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 4419
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bj;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4421
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/bj;->k:Lcom/dropbox/core/v2/sharing/bo;

    if-eqz v0, :cond_6

    const-string v0, "team_member_info"

    .line 4422
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4423
    sget-object v0, Lcom/dropbox/core/v2/sharing/bo$a;->a:Lcom/dropbox/core/v2/sharing/bo$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bj;->k:Lcom/dropbox/core/v2/sharing/bo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4425
    :cond_6
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/bj;->l:Lcom/dropbox/core/v2/users/d;

    if-eqz v0, :cond_7

    const-string v0, "content_owner_team_info"

    .line 4426
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4427
    sget-object v0, Lcom/dropbox/core/v2/users/d$a;->a:Lcom/dropbox/core/v2/users/d$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bj;->l:Lcom/dropbox/core/v2/users/d;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_7
    if-nez p3, :cond_8

    .line 4430
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_8
    return-void
.end method
