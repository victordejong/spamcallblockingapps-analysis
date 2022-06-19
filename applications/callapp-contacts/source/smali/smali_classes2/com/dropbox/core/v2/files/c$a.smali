.class final Lcom/dropbox/core/v2/files/c$a;
.super Lcom/dropbox/core/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/f<",
        "Lcom/dropbox/core/v2/files/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    new-instance v0, Lcom/dropbox/core/v2/files/c$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/c$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/c$a;->a:Lcom/dropbox/core/v2/files/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Lcom/dropbox/core/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1210
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1212
    invoke-static {p1}, Lcom/dropbox/core/v2/files/c$a;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 1213
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1217
    invoke-static {p1}, Lcom/dropbox/core/v2/files/c$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1218
    invoke-static {p1}, Lcom/dropbox/core/v2/files/c$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    const-string v2, "path"

    .line 1223
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1225
    invoke-static {v2, p1}, Lcom/dropbox/core/v2/files/c$a;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1226
    sget-object v1, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/bl;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2113
    new-instance v2, Lcom/dropbox/core/v2/files/c;

    invoke-direct {v2}, Lcom/dropbox/core/v2/files/c;-><init>()V

    sget-object v2, Lcom/dropbox/core/v2/files/c$b;->PATH:Lcom/dropbox/core/v2/files/c$b;

    .line 3064
    new-instance v3, Lcom/dropbox/core/v2/files/c;

    invoke-direct {v3}, Lcom/dropbox/core/v2/files/c;-><init>()V

    .line 3065
    iput-object v2, v3, Lcom/dropbox/core/v2/files/c;->a:Lcom/dropbox/core/v2/files/c$b;

    .line 3066
    iput-object v1, v3, Lcom/dropbox/core/v2/files/c;->b:Lcom/dropbox/core/v2/files/bl;

    if-nez v0, :cond_1

    .line 1233
    invoke-static {p1}, Lcom/dropbox/core/v2/files/c$a;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1234
    invoke-static {p1}, Lcom/dropbox/core/v2/files/c$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    :cond_1
    return-object v3

    .line 2111
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1230
    :cond_3
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown tag: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0

    .line 1221
    :cond_4
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 185
    check-cast p1, Lcom/dropbox/core/v2/files/c;

    .line 3190
    sget-object v0, Lcom/dropbox/core/v2/files/c$1;->a:[I

    .line 4082
    iget-object v1, p1, Lcom/dropbox/core/v2/files/c;->a:Lcom/dropbox/core/v2/files/c$b;

    .line 3190
    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/c$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3192
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    const-string v0, "path"

    .line 3193
    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/c$a;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3194
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 3195
    sget-object v0, Lcom/dropbox/core/v2/files/bl$a;->a:Lcom/dropbox/core/v2/files/bl$a;

    .line 5025
    iget-object p1, p1, Lcom/dropbox/core/v2/files/c;->b:Lcom/dropbox/core/v2/files/bl;

    .line 3195
    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/v2/files/bl$a;->a(Lcom/dropbox/core/v2/files/bl;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3196
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void

    .line 3200
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5082
    iget-object p1, p1, Lcom/dropbox/core/v2/files/c;->a:Lcom/dropbox/core/v2/files/c$b;

    .line 3200
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
