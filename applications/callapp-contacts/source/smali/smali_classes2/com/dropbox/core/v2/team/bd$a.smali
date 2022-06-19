.class final Lcom/dropbox/core/v2/team/bd$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/team/bd;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/team/bd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 354
    new-instance v0, Lcom/dropbox/core/v2/team/bd$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/bd$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/bd$a;->a:Lcom/dropbox/core/v2/team/bd$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 353
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

    .line 1398
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1400
    invoke-static {p1}, Lcom/dropbox/core/v2/team/bd$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1401
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1405
    invoke-static {p1}, Lcom/dropbox/core/v2/team/bd$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1406
    invoke-static {p1}, Lcom/dropbox/core/v2/team/bd$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "access_error"

    .line 1411
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1413
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/bd$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1414
    sget-object v1, Lcom/dropbox/core/v2/team/aw$a;->a:Lcom/dropbox/core/v2/team/aw$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/aw$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/aw;

    move-result-object v1

    .line 1415
    invoke-static {v1}, Lcom/dropbox/core/v2/team/bd;->a(Lcom/dropbox/core/v2/team/aw;)Lcom/dropbox/core/v2/team/bd;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "status_error"

    .line 1417
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1419
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/bd$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1420
    sget-object v1, Lcom/dropbox/core/v2/team/ba$a;->a:Lcom/dropbox/core/v2/team/ba$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/ba$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/ba;

    move-result-object v1

    .line 1421
    invoke-static {v1}, Lcom/dropbox/core/v2/team/bd;->a(Lcom/dropbox/core/v2/team/ba;)Lcom/dropbox/core/v2/team/bd;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "team_shared_dropbox_error"

    .line 1423
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1425
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/team/bd$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1426
    sget-object v1, Lcom/dropbox/core/v2/team/bf$a;->a:Lcom/dropbox/core/v2/team/bf$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/bf$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/bf;

    move-result-object v1

    .line 1427
    invoke-static {v1}, Lcom/dropbox/core/v2/team/bd;->a(Lcom/dropbox/core/v2/team/bf;)Lcom/dropbox/core/v2/team/bd;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, "other"

    .line 1429
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1430
    sget-object v1, Lcom/dropbox/core/v2/team/bd;->a:Lcom/dropbox/core/v2/team/bd;

    :goto_1
    if-nez v0, :cond_4

    .line 1436
    invoke-static {p1}, Lcom/dropbox/core/v2/team/bd$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1437
    invoke-static {p1}, Lcom/dropbox/core/v2/team/bd$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 1433
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1409
    :cond_6
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

    .line 353
    check-cast p1, Lcom/dropbox/core/v2/team/bd;

    .line 2358
    sget-object v0, Lcom/dropbox/core/v2/team/bd$1;->a:[I

    .line 3134
    iget-object v1, p1, Lcom/dropbox/core/v2/team/bd;->b:Lcom/dropbox/core/v2/team/bd$b;

    .line 2358
    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/bd$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string p1, "other"

    .line 2384
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2388
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4134
    iget-object p1, p1, Lcom/dropbox/core/v2/team/bd;->b:Lcom/dropbox/core/v2/team/bd$b;

    .line 2388
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2376
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "team_shared_dropbox_error"

    .line 2377
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/bd$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2378
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2379
    sget-object v0, Lcom/dropbox/core/v2/team/bf$a;->a:Lcom/dropbox/core/v2/team/bf$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/bd;->c(Lcom/dropbox/core/v2/team/bd;)Lcom/dropbox/core/v2/team/bf;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/team/bf$a;->a(Lcom/dropbox/core/v2/team/bf;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2380
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2368
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "status_error"

    .line 2369
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/bd$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2370
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2371
    sget-object v0, Lcom/dropbox/core/v2/team/ba$a;->a:Lcom/dropbox/core/v2/team/ba$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/bd;->b(Lcom/dropbox/core/v2/team/bd;)Lcom/dropbox/core/v2/team/ba;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/team/ba$a;->a(Lcom/dropbox/core/v2/team/ba;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2372
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2360
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2361
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/bd$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2362
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2363
    sget-object v0, Lcom/dropbox/core/v2/team/aw$a;->a:Lcom/dropbox/core/v2/team/aw$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/bd;->a(Lcom/dropbox/core/v2/team/bd;)Lcom/dropbox/core/v2/team/aw;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/team/aw$a;->a(Lcom/dropbox/core/v2/team/aw;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2364
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
