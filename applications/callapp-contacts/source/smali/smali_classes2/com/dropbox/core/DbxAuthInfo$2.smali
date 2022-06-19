.class final Lcom/dropbox/core/DbxAuthInfo$2;
.super Lcom/dropbox/core/json/JsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonWriter<",
        "Lcom/dropbox/core/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/dropbox/core/d;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 144
    invoke-static {p1}, Lcom/dropbox/core/d;->a(Lcom/dropbox/core/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lcom/dropbox/core/d;->b(Lcom/dropbox/core/d;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p1}, Lcom/dropbox/core/d;->b(Lcom/dropbox/core/d;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "expires_at"

    invoke-virtual {p2, v2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumberField(Ljava/lang/String;J)V

    .line 148
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/d;->c(Lcom/dropbox/core/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {p1}, Lcom/dropbox/core/d;->c(Lcom/dropbox/core/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "refresh_token"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/d;->d(Lcom/dropbox/core/d;)Lcom/dropbox/core/e;

    move-result-object v0

    sget-object v1, Lcom/dropbox/core/e;->a:Lcom/dropbox/core/e;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "host"

    .line 152
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 153
    sget-object v0, Lcom/dropbox/core/e;->g:Lcom/dropbox/core/json/JsonWriter;

    invoke-static {p1}, Lcom/dropbox/core/d;->d(Lcom/dropbox/core/d;)Lcom/dropbox/core/e;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/json/JsonWriter;->write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 155
    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public final bridge synthetic write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    check-cast p1, Lcom/dropbox/core/d;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/DbxAuthInfo$2;->write(Lcom/dropbox/core/d;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
