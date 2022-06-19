.class public final Lcom/dropbox/core/v2/c/a$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/c/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 351
    new-instance v0, Lcom/dropbox/core/v2/c/a$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/c/a$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/c/a$a;->a:Lcom/dropbox/core/v2/c/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 350
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

    .line 1387
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1389
    invoke-static {p1}, Lcom/dropbox/core/v2/c/a$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1390
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1394
    invoke-static {p1}, Lcom/dropbox/core/v2/c/a$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1395
    invoke-static {p1}, Lcom/dropbox/core/v2/c/a$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string v2, "home"

    .line 1400
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1401
    sget-object v1, Lcom/dropbox/core/v2/c/a;->a:Lcom/dropbox/core/v2/c/a;

    goto :goto_1

    :cond_1
    const-string v2, "root"

    .line 1403
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1405
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/c/a$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1406
    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1407
    invoke-static {v1}, Lcom/dropbox/core/v2/c/a;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/c/a;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v2, "namespace_id"

    .line 1409
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1411
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/c/a$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1412
    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1413
    invoke-static {v1}, Lcom/dropbox/core/v2/c/a;->b(Ljava/lang/String;)Lcom/dropbox/core/v2/c/a;

    move-result-object v1

    goto :goto_1

    .line 1416
    :cond_3
    sget-object v1, Lcom/dropbox/core/v2/c/a;->b:Lcom/dropbox/core/v2/c/a;

    :goto_1
    if-nez v0, :cond_4

    .line 1419
    invoke-static {p1}, Lcom/dropbox/core/v2/c/a$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1420
    invoke-static {p1}, Lcom/dropbox/core/v2/c/a$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v1

    .line 1398
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

    .line 350
    check-cast p1, Lcom/dropbox/core/v2/c/a;

    .line 3355
    sget-object v0, Lcom/dropbox/core/v2/c/a$1;->a:[I

    .line 4151
    iget-object v1, p1, Lcom/dropbox/core/v2/c/a;->c:Lcom/dropbox/core/v2/c/a$b;

    .line 3355
    invoke-virtual {v1}, Lcom/dropbox/core/v2/c/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p1, "other"

    .line 3377
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 3369
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "namespace_id"

    .line 3370
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/c/a$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3371
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 6052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 3372
    invoke-static {p1}, Lcom/dropbox/core/v2/c/a;->b(Lcom/dropbox/core/v2/c/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3373
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 3361
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "root"

    .line 3362
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/c/a$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3363
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 5052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 3364
    invoke-static {p1}, Lcom/dropbox/core/v2/c/a;->a(Lcom/dropbox/core/v2/c/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3365
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :cond_2
    const-string p1, "home"

    .line 3357
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method
