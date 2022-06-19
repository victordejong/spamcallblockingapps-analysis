.class final Lcom/dropbox/core/v2/files/ar$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/ar;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/ar$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 312
    new-instance v0, Lcom/dropbox/core/v2/files/ar$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ar$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ar$a;->a:Lcom/dropbox/core/v2/files/ar$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 311
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

    .line 1352
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1354
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ar$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1355
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1359
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ar$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1360
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ar$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "path"

    .line 1365
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1367
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/ar$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1368
    sget-object v1, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v1

    .line 1369
    invoke-static {v1}, Lcom/dropbox/core/v2/files/ar;->a(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/ar;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "invalid_copy_reference"

    .line 1371
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1372
    sget-object v1, Lcom/dropbox/core/v2/files/ar;->a:Lcom/dropbox/core/v2/files/ar;

    goto :goto_1

    :cond_2
    const-string v2, "no_permission"

    .line 1374
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1375
    sget-object v1, Lcom/dropbox/core/v2/files/ar;->b:Lcom/dropbox/core/v2/files/ar;

    goto :goto_1

    :cond_3
    const-string v2, "not_found"

    .line 1377
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1378
    sget-object v1, Lcom/dropbox/core/v2/files/ar;->c:Lcom/dropbox/core/v2/files/ar;

    goto :goto_1

    :cond_4
    const-string v2, "too_many_files"

    .line 1380
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1381
    sget-object v1, Lcom/dropbox/core/v2/files/ar;->d:Lcom/dropbox/core/v2/files/ar;

    goto :goto_1

    .line 1384
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/files/ar;->e:Lcom/dropbox/core/v2/files/ar;

    :goto_1
    if-nez v0, :cond_6

    .line 1387
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ar$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1388
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ar$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 1363
    :cond_7
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

    .line 311
    check-cast p1, Lcom/dropbox/core/v2/files/ar;

    .line 2316
    sget-object v0, Lcom/dropbox/core/v2/files/ar$1;->a:[I

    .line 3143
    iget-object v1, p1, Lcom/dropbox/core/v2/files/ar;->f:Lcom/dropbox/core/v2/files/ar$b;

    .line 2316
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ar$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 2342
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "too_many_files"

    .line 2338
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "not_found"

    .line 2334
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "no_permission"

    .line 2330
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "invalid_copy_reference"

    .line 2326
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2318
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 2319
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ar$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2320
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2321
    sget-object v0, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ar;->a(Lcom/dropbox/core/v2/files/ar;)Lcom/dropbox/core/v2/files/bl;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/dropbox/core/v2/files/bl;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2322
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
