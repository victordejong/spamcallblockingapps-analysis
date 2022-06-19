.class final Lcom/dropbox/core/v2/files/s$a;
.super Lcom/dropbox/core/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/e<",
        "Lcom/dropbox/core/v2/files/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/v2/files/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/dropbox/core/v2/files/s$a;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/s$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/s$a;->a:Lcom/dropbox/core/v2/files/s$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 159
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

    .line 1185
    invoke-static {p1}, Lcom/dropbox/core/v2/files/s$a;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1186
    invoke-static {p1}, Lcom/dropbox/core/v2/files/s$a;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_8

    move-object v1, v0

    move-object v2, v1

    .line 1192
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_4

    .line 1193
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 1194
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const-string v4, "read_only"

    .line 1195
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 1196
    invoke-virtual {v0, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const-string v4, "parent_shared_folder_id"

    .line 1198
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2052
    sget-object v1, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1199
    invoke-virtual {v1, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v4, "modified_by"

    .line 1201
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3052
    sget-object v2, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 1202
    invoke-static {v2}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/a/c;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 1205
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/files/s$a;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    .line 1214
    new-instance v3, Lcom/dropbox/core/v2/files/s;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v3, v0, v1, v2}, Lcom/dropbox/core/v2/files/s;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_5

    .line 1220
    invoke-static {p1}, Lcom/dropbox/core/v2/files/s$a;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 1222
    :cond_5
    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/s;->a()Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/core/a/b;->a(Ljava/lang/Object;)V

    return-object v3

    .line 1212
    :cond_6
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"parent_shared_folder_id\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1209
    :cond_7
    new-instance p2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v0, "Required field \"read_only\" missing."

    invoke-direct {p2, p1, v0}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw p2

    .line 1217
    :cond_8
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 159
    check-cast p1, Lcom/dropbox/core/v2/files/s;

    if-nez p3, :cond_0

    .line 3165
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    :cond_0
    const-string v0, "read_only"

    .line 3167
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4044
    sget-object v0, Lcom/dropbox/core/a/d$a;->a:Lcom/dropbox/core/a/d$a;

    .line 3168
    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/s;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    const-string v0, "parent_shared_folder_id"

    .line 3169
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 4052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 3170
    iget-object v1, p1, Lcom/dropbox/core/v2/files/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3171
    iget-object v0, p1, Lcom/dropbox/core/v2/files/s;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "modified_by"

    .line 3172
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 5052
    sget-object v0, Lcom/dropbox/core/a/d$h;->a:Lcom/dropbox/core/a/d$h;

    .line 3173
    invoke-static {v0}, Lcom/dropbox/core/a/d;->a(Lcom/dropbox/core/a/c;)Lcom/dropbox/core/a/c;

    move-result-object v0

    iget-object p1, p1, Lcom/dropbox/core/v2/files/s;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/a/c;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :cond_1
    if-nez p3, :cond_2

    .line 3176
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    :cond_2
    return-void
.end method
