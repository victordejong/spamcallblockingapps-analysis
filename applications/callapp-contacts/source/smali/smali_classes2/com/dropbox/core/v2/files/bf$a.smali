.class final Lcom/dropbox/core/v2/files/bf$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/bf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/bf;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/bf$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 334
    new-instance v0, Lcom/dropbox/core/v2/files/bf$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bf$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/bf$a;->a:Lcom/dropbox/core/v2/files/bf$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bf;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 375
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bf$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 380
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bf$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 381
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bf$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_7

    const-string v3, "not_found"

    .line 386
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    sget-object v0, Lcom/dropbox/core/v2/files/bf;->a:Lcom/dropbox/core/v2/files/bf;

    goto :goto_1

    :cond_1
    const-string v3, "incorrect_offset"

    .line 389
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    sget-object v0, Lcom/dropbox/core/v2/files/bg$a;->a:Lcom/dropbox/core/v2/files/bg$a;

    invoke-static {p0, v2}, Lcom/dropbox/core/v2/files/bg$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/bg;

    move-result-object v0

    .line 392
    invoke-static {v0}, Lcom/dropbox/core/v2/files/bf;->a(Lcom/dropbox/core/v2/files/bg;)Lcom/dropbox/core/v2/files/bf;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "closed"

    .line 394
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    sget-object v0, Lcom/dropbox/core/v2/files/bf;->b:Lcom/dropbox/core/v2/files/bf;

    goto :goto_1

    :cond_3
    const-string v2, "not_closed"

    .line 397
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 398
    sget-object v0, Lcom/dropbox/core/v2/files/bf;->c:Lcom/dropbox/core/v2/files/bf;

    goto :goto_1

    :cond_4
    const-string v2, "too_large"

    .line 400
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 401
    sget-object v0, Lcom/dropbox/core/v2/files/bf;->d:Lcom/dropbox/core/v2/files/bf;

    goto :goto_1

    .line 404
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/files/bf;->e:Lcom/dropbox/core/v2/files/bf;

    :goto_1
    if-nez v1, :cond_6

    .line 407
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bf$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 408
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bf$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v0

    .line 384
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/files/bf;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/dropbox/core/v2/files/bf$1;->a:[I

    .line 1156
    iget-object v1, p1, Lcom/dropbox/core/v2/files/bf;->f:Lcom/dropbox/core/v2/files/bf$b;

    .line 338
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/bf$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 363
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "too_large"

    .line 359
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "not_closed"

    .line 355
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "closed"

    .line 351
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 344
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "incorrect_offset"

    .line 345
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/bf$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 346
    sget-object v0, Lcom/dropbox/core/v2/files/bg$a;->a:Lcom/dropbox/core/v2/files/bg$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bf;->a(Lcom/dropbox/core/v2/files/bf;)Lcom/dropbox/core/v2/files/bg;

    move-result-object p1

    invoke-static {p1, p2, v1}, Lcom/dropbox/core/v2/files/bg$a;->a(Lcom/dropbox/core/v2/files/bg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 347
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :cond_4
    const-string p1, "not_found"

    .line 340
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/files/bf$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bf;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 333
    check-cast p1, Lcom/dropbox/core/v2/files/bf;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/bf$a;->a(Lcom/dropbox/core/v2/files/bf;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
