.class final Lcom/dropbox/core/v2/files/as$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/as;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/as$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 290
    new-instance v0, Lcom/dropbox/core/v2/files/as$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/as$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/as$a;->a:Lcom/dropbox/core/v2/files/as$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 289
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

    .line 1326
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1328
    invoke-static {p1}, Lcom/dropbox/core/v2/files/as$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1329
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1333
    invoke-static {p1}, Lcom/dropbox/core/v2/files/as$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1334
    invoke-static {p1}, Lcom/dropbox/core/v2/files/as$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "path"

    .line 1339
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1341
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/as$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1342
    sget-object v1, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v1

    .line 1343
    invoke-static {v1}, Lcom/dropbox/core/v2/files/as;->a(Lcom/dropbox/core/v2/files/bl;)Lcom/dropbox/core/v2/files/as;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "download_failed"

    .line 1345
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1346
    sget-object v1, Lcom/dropbox/core/v2/files/as;->a:Lcom/dropbox/core/v2/files/as;

    goto :goto_1

    :cond_2
    const-string v2, "invalid_url"

    .line 1348
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1349
    sget-object v1, Lcom/dropbox/core/v2/files/as;->b:Lcom/dropbox/core/v2/files/as;

    goto :goto_1

    :cond_3
    const-string v2, "not_found"

    .line 1351
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1352
    sget-object v1, Lcom/dropbox/core/v2/files/as;->c:Lcom/dropbox/core/v2/files/as;

    goto :goto_1

    .line 1355
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/files/as;->d:Lcom/dropbox/core/v2/files/as;

    :goto_1
    if-nez v0, :cond_5

    .line 1358
    invoke-static {p1}, Lcom/dropbox/core/v2/files/as$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1359
    invoke-static {p1}, Lcom/dropbox/core/v2/files/as$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 1337
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

    .line 289
    check-cast p1, Lcom/dropbox/core/v2/files/as;

    .line 2294
    sget-object v0, Lcom/dropbox/core/v2/files/as$1;->a:[I

    .line 3134
    iget-object v1, p1, Lcom/dropbox/core/v2/files/as;->e:Lcom/dropbox/core/v2/files/as$b;

    .line 2294
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/as$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 2316
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "not_found"

    .line 2312
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "invalid_url"

    .line 2308
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "download_failed"

    .line 2304
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2296
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 2297
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/as$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2298
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2299
    sget-object v0, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/as;->a(Lcom/dropbox/core/v2/files/as;)Lcom/dropbox/core/v2/files/bl;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/dropbox/core/v2/files/bl;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2300
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
