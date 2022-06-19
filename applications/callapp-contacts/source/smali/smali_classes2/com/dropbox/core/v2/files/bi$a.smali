.class final Lcom/dropbox/core/v2/files/bi$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/files/bi;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/bi$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/dropbox/core/v2/files/bi$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/bi$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/bi$a;->a:Lcom/dropbox/core/v2/files/bi$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/bi;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 141
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bi$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 142
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bi$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_7

    move-object v1, v0

    .line 147
    :goto_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, "reason"

    .line 150
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    sget-object v0, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p0}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v3, "upload_session_id"

    .line 153
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 154
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 157
    :cond_2
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bi$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 166
    new-instance v2, Lcom/dropbox/core/v2/files/bi;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/v2/files/bi;-><init>(Lcom/dropbox/core/v2/files/bl;Ljava/lang/String;)V

    if-nez p1, :cond_4

    .line 172
    invoke-static {p0}, Lcom/dropbox/core/v2/files/bi$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2113
    :cond_4
    sget-object p0, Lcom/dropbox/core/v2/files/bi$a;->a:Lcom/dropbox/core/v2/files/bi$a;

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/dropbox/core/v2/files/bi$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    .line 174
    invoke-static {v2}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v2

    .line 164
    :cond_5
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"upload_session_id\" missing."

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1

    .line 161
    :cond_6
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"reason\" missing."

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_7
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No subtype found that matches tag: \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/dropbox/core/v2/files/bi;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 125
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "reason"

    .line 127
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/bi;->a:Lcom/dropbox/core/v2/files/bl;

    invoke-virtual {v0, v1, p1}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/dropbox/core/v2/files/bl;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "upload_session_id"

    .line 129
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 1052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 130
    iget-object p0, p0, Lcom/dropbox/core/v2/files/bi;->b:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p2, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 119
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/bi$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/bi;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 119
    check-cast p1, Lcom/dropbox/core/v2/files/bi;

    invoke-static {p1, p2, p3}, Lcom/dropbox/core/v2/files/bi$a;->a(Lcom/dropbox/core/v2/files/bi;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
