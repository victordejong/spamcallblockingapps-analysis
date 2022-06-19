.class final Lcom/dropbox/core/DbxHost$2;
.super Lcom/dropbox/core/json/JsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonWriter<",
        "Lcom/dropbox/core/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/dropbox/core/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-static {p1}, Lcom/dropbox/core/e;->a(Lcom/dropbox/core/e;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void

    .line 191
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 192
    invoke-static {p1}, Lcom/dropbox/core/e;->b(Lcom/dropbox/core/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "api"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {p1}, Lcom/dropbox/core/e;->c(Lcom/dropbox/core/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {p1}, Lcom/dropbox/core/e;->d(Lcom/dropbox/core/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "web"

    invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/dropbox/core/e;->e(Lcom/dropbox/core/e;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "notify"

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
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

    .line 184
    check-cast p1, Lcom/dropbox/core/e;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/DbxHost$2;->write(Lcom/dropbox/core/e;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
