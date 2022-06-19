.class final Lcom/dropbox/core/v2/sharing/bs$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/bs;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bs$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 288
    new-instance v0, Lcom/dropbox/core/v2/sharing/bs$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bs$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bs$a;->a:Lcom/dropbox/core/v2/sharing/bs$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 287
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

    .line 1324
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1326
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bs$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1327
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1331
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bs$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1332
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bs$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "access_error"

    .line 1337
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1339
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/sharing/bs$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1340
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object v1

    .line 1341
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/bs;->a(Lcom/dropbox/core/v2/sharing/bc;)Lcom/dropbox/core/v2/sharing/bs;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "team_folder"

    .line 1343
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1344
    sget-object v1, Lcom/dropbox/core/v2/sharing/bs;->a:Lcom/dropbox/core/v2/sharing/bs;

    goto :goto_1

    :cond_2
    const-string v2, "no_permission"

    .line 1346
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1347
    sget-object v1, Lcom/dropbox/core/v2/sharing/bs;->b:Lcom/dropbox/core/v2/sharing/bs;

    goto :goto_1

    :cond_3
    const-string v2, "too_many_files"

    .line 1349
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1350
    sget-object v1, Lcom/dropbox/core/v2/sharing/bs;->c:Lcom/dropbox/core/v2/sharing/bs;

    goto :goto_1

    .line 1353
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/sharing/bs;->d:Lcom/dropbox/core/v2/sharing/bs;

    :goto_1
    if-nez v0, :cond_5

    .line 1356
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bs$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1357
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bs$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 1335
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

    .line 287
    check-cast p1, Lcom/dropbox/core/v2/sharing/bs;

    .line 2292
    sget-object v0, Lcom/dropbox/core/v2/sharing/bs$1;->a:[I

    .line 3131
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bs;->e:Lcom/dropbox/core/v2/sharing/bs$b;

    .line 2292
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/bs$b;->ordinal()I

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

    .line 2314
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "too_many_files"

    .line 2310
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "no_permission"

    .line 2306
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "team_folder"

    .line 2302
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2294
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "access_error"

    .line 2295
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/bs$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2296
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2297
    sget-object v0, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bs;->a(Lcom/dropbox/core/v2/sharing/bs;)Lcom/dropbox/core/v2/sharing/bc;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/dropbox/core/v2/sharing/bc;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2298
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
