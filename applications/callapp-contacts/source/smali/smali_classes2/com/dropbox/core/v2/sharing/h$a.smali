.class final Lcom/dropbox/core/v2/sharing/h$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/sharing/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/sharing/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Lcom/dropbox/core/v2/sharing/h$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/h$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/h$a;->a:Lcom/dropbox/core/v2/sharing/h$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/dropbox/core/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1147
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/h$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1148
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/h$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_7

    move-object v1, v0

    .line 1153
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_3

    .line 1154
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 1155
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, "count"

    .line 1156
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2028
    sget-object v0, Lcom/dropbox/core/a/d$e;->a:Lcom/dropbox/core/a/d$e;

    .line 1157
    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_1

    :cond_1
    const-string v3, "exceptions"

    .line 1159
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1160
    sget-object v1, Lcom/dropbox/core/v2/sharing/g$a;->a:Lcom/dropbox/core/v2/sharing/g$a;

    invoke-static {v1}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 1163
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/h$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 1172
    new-instance v2, Lcom/dropbox/core/v2/sharing/h;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v1}, Lcom/dropbox/core/v2/sharing/h;-><init>(JLjava/util/List;)V

    if-nez p2, :cond_4

    .line 1178
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/h$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 2119
    :cond_4
    sget-object p1, Lcom/dropbox/core/v2/sharing/h$a;->a:Lcom/dropbox/core/v2/sharing/h$a;

    const/4 p2, 0x1

    invoke-virtual {p1, v2, p2}, Lcom/dropbox/core/v2/sharing/h$a;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    .line 1180
    invoke-static {v2}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v2

    .line 1170
    :cond_5
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"exceptions\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1167
    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"count\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1175
    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No subtype found that matches tag: \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 125
    check-cast p1, Lcom/dropbox/core/v2/sharing/h;

    if-nez p3, :cond_0

    .line 2131
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "count"

    .line 2133
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3028
    sget-object v0, Lcom/dropbox/core/a/d$e;->a:Lcom/dropbox/core/a/d$e;

    .line 2134
    iget-wide v1, p1, Lcom/dropbox/core/v2/sharing/h;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "exceptions"

    .line 2135
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 2136
    sget-object v0, Lcom/dropbox/core/v2/sharing/g$a;->a:Lcom/dropbox/core/v2/sharing/g$a;

    invoke-static {v0}, Lcom/dropbox/core/a/d;->b(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/sharing/h;->b:Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    if-nez p3, :cond_1

    .line 2138
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_1
    return-void
.end method
