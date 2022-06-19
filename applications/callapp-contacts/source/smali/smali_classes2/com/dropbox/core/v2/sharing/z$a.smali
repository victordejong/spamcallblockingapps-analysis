.class public final Lcom/dropbox/core/v2/sharing/z$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/sharing/z$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/z$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/z$a;->a:Lcom/dropbox/core/v2/sharing/z$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/z;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 96
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/z$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 101
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/z$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 102
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/z$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "public"

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    sget-object v1, Lcom/dropbox/core/v2/sharing/z;->PUBLIC:Lcom/dropbox/core/v2/sharing/z;

    goto :goto_1

    :cond_1
    const-string v2, "team"

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    sget-object v1, Lcom/dropbox/core/v2/sharing/z;->TEAM:Lcom/dropbox/core/v2/sharing/z;

    goto :goto_1

    :cond_2
    const-string v2, "no_one"

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    sget-object v1, Lcom/dropbox/core/v2/sharing/z;->NO_ONE:Lcom/dropbox/core/v2/sharing/z;

    goto :goto_1

    :cond_3
    const-string v2, "password"

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    sget-object v1, Lcom/dropbox/core/v2/sharing/z;->PASSWORD:Lcom/dropbox/core/v2/sharing/z;

    goto :goto_1

    :cond_4
    const-string v2, "members"

    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    sget-object v1, Lcom/dropbox/core/v2/sharing/z;->MEMBERS:Lcom/dropbox/core/v2/sharing/z;

    goto :goto_1

    .line 123
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/sharing/z;->OTHER:Lcom/dropbox/core/v2/sharing/z;

    :goto_1
    if-nez v0, :cond_6

    .line 126
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/z$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 127
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/z$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 105
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/z;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/dropbox/core/v2/sharing/z$1;->a:[I

    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/z;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "other"

    .line 84
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "members"

    .line 80
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "password"

    .line 76
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "no_one"

    .line 72
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "team"

    .line 68
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "public"

    .line 64
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

    .line 57
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/z$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/z;

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

    .line 57
    check-cast p1, Lcom/dropbox/core/v2/sharing/z;

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/z$a;->a(Lcom/dropbox/core/v2/sharing/z;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
