.class final Lcom/dropbox/core/v2/sharing/ab$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/sharing/ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/ab$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 338
    new-instance v0, Lcom/dropbox/core/v2/sharing/ab$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ab$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ab$a;->a:Lcom/dropbox/core/v2/sharing/ab$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1377
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ab$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1378
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ab$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_a

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    .line 1387
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_7

    .line 1388
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 1389
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, "can_revoke"

    .line 1390
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 1391
    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const-string v2, "resolved_visibility"

    .line 1393
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1394
    sget-object v1, Lcom/dropbox/core/v2/sharing/av$a;->a:Lcom/dropbox/core/v2/sharing/av$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/dropbox/core/v2/sharing/av;

    goto :goto_1

    :cond_2
    const-string v2, "requested_visibility"

    .line 1396
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1397
    sget-object v1, Lcom/dropbox/core/v2/sharing/au$a;->a:Lcom/dropbox/core/v2/sharing/au$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/dropbox/core/v2/sharing/au;

    goto :goto_1

    :cond_3
    const-string v2, "revoke_failure_reason"

    .line 1399
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1400
    sget-object v1, Lcom/dropbox/core/v2/sharing/bg$a;->a:Lcom/dropbox/core/v2/sharing/bg$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/dropbox/core/v2/sharing/bg;

    goto :goto_1

    :cond_4
    const-string v2, "effective_audience"

    .line 1402
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1403
    sget-object v1, Lcom/dropbox/core/v2/sharing/z$a;->a:Lcom/dropbox/core/v2/sharing/z$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/dropbox/core/v2/sharing/z;

    goto :goto_1

    :cond_5
    const-string v2, "link_access_level"

    .line 1405
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1406
    sget-object v1, Lcom/dropbox/core/v2/sharing/x$a;->a:Lcom/dropbox/core/v2/sharing/x$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/dropbox/core/v2/sharing/x;

    goto/16 :goto_1

    .line 1409
    :cond_6
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ab$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_9

    .line 1415
    new-instance v8, Lcom/dropbox/core/v2/sharing/ab;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/sharing/ab;-><init>(ZLcom/dropbox/core/v2/sharing/av;Lcom/dropbox/core/v2/sharing/au;Lcom/dropbox/core/v2/sharing/bg;Lcom/dropbox/core/v2/sharing/z;Lcom/dropbox/core/v2/sharing/x;)V

    if-nez p2, :cond_8

    .line 1421
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ab$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2331
    :cond_8
    sget-object p1, Lcom/dropbox/core/v2/sharing/ab$a;->a:Lcom/dropbox/core/v2/sharing/ab$a;

    const/4 p2, 0x1

    invoke-virtual {p1, v8, p2}, Lcom/dropbox/core/v2/sharing/ab$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    .line 1423
    invoke-static {v8}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v8

    .line 1413
    :cond_9
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"can_revoke\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1418
    :cond_a
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

    .line 337
    check-cast p1, Lcom/dropbox/core/v2/sharing/ab;

    if-nez p3, :cond_0

    .line 2343
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "can_revoke"

    .line 2345
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 2346
    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/ab;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2347
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ab;->a:Lcom/dropbox/core/v2/sharing/av;

    if-eqz v0, :cond_1

    const-string v0, "resolved_visibility"

    .line 2348
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2349
    sget-object v0, Lcom/dropbox/core/v2/sharing/av$a;->a:Lcom/dropbox/core/v2/sharing/av$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ab;->a:Lcom/dropbox/core/v2/sharing/av;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2351
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ab;->b:Lcom/dropbox/core/v2/sharing/au;

    if-eqz v0, :cond_2

    const-string v0, "requested_visibility"

    .line 2352
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2353
    sget-object v0, Lcom/dropbox/core/v2/sharing/au$a;->a:Lcom/dropbox/core/v2/sharing/au$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ab;->b:Lcom/dropbox/core/v2/sharing/au;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2355
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ab;->d:Lcom/dropbox/core/v2/sharing/bg;

    if-eqz v0, :cond_3

    const-string v0, "revoke_failure_reason"

    .line 2356
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2357
    sget-object v0, Lcom/dropbox/core/v2/sharing/bg$a;->a:Lcom/dropbox/core/v2/sharing/bg$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ab;->d:Lcom/dropbox/core/v2/sharing/bg;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2359
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ab;->e:Lcom/dropbox/core/v2/sharing/z;

    if-eqz v0, :cond_4

    const-string v0, "effective_audience"

    .line 2360
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2361
    sget-object v0, Lcom/dropbox/core/v2/sharing/z$a;->a:Lcom/dropbox/core/v2/sharing/z$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/ab;->e:Lcom/dropbox/core/v2/sharing/z;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2363
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/ab;->f:Lcom/dropbox/core/v2/sharing/x;

    if-eqz v0, :cond_5

    const-string v0, "link_access_level"

    .line 2364
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2365
    sget-object v0, Lcom/dropbox/core/v2/sharing/x$a;->a:Lcom/dropbox/core/v2/sharing/x$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/ab;->f:Lcom/dropbox/core/v2/sharing/x;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_5
    if-nez p3, :cond_6

    .line 2368
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_6
    return-void
.end method
