.class final Lcom/dropbox/core/v2/fileproperties/e$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/fileproperties/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 316
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/e$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/e$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/e$a;->a:Lcom/dropbox/core/v2/fileproperties/e$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 315
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 358
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/e$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 363
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/e$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 364
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/e$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "malformed_path"

    .line 369
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/fileproperties/e$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 372
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 373
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/e;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/e;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "not_found"

    .line 375
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/e;->a:Lcom/dropbox/core/v2/fileproperties/e;

    goto :goto_1

    :cond_2
    const-string v2, "not_file"

    .line 378
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 379
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/e;->b:Lcom/dropbox/core/v2/fileproperties/e;

    goto :goto_1

    :cond_3
    const-string v2, "not_folder"

    .line 381
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 382
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/e;->c:Lcom/dropbox/core/v2/fileproperties/e;

    goto :goto_1

    :cond_4
    const-string v2, "restricted_content"

    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 385
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/e;->d:Lcom/dropbox/core/v2/fileproperties/e;

    goto :goto_1

    .line 388
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/e;->e:Lcom/dropbox/core/v2/fileproperties/e;

    :goto_1
    if-nez v0, :cond_6

    .line 391
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/e$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 392
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/e$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 367
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/fileproperties/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 320
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/e$1;->a:[I

    .line 1146
    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/e;->f:Lcom/dropbox/core/v2/fileproperties/e$b;

    .line 320
    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/e$b;->ordinal()I

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

    .line 346
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "restricted_content"

    .line 342
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "not_folder"

    .line 338
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "not_file"

    .line 334
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "not_found"

    .line 330
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 322
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "malformed_path"

    .line 323
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/e$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 324
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 325
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/e;->a(Lcom/dropbox/core/v2/fileproperties/e;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 326
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

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

    .line 315
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/e$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/e;

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

    .line 315
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/e;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/e$a;->a(Lcom/dropbox/core/v2/fileproperties/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
