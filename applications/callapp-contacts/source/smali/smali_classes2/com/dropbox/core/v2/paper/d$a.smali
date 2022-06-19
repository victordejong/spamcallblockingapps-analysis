.class final Lcom/dropbox/core/v2/paper/d$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/paper/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/paper/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 269
    new-instance v0, Lcom/dropbox/core/v2/paper/d$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/d$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/d$a;->a:Lcom/dropbox/core/v2/paper/d$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 268
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

    .line 1305
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1307
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/d$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1308
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1312
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/d$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1313
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/d$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "insufficient_permissions"

    .line 1318
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1319
    sget-object v1, Lcom/dropbox/core/v2/paper/d;->a:Lcom/dropbox/core/v2/paper/d;

    goto :goto_1

    :cond_1
    const-string v2, "other"

    .line 1321
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1322
    sget-object v1, Lcom/dropbox/core/v2/paper/d;->b:Lcom/dropbox/core/v2/paper/d;

    goto :goto_1

    :cond_2
    const-string v2, "doc_not_found"

    .line 1324
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1325
    sget-object v1, Lcom/dropbox/core/v2/paper/d;->c:Lcom/dropbox/core/v2/paper/d;

    goto :goto_1

    :cond_3
    const-string v2, "cursor_error"

    .line 1327
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1329
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/paper/d$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1330
    sget-object v1, Lcom/dropbox/core/v2/paper/e$a;->a:Lcom/dropbox/core/v2/paper/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/paper/e$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/e;

    move-result-object v1

    .line 1331
    invoke-static {v1}, Lcom/dropbox/core/v2/paper/d;->a(Lcom/dropbox/core/v2/paper/e;)Lcom/dropbox/core/v2/paper/d;

    move-result-object v1

    :goto_1
    if-nez v0, :cond_4

    .line 1337
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/d$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1338
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/d$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 1334
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1316
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

    .line 268
    check-cast p1, Lcom/dropbox/core/v2/paper/d;

    .line 2273
    sget-object v0, Lcom/dropbox/core/v2/paper/d$1;->a:[I

    .line 3124
    iget-object v1, p1, Lcom/dropbox/core/v2/paper/d;->d:Lcom/dropbox/core/v2/paper/d$b;

    .line 2273
    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/d$b;->ordinal()I

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

    .line 2287
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "cursor_error"

    .line 2288
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/paper/d$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2289
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2290
    sget-object v0, Lcom/dropbox/core/v2/paper/e$a;->a:Lcom/dropbox/core/v2/paper/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/paper/d;->a(Lcom/dropbox/core/v2/paper/d;)Lcom/dropbox/core/v2/paper/e;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/paper/e$a;->a(Lcom/dropbox/core/v2/paper/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2291
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2295
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4124
    iget-object p1, p1, Lcom/dropbox/core/v2/paper/d;->d:Lcom/dropbox/core/v2/paper/d$b;

    .line 2295
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "doc_not_found"

    .line 2283
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "other"

    .line 2279
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "insufficient_permissions"

    .line 2275
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method
