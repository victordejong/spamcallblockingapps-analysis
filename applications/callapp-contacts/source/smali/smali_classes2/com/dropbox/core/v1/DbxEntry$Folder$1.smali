.class final Lcom/dropbox/core/v1/DbxEntry$Folder$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader<",
        "Lcom/dropbox/core/v1/DbxEntry$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    const/4 v1, 0x0

    .line 159
    invoke-static {p1, v1}, Lcom/dropbox/core/v1/DbxEntry;->b(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/a;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object p1

    iget-object p1, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->a:Lcom/dropbox/core/v1/DbxEntry;

    .line 160
    instance-of v1, p1, Lcom/dropbox/core/v1/DbxEntry$b;

    if-eqz v1, :cond_0

    .line 163
    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$b;

    return-object p1

    .line 161
    :cond_0
    new-instance p1, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "Expecting a file entry, got a folder entry"

    invoke-direct {p1, v1, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw p1
.end method

.method public final bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$Folder$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$b;

    move-result-object p1

    return-object p1
.end method
