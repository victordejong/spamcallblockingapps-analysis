.class final Lcom/dropbox/core/v2/teamlog/a$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/teamlog/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/teamlog/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 284
    new-instance v0, Lcom/dropbox/core/v2/teamlog/a$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/a$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/a$a;->a:Lcom/dropbox/core/v2/teamlog/a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1312
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1314
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/a$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1315
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1319
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/a$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1320
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/a$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "bad_cursor"

    .line 1325
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1326
    sget-object v1, Lcom/dropbox/core/v2/teamlog/a;->a:Lcom/dropbox/core/v2/teamlog/a;

    goto :goto_1

    :cond_1
    const-string v2, "reset"

    .line 1328
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1330
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/teamlog/a$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2056
    sget-object v1, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 1331
    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 1332
    invoke-static {v1}, Lcom/dropbox/core/v2/teamlog/a;->a(Ljava/util/Date;)Lcom/dropbox/core/v2/teamlog/a;

    move-result-object v1

    goto :goto_1

    .line 1335
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/teamlog/a;->b:Lcom/dropbox/core/v2/teamlog/a;

    :goto_1
    if-nez v0, :cond_3

    .line 1338
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/a$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1339
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/a$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 1323
    :cond_4
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

    .line 283
    check-cast p1, Lcom/dropbox/core/v2/teamlog/a;

    .line 2288
    sget-object v0, Lcom/dropbox/core/v2/teamlog/a$1;->a:[I

    .line 3140
    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/a;->c:Lcom/dropbox/core/v2/teamlog/a$b;

    .line 2288
    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p1, "other"

    .line 2302
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2294
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "reset"

    .line 2295
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/a$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2296
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4056
    sget-object v0, Lcom/dropbox/core/a/d$b;->a:Lcom/dropbox/core/a/d$b;

    .line 2297
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/a;->a(Lcom/dropbox/core/v2/teamlog/a;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2298
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :cond_1
    const-string p1, "bad_cursor"

    .line 2290
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method
