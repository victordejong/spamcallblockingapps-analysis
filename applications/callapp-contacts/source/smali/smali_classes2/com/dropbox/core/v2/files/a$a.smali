.class final Lcom/dropbox/core/v2/files/a$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    new-instance v0, Lcom/dropbox/core/v2/files/a$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/a$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/a$a;->a:Lcom/dropbox/core/v2/files/a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 254
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1287
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1289
    invoke-static {p1}, Lcom/dropbox/core/v2/files/a$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1290
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1294
    invoke-static {p1}, Lcom/dropbox/core/v2/files/a$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1295
    invoke-static {p1}, Lcom/dropbox/core/v2/files/a$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "path"

    .line 1300
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Value is null"

    if-eqz v3, :cond_2

    .line 1302
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/a$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1303
    sget-object v1, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/ai;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2131
    new-instance v2, Lcom/dropbox/core/v2/files/a;

    invoke-direct {v2}, Lcom/dropbox/core/v2/files/a;-><init>()V

    sget-object v2, Lcom/dropbox/core/v2/files/a$b;->PATH:Lcom/dropbox/core/v2/files/a$b;

    .line 3067
    new-instance v3, Lcom/dropbox/core/v2/files/a;

    invoke-direct {v3}, Lcom/dropbox/core/v2/files/a;-><init>()V

    .line 3068
    iput-object v2, v3, Lcom/dropbox/core/v2/files/a;->a:Lcom/dropbox/core/v2/files/a$b;

    .line 3069
    iput-object v1, v3, Lcom/dropbox/core/v2/files/a;->b:Lcom/dropbox/core/v2/files/ai;

    goto :goto_1

    .line 2129
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v2, "properties_error"

    .line 1306
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1308
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/a$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1309
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/d$a;->a:Lcom/dropbox/core/v2/fileproperties/d$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/d$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/d;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3177
    new-instance v2, Lcom/dropbox/core/v2/files/a;

    invoke-direct {v2}, Lcom/dropbox/core/v2/files/a;-><init>()V

    sget-object v2, Lcom/dropbox/core/v2/files/a$b;->PROPERTIES_ERROR:Lcom/dropbox/core/v2/files/a$b;

    .line 4082
    new-instance v3, Lcom/dropbox/core/v2/files/a;

    invoke-direct {v3}, Lcom/dropbox/core/v2/files/a;-><init>()V

    .line 4083
    iput-object v2, v3, Lcom/dropbox/core/v2/files/a;->a:Lcom/dropbox/core/v2/files/a$b;

    .line 4084
    iput-object v1, v3, Lcom/dropbox/core/v2/files/a;->c:Lcom/dropbox/core/v2/fileproperties/d;

    :goto_1
    if-nez v0, :cond_3

    .line 1316
    invoke-static {p1}, Lcom/dropbox/core/v2/files/a$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1317
    invoke-static {p1}, Lcom/dropbox/core/v2/files/a$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v3

    .line 3175
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1313
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1298
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

    .line 254
    check-cast p1, Lcom/dropbox/core/v2/files/a;

    .line 4259
    sget-object v0, Lcom/dropbox/core/v2/files/a$1;->a:[I

    .line 5100
    iget-object v1, p1, Lcom/dropbox/core/v2/files/a;->a:Lcom/dropbox/core/v2/files/a$b;

    .line 4259
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4269
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "properties_error"

    .line 4270
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/a$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4271
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4272
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/d$a;->a:Lcom/dropbox/core/v2/fileproperties/d$a;

    .line 7026
    iget-object p1, p1, Lcom/dropbox/core/v2/files/a;->c:Lcom/dropbox/core/v2/fileproperties/d;

    .line 4272
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/fileproperties/d$a;->a(Lcom/dropbox/core/v2/fileproperties/d;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4273
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 4277
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7100
    iget-object p1, p1, Lcom/dropbox/core/v2/files/a;->a:Lcom/dropbox/core/v2/files/a$b;

    .line 4277
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4261
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 4262
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/a$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4263
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4264
    sget-object v0, Lcom/dropbox/core/v2/files/ai$a;->a:Lcom/dropbox/core/v2/files/ai$a;

    .line 6026
    iget-object p1, p1, Lcom/dropbox/core/v2/files/a;->b:Lcom/dropbox/core/v2/files/ai;

    .line 4264
    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/ai$a;->a(Lcom/dropbox/core/v2/files/ai;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 4265
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
