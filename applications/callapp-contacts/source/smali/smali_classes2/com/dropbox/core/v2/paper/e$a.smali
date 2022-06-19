.class final Lcom/dropbox/core/v2/paper/e$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/paper/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/paper/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/dropbox/core/v2/paper/e$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/e$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/e$a;->a:Lcom/dropbox/core/v2/paper/e$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 85
    invoke-static {p0}, Lcom/dropbox/core/v2/paper/e$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    invoke-static {p0}, Lcom/dropbox/core/v2/paper/e$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 91
    invoke-static {p0}, Lcom/dropbox/core/v2/paper/e$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string v2, "expired_cursor"

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    sget-object v1, Lcom/dropbox/core/v2/paper/e;->EXPIRED_CURSOR:Lcom/dropbox/core/v2/paper/e;

    goto :goto_1

    :cond_1
    const-string v2, "invalid_cursor"

    .line 99
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    sget-object v1, Lcom/dropbox/core/v2/paper/e;->INVALID_CURSOR:Lcom/dropbox/core/v2/paper/e;

    goto :goto_1

    :cond_2
    const-string v2, "wrong_user_in_cursor"

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    sget-object v1, Lcom/dropbox/core/v2/paper/e;->WRONG_USER_IN_CURSOR:Lcom/dropbox/core/v2/paper/e;

    goto :goto_1

    :cond_3
    const-string v2, "reset"

    .line 105
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    sget-object v1, Lcom/dropbox/core/v2/paper/e;->RESET:Lcom/dropbox/core/v2/paper/e;

    goto :goto_1

    .line 109
    :cond_4
    sget-object v1, Lcom/dropbox/core/v2/paper/e;->OTHER:Lcom/dropbox/core/v2/paper/e;

    :goto_1
    if-nez v0, :cond_5

    .line 112
    invoke-static {p0}, Lcom/dropbox/core/v2/paper/e$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 113
    invoke-static {p0}, Lcom/dropbox/core/v2/paper/e$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_5
    return-object v1

    .line 94
    :cond_6
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/dropbox/core/v2/paper/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/dropbox/core/v2/paper/e$1;->a:[I

    invoke-virtual {p0}, Lcom/dropbox/core/v2/paper/e;->ordinal()I

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

    .line 73
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "reset"

    .line 69
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "wrong_user_in_cursor"

    .line 65
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "invalid_cursor"

    .line 61
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "expired_cursor"

    .line 57
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

    .line 50
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/e$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/e;

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

    .line 50
    check-cast p1, Lcom/dropbox/core/v2/paper/e;

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/paper/e$a;->a(Lcom/dropbox/core/v2/paper/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
