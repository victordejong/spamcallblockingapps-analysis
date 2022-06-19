.class public final Lcom/dropbox/core/v2/sharing/c$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/sharing/c$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/c$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/c$a;->a:Lcom/dropbox/core/v2/sharing/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 73
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/c$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/c$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 79
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/c$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "owner"

    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    sget-object v1, Lcom/dropbox/core/v2/sharing/c;->OWNER:Lcom/dropbox/core/v2/sharing/c;

    goto :goto_1

    :cond_1
    const-string v2, "editors"

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    sget-object v1, Lcom/dropbox/core/v2/sharing/c;->EDITORS:Lcom/dropbox/core/v2/sharing/c;

    goto :goto_1

    .line 91
    :cond_2
    sget-object v1, Lcom/dropbox/core/v2/sharing/c;->OTHER:Lcom/dropbox/core/v2/sharing/c;

    :goto_1
    if-nez v0, :cond_3

    .line 94
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/c$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 95
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/c$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_3
    return-object v1

    .line 82
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/c;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/dropbox/core/v2/sharing/c$1;->a:[I

    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/c;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "other"

    .line 61
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "editors"

    .line 57
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "owner"

    .line 53
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

    .line 46
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/c$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/c;

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

    .line 46
    check-cast p1, Lcom/dropbox/core/v2/sharing/c;

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/c$a;->a(Lcom/dropbox/core/v2/sharing/c;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
