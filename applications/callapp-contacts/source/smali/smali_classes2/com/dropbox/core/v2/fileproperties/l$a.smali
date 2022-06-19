.class public final Lcom/dropbox/core/v2/fileproperties/l$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/fileproperties/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/fileproperties/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/fileproperties/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 261
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/l$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/l$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/l$a;->a:Lcom/dropbox/core/v2/fileproperties/l$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/l;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 291
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/l$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 296
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/l$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 297
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/l$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "template_not_found"

    .line 302
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    invoke-static {v2, p0}, Lcom/dropbox/core/v2/fileproperties/l$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 305
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    invoke-static {v1}, Lcom/dropbox/core/v2/fileproperties/l;->a(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/l;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v2, "restricted_content"

    .line 308
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/l;->a:Lcom/dropbox/core/v2/fileproperties/l;

    goto :goto_1

    .line 312
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/fileproperties/l;->b:Lcom/dropbox/core/v2/fileproperties/l;

    :goto_1
    if-nez v0, :cond_3

    .line 315
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/l$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 316
    invoke-static {p0}, Lcom/dropbox/core/v2/fileproperties/l$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 300
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/v2/fileproperties/l;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/l$1;->a:[I

    .line 1121
    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/l;->c:Lcom/dropbox/core/v2/fileproperties/l$b;

    .line 265
    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/l$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const-string p1, "other"

    .line 279
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "restricted_content"

    .line 275
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 267
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "template_not_found"

    .line 268
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/l$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 269
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 270
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/l;->a(Lcom/dropbox/core/v2/fileproperties/l;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 271
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

    .line 260
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/l$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/fileproperties/l;

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

    .line 260
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/l;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/l$a;->a(Lcom/dropbox/core/v2/fileproperties/l;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
