.class final Lcom/dropbox/core/v2/sharing/bm$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/sharing/bm;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/bm$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/bm$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/bm$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/bm$a;->a:Lcom/dropbox/core/v2/sharing/bm$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 98
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bm$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bm$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 104
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bm$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_7

    const-string v2, "no_permission"

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    sget-object v1, Lcom/dropbox/core/v2/sharing/bm;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/bm;

    goto :goto_1

    :cond_1
    const-string v2, "invalid_file"

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    sget-object v1, Lcom/dropbox/core/v2/sharing/bm;->INVALID_FILE:Lcom/dropbox/core/v2/sharing/bm;

    goto :goto_1

    :cond_2
    const-string v2, "is_folder"

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    sget-object v1, Lcom/dropbox/core/v2/sharing/bm;->IS_FOLDER:Lcom/dropbox/core/v2/sharing/bm;

    goto :goto_1

    :cond_3
    const-string v2, "inside_public_folder"

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    sget-object v1, Lcom/dropbox/core/v2/sharing/bm;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/bm;

    goto :goto_1

    :cond_4
    const-string v2, "inside_osx_package"

    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    sget-object v1, Lcom/dropbox/core/v2/sharing/bm;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/bm;

    goto :goto_1

    .line 125
    :cond_5
    sget-object v1, Lcom/dropbox/core/v2/sharing/bm;->OTHER:Lcom/dropbox/core/v2/sharing/bm;

    :goto_1
    if-nez v0, :cond_6

    .line 128
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bm$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 129
    invoke-static {p0}, Lcom/dropbox/core/v2/sharing/bm$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_6
    return-object v1

    .line 107
    :cond_7
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/dropbox/core/v2/sharing/bm;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/dropbox/core/v2/sharing/bm$1;->a:[I

    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/bm;->ordinal()I

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

    .line 86
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "inside_osx_package"

    .line 82
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "inside_public_folder"

    .line 78
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "is_folder"

    .line 74
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "invalid_file"

    .line 70
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "no_permission"

    .line 66
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

    .line 59
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/bm;

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

    .line 59
    check-cast p1, Lcom/dropbox/core/v2/sharing/bm;

    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/bm$a;->a(Lcom/dropbox/core/v2/sharing/bm;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
