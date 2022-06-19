.class final Lcom/dropbox/core/v2/sharing/bc$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/bc;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bc$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/sharing/bc$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bc$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bc$a;->a:Lcom/dropbox/core/v2/sharing/bc$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 87
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bc$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bc$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 93
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bc$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "invalid_id"

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc;->INVALID_ID:Lcom/dropbox/core/v2/sharing/bc;

    goto :goto_1

    :cond_1
    const-string v2, "not_a_member"

    .line 101
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc;->NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/bc;

    goto :goto_1

    :cond_2
    const-string v2, "email_unverified"

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/bc;

    goto :goto_1

    :cond_3
    const-string v2, "unmounted"

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc;->UNMOUNTED:Lcom/dropbox/core/v2/sharing/bc;

    goto :goto_1

    .line 111
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/sharing/bc;->OTHER:Lcom/dropbox/core/v2/sharing/bc;

    :goto_1
    if-nez v0, :cond_5

    .line 114
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bc$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 115
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bc$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 96
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bc;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/dropbox/core/v2/sharing/bc$1;->a:[I

    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/bc;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "other"

    .line 75
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "unmounted"

    .line 71
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "email_unverified"

    .line 67
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "not_a_member"

    .line 63
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "invalid_id"

    .line 59
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

    .line 52
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bc;

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

    .line 52
    check-cast p1, Lcom/dropbox/core/v2/sharing/bc;

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bc$a;->a(Lcom/dropbox/core/v2/sharing/bc;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
