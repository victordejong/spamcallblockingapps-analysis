.class final Lcom/dropbox/core/v2/sharing/bd$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/bd;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bd$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 274
    new-instance v0, Lcom/dropbox/core/v2/sharing/bd$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bd$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bd$a;->a:Lcom/dropbox/core/v2/sharing/bd$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 307
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bd$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 312
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bd$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 313
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bd$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_5

    const-string v3, "invalid_dropbox_id"

    .line 318
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    sget-object v0, Lcom/dropbox/core/v2/sharing/bd;->a:Lcom/dropbox/core/v2/sharing/bd;

    goto :goto_1

    :cond_1
    const-string v3, "not_a_member"

    .line 321
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    sget-object v0, Lcom/dropbox/core/v2/sharing/bd;->b:Lcom/dropbox/core/v2/sharing/bd;

    goto :goto_1

    :cond_2
    const-string v3, "no_explicit_access"

    .line 324
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    sget-object v0, Lcom/dropbox/core/v2/sharing/ai$a;->a:Lcom/dropbox/core/v2/sharing/ai$a;

    invoke-static {p0, v2}, Lcom/dropbox/core/v2/sharing/ai$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/ai;

    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/bd;->a(Lcom/dropbox/core/v2/sharing/ai;)Lcom/dropbox/core/v2/sharing/bd;

    move-result-object v0

    goto :goto_1

    .line 330
    :cond_3
    sget-object v0, Lcom/dropbox/core/v2/sharing/bd;->c:Lcom/dropbox/core/v2/sharing/bd;

    :goto_1
    if-nez v1, :cond_4

    .line 333
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bd$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 334
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bd$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_4
    return-object v0

    .line 316
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/sharing/bd;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/dropbox/core/v2/sharing/bd$1;->a:[I

    .line 1127
    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/bd;->d:Lcom/dropbox/core/v2/sharing/bd$b;

    .line 278
    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/bd$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p1, "other"

    .line 295
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 288
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "no_explicit_access"

    .line 289
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/bd$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 290
    sget-object v0, Lcom/dropbox/core/v2/sharing/ai$a;->a:Lcom/dropbox/core/v2/sharing/ai$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bd;->a(Lcom/dropbox/core/v2/sharing/bd;)Lcom/dropbox/core/v2/sharing/ai;

    move-result-object p1

    invoke-static {p1, p2, v1}, Lcom/dropbox/core/v2/sharing/ai$a;->a(Lcom/dropbox/core/v2/sharing/ai;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 291
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    :cond_1
    const-string p1, "not_a_member"

    .line 284
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "invalid_dropbox_id"

    .line 280
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

    .line 273
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bd$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bd;

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

    .line 273
    check-cast p1, Lcom/dropbox/core/v2/sharing/bd;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/bd$a;->a(Lcom/dropbox/core/v2/sharing/bd;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
