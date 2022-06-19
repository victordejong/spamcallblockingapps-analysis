.class final Lcom/dropbox/core/v2/files/bd$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/bd;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/bd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 301
    new-instance v0, Lcom/dropbox/core/v2/files/bd$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bd$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/bd$a;->a:Lcom/dropbox/core/v2/files/bd$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 300
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

    .line 1336
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1338
    invoke-static {p1}, Lcom/dropbox/core/v2/files/bd$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1343
    invoke-static {p1}, Lcom/dropbox/core/v2/files/bd$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1344
    invoke-static {p1}, Lcom/dropbox/core/v2/files/bd$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const-string v3, "path"

    .line 1349
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1351
    sget-object v0, Lcom/dropbox/core/v2/files/bi$a;->a:Lcom/dropbox/core/v2/files/bi$a;

    invoke-static {p1, v2}, Lcom/dropbox/core/v2/files/bi$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/bi;

    move-result-object v0

    .line 1352
    invoke-static {v0}, Lcom/dropbox/core/v2/files/bd;->a(Lcom/dropbox/core/v2/files/bi;)Lcom/dropbox/core/v2/files/bd;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "properties_error"

    .line 1354
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1356
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/bd$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1357
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$a;->a:Lcom/dropbox/core/v2/fileproperties/c$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/c$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object v0

    .line 1358
    invoke-static {v0}, Lcom/dropbox/core/v2/files/bd;->a(Lcom/dropbox/core/v2/fileproperties/c;)Lcom/dropbox/core/v2/files/bd;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v2, "other"

    .line 1360
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1361
    sget-object v0, Lcom/dropbox/core/v2/files/bd;->a:Lcom/dropbox/core/v2/files/bd;

    :goto_1
    if-nez v1, :cond_3

    .line 1367
    invoke-static {p1}, Lcom/dropbox/core/v2/files/bd$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1368
    invoke-static {p1}, Lcom/dropbox/core/v2/files/bd$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v0

    .line 1364
    :cond_4
    new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v1

    .line 1347
    :cond_5
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

    .line 300
    check-cast p1, Lcom/dropbox/core/v2/files/bd;

    .line 2305
    sget-object v0, Lcom/dropbox/core/v2/files/bd$1;->a:[I

    .line 3127
    iget-object v1, p1, Lcom/dropbox/core/v2/files/bd;->b:Lcom/dropbox/core/v2/files/bd$b;

    .line 2305
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/bd$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p1, "other"

    .line 2322
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2326
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4127
    iget-object p1, p1, Lcom/dropbox/core/v2/files/bd;->b:Lcom/dropbox/core/v2/files/bd$b;

    .line 2326
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2314
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "properties_error"

    .line 2315
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/bd$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2316
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2317
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/c$a;->a:Lcom/dropbox/core/v2/fileproperties/c$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bd;->b(Lcom/dropbox/core/v2/files/bd;)Lcom/dropbox/core/v2/fileproperties/c;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/c$a;->a(Lcom/dropbox/core/v2/fileproperties/c;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2318
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2307
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 2308
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/bd$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2309
    sget-object v0, Lcom/dropbox/core/v2/files/bi$a;->a:Lcom/dropbox/core/v2/files/bi$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bd;->a(Lcom/dropbox/core/v2/files/bd;)Lcom/dropbox/core/v2/files/bi;

    move-result-object p1

    invoke-static {p1, p2, v1}, Lcom/dropbox/core/v2/files/bi$a;->a(Lcom/dropbox/core/v2/files/bi;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 2310
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
