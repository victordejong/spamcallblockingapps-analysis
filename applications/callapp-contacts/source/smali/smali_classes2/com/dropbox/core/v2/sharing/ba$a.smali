.class final Lcom/dropbox/core/v2/sharing/ba$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/sharing/ba;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ba$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 354
    new-instance v0, Lcom/dropbox/core/v2/sharing/ba$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ba$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ba$a;->a:Lcom/dropbox/core/v2/sharing/ba$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1397
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ba$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1398
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ba$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_11

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    .line 1410
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_a

    .line 1411
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 1412
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "audience_options"

    .line 1413
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1414
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

    .line 1416
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1417
    sget-object v1, Lcom/dropbox/core/v2/sharing/z$a;->a:Lcom/dropbox/core/v2/sharing/z$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/z$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/z;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v2, "link_permissions"

    .line 1419
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1420
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

    .line 1422
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 1423
    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    const-string v2, "url"

    .line 1425
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1426
    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v2, "access_level"

    .line 1428
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1429
    sget-object v1, Lcom/dropbox/core/v2/sharing/b$a;->a:Lcom/dropbox/core/v2/sharing/b$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/dropbox/core/v2/sharing/b;

    goto/16 :goto_1

    :cond_6
    const-string v2, "audience_restricting_shared_folder"

    .line 1431
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1432
    sget-object v1, Lcom/dropbox/core/v2/sharing/i$a;->a:Lcom/dropbox/core/v2/sharing/i$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/dropbox/core/v2/sharing/i;

    goto/16 :goto_1

    :cond_7
    const-string v2, "expiry"

    .line 1434
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2056
    sget-object v1, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 1435
    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/util/Date;

    goto/16 :goto_1

    :cond_8
    const-string v2, "audience_exceptions"

    .line 1437
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1438
    sget-object v1, Lcom/dropbox/core/v2/sharing/h$a;->a:Lcom/dropbox/core/v2/sharing/h$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/e;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/dropbox/core/v2/sharing/h;

    goto/16 :goto_1

    .line 1441
    :cond_9
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ba$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_1

    :cond_a
    if-eqz v3, :cond_10

    if-eqz v4, :cond_f

    if-eqz v5, :cond_e

    if-eqz v0, :cond_d

    if-eqz v7, :cond_c

    .line 1459
    new-instance v1, Lcom/dropbox/core/v2/sharing/ba;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/dropbox/core/v2/sharing/ba;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/sharing/z;Ljava/util/List;ZLjava/lang/String;Lcom/dropbox/core/v2/sharing/b;Lcom/dropbox/core/v2/sharing/i;Ljava/util/Date;Lcom/dropbox/core/v2/sharing/h;)V

    if-nez p2, :cond_b

    .line 1465
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ba$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1467
    :cond_b
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ba;->a()Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v1

    .line 1457
    :cond_c
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"url\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1454
    :cond_d
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"password_protected\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1451
    :cond_e
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"link_permissions\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1448
    :cond_f
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"current_audience\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1445
    :cond_10
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"audience_options\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1462
    :cond_11
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

    .line 353
    check-cast p1, Lcom/dropbox/core/v2/sharing/ba;

    if-nez p3, :cond_0

    .line 2359
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "audience_options"

    .line 2361
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2362
    sget-object v0, Lcom/dropbox/core/v2/sharing/z$a;->a:Lcom/dropbox/core/v2/sharing/z$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ba;->d:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "current_audience"

    .line 2363
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2364
    sget-object v0, Lcom/dropbox/core/v2/sharing/z$a;->a:Lcom/dropbox/core/v2/sharing/z$a;

    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ba;->f:Lcom/dropbox/core/v2/sharing/z;

    invoke-static {v0, p2}, Lcom/dropbox/core/v2/sharing/z$a;->a(Lcom/dropbox/core/v2/sharing/z;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "link_permissions"

    .line 2365
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2366
    sget-object v0, Lcom/dropbox/core/v2/sharing/aa$a;->a:Lcom/dropbox/core/v2/sharing/aa$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ba;->h:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "password_protected"

    .line 2367
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 2368
    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/ba;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "url"

    .line 2369
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 2370
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ba;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2371
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ba;->c:Lcom/dropbox/core/v2/sharing/b;

    if-eqz v0, :cond_1

    const-string v0, "access_level"

    .line 2372
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2373
    sget-object v0, Lcom/dropbox/core/v2/sharing/b$a;->a:Lcom/dropbox/core/v2/sharing/b$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ba;->c:Lcom/dropbox/core/v2/sharing/b;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2375
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ba;->e:Lcom/dropbox/core/v2/sharing/i;

    if-eqz v0, :cond_2

    const-string v0, "audience_restricting_shared_folder"

    .line 2376
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2377
    sget-object v0, Lcom/dropbox/core/v2/sharing/i$a;->a:Lcom/dropbox/core/v2/sharing/i$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ba;->e:Lcom/dropbox/core/v2/sharing/i;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2379
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ba;->g:Ljava/util/Date;

    if-eqz v0, :cond_3

    const-string v0, "expiry"

    .line 2380
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 2381
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ba;->g:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2383
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ba;->a:Lcom/dropbox/core/v2/sharing/h;

    if-eqz v0, :cond_4

    const-string v0, "audience_exceptions"

    .line 2384
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2385
    sget-object v0, Lcom/dropbox/core/v2/sharing/h$a;->a:Lcom/dropbox/core/v2/sharing/h$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/e;)Lcom/dropbox/core/a/e;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ba;->a:Lcom/dropbox/core/v2/sharing/h;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/e;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_4
    if-nez p3, :cond_5

    .line 2388
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_5
    return-void
.end method
