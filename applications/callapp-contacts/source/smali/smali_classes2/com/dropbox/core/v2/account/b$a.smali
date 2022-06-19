.class public final Lcom/dropbox/core/v2/account/b$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/account/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/account/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/account/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/account/b$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/account/b$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/account/b$a;->a:Lcom/dropbox/core/v2/account/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/account/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 92
    invoke-static {p0}, Lcom/dropbox/core/v2/account/b$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    invoke-static {p0}, Lcom/dropbox/core/v2/account/b$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 98
    invoke-static {p0}, Lcom/dropbox/core/v2/account/b$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "file_type_error"

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    sget-object v1, Lcom/dropbox/core/v2/account/b;->FILE_TYPE_ERROR:Lcom/dropbox/core/v2/account/b;

    goto :goto_1

    :cond_1
    const-string v2, "file_size_error"

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    sget-object v1, Lcom/dropbox/core/v2/account/b;->FILE_SIZE_ERROR:Lcom/dropbox/core/v2/account/b;

    goto :goto_1

    :cond_2
    const-string v2, "dimension_error"

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    sget-object v1, Lcom/dropbox/core/v2/account/b;->DIMENSION_ERROR:Lcom/dropbox/core/v2/account/b;

    goto :goto_1

    :cond_3
    const-string v2, "thumbnail_error"

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    sget-object v1, Lcom/dropbox/core/v2/account/b;->THUMBNAIL_ERROR:Lcom/dropbox/core/v2/account/b;

    goto :goto_1

    :cond_4
    const-string v2, "transient_error"

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    sget-object v1, Lcom/dropbox/core/v2/account/b;->TRANSIENT_ERROR:Lcom/dropbox/core/v2/account/b;

    goto :goto_1

    .line 119
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/account/b;->OTHER:Lcom/dropbox/core/v2/account/b;

    :goto_1
    if-nez v0, :cond_6

    .line 122
    invoke-static {p0}, Lcom/dropbox/core/v2/account/b$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 123
    invoke-static {p0}, Lcom/dropbox/core/v2/account/b$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 101
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/dropbox/core/v2/account/b;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/dropbox/core/v2/account/b$1;->a:[I

    invoke-virtual {p0}, Lcom/dropbox/core/v2/account/b;->ordinal()I

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

    .line 80
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "transient_error"

    .line 76
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "thumbnail_error"

    .line 72
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "dimension_error"

    .line 68
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "file_size_error"

    .line 64
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "file_type_error"

    .line 60
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

    .line 53
    invoke-static {p1}, Lcom/dropbox/core/v2/account/b$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/account/b;

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

    .line 53
    check-cast p1, Lcom/dropbox/core/v2/account/b;

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/account/b$a;->a(Lcom/dropbox/core/v2/account/b;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
