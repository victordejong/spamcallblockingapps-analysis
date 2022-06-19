.class public final Lcom/dropbox/core/v2/c/c$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/c/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    new-instance v0, Lcom/dropbox/core/v2/c/c$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/c/c$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/c/c$a;->a:Lcom/dropbox/core/v2/c/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method

.method private static a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/c/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 160
    invoke-static {p0}, Lcom/dropbox/core/v2/c/c$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 161
    invoke-static {p0}, Lcom/dropbox/core/v2/c/c$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    if-nez v2, :cond_7

    move-object v0, v1

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, "root_namespace_id"

    .line 172
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 173
    invoke-virtual {v1, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v3, "home_namespace_id"

    .line 175
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 176
    invoke-virtual {v0, p0}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 179
    :cond_3
    invoke-static {p0}, Lcom/dropbox/core/v2/c/c$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    .line 188
    new-instance v2, Lcom/dropbox/core/v2/c/c;

    invoke-direct {v2, v1, v0}, Lcom/dropbox/core/v2/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_5
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"home_namespace_id\" missing."

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_6
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"root_namespace_id\" missing."

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 191
    invoke-static {p0, v1}, Lcom/dropbox/core/v2/c/c$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/c/c;

    move-result-object v2

    goto :goto_1

    :cond_8
    const-string v0, "team"

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    sget-object v0, Lcom/dropbox/core/v2/c/d$a;->a:Lcom/dropbox/core/v2/c/d$a;

    invoke-static {p0, v1}, Lcom/dropbox/core/v2/c/d$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/c/d;

    move-result-object v2

    goto :goto_1

    :cond_9
    const-string v0, "user"

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 197
    sget-object v0, Lcom/dropbox/core/v2/c/e$a;->a:Lcom/dropbox/core/v2/c/e$a;

    invoke-static {p0, v1}, Lcom/dropbox/core/v2/c/e$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/c/e;

    move-result-object v2

    :goto_1
    if-nez p1, :cond_a

    .line 203
    invoke-static {p0}, Lcom/dropbox/core/v2/c/c$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 205
    :cond_a
    invoke-virtual {v2}, Lcom/dropbox/core/v2/c/c;->a()Ljava/lang/String;

    invoke-static {v2}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v2

    .line 200
    :cond_b
    new-instance p1, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No subtype found that matches tag: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p1
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

    .line 130
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/c/c$a;->a(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 130
    check-cast p1, Lcom/dropbox/core/v2/c/c;

    .line 2135
    instance-of v0, p1, Lcom/dropbox/core/v2/c/d;

    if-eqz v0, :cond_0

    .line 2136
    sget-object v0, Lcom/dropbox/core/v2/c/d$a;->a:Lcom/dropbox/core/v2/c/d$a;

    check-cast p1, Lcom/dropbox/core/v2/c/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/c/d$a;->a(Lcom/dropbox/core/v2/c/d;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    .line 2139
    :cond_0
    instance-of v0, p1, Lcom/dropbox/core/v2/c/e;

    if-eqz v0, :cond_1

    .line 2140
    sget-object v0, Lcom/dropbox/core/v2/c/e$a;->a:Lcom/dropbox/core/v2/c/e$a;

    check-cast p1, Lcom/dropbox/core/v2/c/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/v2/c/e$a;->a(Lcom/dropbox/core/v2/c/e;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 2144
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_2
    const-string v0, "root_namespace_id"

    .line 2146
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 2147
    iget-object v1, p1, Lcom/dropbox/core/v2/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "home_namespace_id"

    .line 2148
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 2149
    iget-object p1, p1, Lcom/dropbox/core/v2/c/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p3, :cond_3

    .line 2151
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_3
    return-void
.end method
