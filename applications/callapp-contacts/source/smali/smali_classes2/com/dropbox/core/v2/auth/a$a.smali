.class public final Lcom/dropbox/core/v2/auth/a$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/auth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/auth/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/auth/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 314
    new-instance v0, Lcom/dropbox/core/v2/auth/a$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/auth/a$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/auth/a$a;->a:Lcom/dropbox/core/v2/auth/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 313
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

    .line 1346
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1348
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/a$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1349
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1353
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/a$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1354
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/a$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "invalid_account_type"

    .line 1359
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1361
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/auth/a$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1362
    sget-object v1, Lcom/dropbox/core/v2/auth/d$a;->a:Lcom/dropbox/core/v2/auth/d$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/d$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/d;

    move-result-object v1

    .line 1363
    invoke-static {v1}, Lcom/dropbox/core/v2/auth/a;->a(Lcom/dropbox/core/v2/auth/d;)Lcom/dropbox/core/v2/auth/a;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "paper_access_denied"

    .line 1365
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1367
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/auth/a$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1368
    sget-object v1, Lcom/dropbox/core/v2/auth/e$a;->a:Lcom/dropbox/core/v2/auth/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/e$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/auth/e;

    move-result-object v1

    .line 1369
    invoke-static {v1}, Lcom/dropbox/core/v2/auth/a;->a(Lcom/dropbox/core/v2/auth/e;)Lcom/dropbox/core/v2/auth/a;

    move-result-object v1

    goto :goto_1

    .line 1372
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/auth/a;->a:Lcom/dropbox/core/v2/auth/a;

    :goto_1
    if-nez v0, :cond_3

    .line 1375
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/a$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1376
    invoke-static {p1}, Lcom/dropbox/core/v2/auth/a$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 1357
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

    .line 313
    check-cast p1, Lcom/dropbox/core/v2/auth/a;

    .line 2318
    sget-object v0, Lcom/dropbox/core/v2/auth/a$1;->a:[I

    .line 3141
    iget-object v1, p1, Lcom/dropbox/core/v2/auth/a;->b:Lcom/dropbox/core/v2/auth/a$b;

    .line 2318
    invoke-virtual {v1}, Lcom/dropbox/core/v2/auth/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p1, "other"

    .line 2336
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 2328
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "paper_access_denied"

    .line 2329
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/auth/a$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2330
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2331
    sget-object v0, Lcom/dropbox/core/v2/auth/e$a;->a:Lcom/dropbox/core/v2/auth/e$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/a;->b(Lcom/dropbox/core/v2/auth/a;)Lcom/dropbox/core/v2/auth/e;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/auth/e$a;->a(Lcom/dropbox/core/v2/auth/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2332
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 2320
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "invalid_account_type"

    .line 2321
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/auth/a$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2322
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2323
    sget-object v0, Lcom/dropbox/core/v2/auth/d$a;->a:Lcom/dropbox/core/v2/auth/d$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/auth/a;->a(Lcom/dropbox/core/v2/auth/a;)Lcom/dropbox/core/v2/auth/d;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/auth/d$a;->a(Lcom/dropbox/core/v2/auth/d;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 2324
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method
