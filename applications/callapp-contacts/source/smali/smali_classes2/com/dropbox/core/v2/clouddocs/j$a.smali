.class final Lcom/dropbox/core/v2/clouddocs/j$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/clouddocs/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/clouddocs/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/clouddocs/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/clouddocs/j$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/clouddocs/j$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/clouddocs/j$a;->a:Lcom/dropbox/core/v2/clouddocs/j$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/clouddocs/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 61
    invoke-static {p0}, Lcom/dropbox/core/v2/clouddocs/j$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    invoke-static {p0}, Lcom/dropbox/core/v2/clouddocs/j$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 67
    invoke-static {p0}, Lcom/dropbox/core/v2/clouddocs/j$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "invalid_title"

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    sget-object v1, Lcom/dropbox/core/v2/clouddocs/j;->INVALID_TITLE:Lcom/dropbox/core/v2/clouddocs/j;

    goto :goto_1

    .line 76
    :cond_1
    sget-object v1, Lcom/dropbox/core/v2/clouddocs/j;->OTHER:Lcom/dropbox/core/v2/clouddocs/j;

    :goto_1
    if-nez v0, :cond_2

    .line 79
    invoke-static {p0}, Lcom/dropbox/core/v2/clouddocs/j$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 80
    invoke-static {p0}, Lcom/dropbox/core/v2/clouddocs/j$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_2
    return-object v1

    .line 70
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/dropbox/core/v2/clouddocs/j;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/dropbox/core/v2/clouddocs/j$1;->a:[I

    invoke-virtual {p0}, Lcom/dropbox/core/v2/clouddocs/j;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "other"

    .line 49
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "invalid_title"

    .line 45
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 38
    invoke-static {p1}, Lcom/dropbox/core/v2/clouddocs/j$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/clouddocs/j;

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

    .line 38
    check-cast p1, Lcom/dropbox/core/v2/clouddocs/j;

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/clouddocs/j$a;->a(Lcom/dropbox/core/v2/clouddocs/j;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
