.class final Lcom/dropbox/core/v2/sharing/bb$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/sharing/bb;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bb$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 359
    new-instance v0, Lcom/dropbox/core/v2/sharing/bb$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bb$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bb$a;->a:Lcom/dropbox/core/v2/sharing/bb$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 358
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1396
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bb$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1397
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bb$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_e

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    .line 1407
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_8

    .line 1408
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 1409
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "audience_options"

    .line 1410
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1411
    sget-object v1, Lcom/dropbox/core/v2/sharing/z$a;->a:Lcom/dropbox/core/v2/sharing/z$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    goto :goto_1

    :cond_1
    const-string v2, "current_audience"

    .line 1413
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1414
    sget-object v1, Lcom/dropbox/core/v2/sharing/z$a;->a:Lcom/dropbox/core/v2/sharing/z$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/z$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/z;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v2, "link_permissions"

    .line 1416
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1417
    sget-object v1, Lcom/dropbox/core/v2/sharing/aa$a;->a:Lcom/dropbox/core/v2/sharing/aa$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    goto :goto_1

    :cond_3
    const-string v2, "password_protected"

    .line 1419
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 1420
    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    const-string v2, "access_level"

    .line 1422
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1423
    sget-object v1, Lcom/dropbox/core/v2/sharing/b$a;->a:Lcom/dropbox/core/v2/sharing/b$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/dropbox/core/v2/sharing/b;

    goto :goto_1

    :cond_5
    const-string v2, "audience_restricting_shared_folder"

    .line 1425
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1426
    sget-object v1, Lcom/dropbox/core/v2/sharing/i$a;->a:Lcom/dropbox/core/v2/sharing/i$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/dropbox/core/v2/sharing/i;

    goto/16 :goto_1

    :cond_6
    const-string v2, "expiry"

    .line 1428
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2056
    sget-object v1, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 1429
    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/util/Date;

    goto/16 :goto_1

    .line 1432
    :cond_7
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bb$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_1

    :cond_8
    if-eqz v3, :cond_d

    if-eqz v4, :cond_c

    if-eqz v5, :cond_b

    if-eqz v0, :cond_a

    .line 1447
    new-instance v1, Lcom/dropbox/core/v2/sharing/bb;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/dropbox/core/v2/sharing/bb;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/z;Ljava/util/List;ZLcom/dropbox/core/v2/sharing/b;Lcom/dropbox/core/v2/sharing/i;Ljava/util/Date;)V

    if-nez p2, :cond_9

    .line 1453
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bb$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1455
    :cond_9
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/bb;->a()Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v1

    .line 1445
    :cond_a
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"password_protected\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1442
    :cond_b
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"link_permissions\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1439
    :cond_c
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"current_audience\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1436
    :cond_d
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"audience_options\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1450
    :cond_e
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

    .line 358
    check-cast p1, Lcom/dropbox/core/v2/sharing/bb;

    if-nez p3, :cond_0

    .line 2364
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "audience_options"

    .line 2366
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2367
    sget-object v0, Lcom/dropbox/core/v2/sharing/z$a;->a:Lcom/dropbox/core/v2/sharing/z$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bb;->d:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "current_audience"

    .line 2368
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2369
    sget-object v0, Lcom/dropbox/core/v2/sharing/z$a;->a:Lcom/dropbox/core/v2/sharing/z$a;

    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/bb;->f:Lcom/dropbox/core/v2/sharing/z;

    invoke-static {v0, p2}, Lcom/dropbox/core/v2/sharing/z$a;->a(Lcom/dropbox/core/v2/sharing/z;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "link_permissions"

    .line 2370
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2371
    sget-object v0, Lcom/dropbox/core/v2/sharing/aa$a;->a:Lcom/dropbox/core/v2/sharing/aa$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bb;->h:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "password_protected"

    .line 2372
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 2373
    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/bb;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2374
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/bb;->c:Lcom/dropbox/core/v2/sharing/b;

    if-eqz v0, :cond_1

    const-string v0, "access_level"

    .line 2375
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2376
    sget-object v0, Lcom/dropbox/core/v2/sharing/b$a;->a:Lcom/dropbox/core/v2/sharing/b$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bb;->c:Lcom/dropbox/core/v2/sharing/b;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2378
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/bb;->e:Lcom/dropbox/core/v2/sharing/i;

    if-eqz v0, :cond_2

    const-string v0, "audience_restricting_shared_folder"

    .line 2379
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2380
    sget-object v0, Lcom/dropbox/core/v2/sharing/i$a;->a:Lcom/dropbox/core/v2/sharing/i$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bb;->e:Lcom/dropbox/core/v2/sharing/i;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2382
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/bb;->g:Ljava/util/Date;

    if-eqz v0, :cond_3

    const-string v0, "expiry"

    .line 2383
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 2384
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/bb;->g:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_3
    if-nez p3, :cond_4

    .line 2387
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_4
    return-void
.end method
