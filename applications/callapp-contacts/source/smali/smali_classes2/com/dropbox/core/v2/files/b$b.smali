.class final Lcom/dropbox/core/v2/files/b$b;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/files/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 441
    new-instance v0, Lcom/dropbox/core/v2/files/b$b;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/b$b;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/b$b;->a:Lcom/dropbox/core/v2/files/b$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1476
    invoke-static {p1}, Lcom/dropbox/core/v2/files/b$b;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1477
    invoke-static {p1}, Lcom/dropbox/core/v2/files/b$b;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_b

    .line 1481
    sget-object v1, Lcom/dropbox/core/v2/files/bm;->a:Lcom/dropbox/core/v2/files/bm;

    .line 1482
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1484
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1486
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v6, v0

    move-object v9, v6

    move-object v11, v9

    move-object v7, v1

    .line 1487
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_8

    .line 1488
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1489
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, "path"

    .line 1490
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1491
    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "mode"

    .line 1493
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1494
    sget-object v0, Lcom/dropbox/core/v2/files/bm$a;->a:Lcom/dropbox/core/v2/files/bm$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bm$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bm;

    move-result-object v7

    goto :goto_1

    :cond_2
    const-string v1, "autorename"

    .line 1496
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 1497
    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    const-string v1, "client_modified"

    .line 1499
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 1500
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Date;

    goto :goto_1

    :cond_4
    const-string v1, "mute"

    .line 1502
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 1503
    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    const-string v1, "property_groups"

    .line 1505
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1506
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/j$a;->a:Lcom/dropbox/core/v2/fileproperties/j$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    goto/16 :goto_1

    :cond_6
    const-string v1, "strict_conflict"

    .line 1508
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 1509
    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1512
    :cond_7
    invoke-static {p1}, Lcom/dropbox/core/v2/files/b$b;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v6, :cond_a

    .line 1518
    new-instance v0, Lcom/dropbox/core/v2/files/b;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/dropbox/core/v2/files/b;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/bm;ZLjava/util/Date;ZLjava/util/List;Z)V

    if-nez p2, :cond_9

    .line 1524
    invoke-static {p1}, Lcom/dropbox/core/v2/files/b$b;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 5434
    :cond_9
    sget-object p1, Lcom/dropbox/core/v2/files/b$b;->a:Lcom/dropbox/core/v2/files/b$b;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/dropbox/core/v2/files/b$b;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    .line 1526
    invoke-static {v0}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v0

    .line 1516
    :cond_a
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"path\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1521
    :cond_b
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No subtype found that matches tag: \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 440
    check-cast p1, Lcom/dropbox/core/v2/files/b;

    if-nez p3, :cond_0

    .line 5446
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "path"

    .line 5448
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 6052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 5449
    iget-object v1, p1, Lcom/dropbox/core/v2/files/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "mode"

    .line 5450
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 5451
    sget-object v0, Lcom/dropbox/core/v2/files/bm$a;->a:Lcom/dropbox/core/v2/files/bm$a;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/b;->b:Lcom/dropbox/core/v2/files/bm;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/bm$a;->a(Lcom/dropbox/core/v2/files/bm;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "autorename"

    .line 5452
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 7044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 5453
    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/b;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 5454
    iget-object v0, p1, Lcom/dropbox/core/v2/files/b;->d:Ljava/util/Date;

    if-eqz v0, :cond_1

    const-string v0, "client_modified"

    .line 5455
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 7056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 5456
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/b;->d:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_1
    const-string v0, "mute"

    .line 5458
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 8044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 5459
    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/b;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 5460
    iget-object v0, p1, Lcom/dropbox/core/v2/files/b;->f:Ljava/util/List;

    if-eqz v0, :cond_2

    const-string v0, "property_groups"

    .line 5461
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 5462
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/j$a;->a:Lcom/dropbox/core/v2/fileproperties/j$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/b;->f:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_2
    const-string v0, "strict_conflict"

    .line 5464
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 9044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 5465
    iget-boolean p1, p1, Lcom/dropbox/core/v2/files/b;->g:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p3, :cond_3

    .line 5467
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_3
    return-void
.end method
