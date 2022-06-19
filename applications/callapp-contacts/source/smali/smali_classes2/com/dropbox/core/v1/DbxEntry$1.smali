.class final Lcom/dropbox/core/v1/DbxEntry$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader<",
        "Lcom/dropbox/core/v1/DbxEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 617
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 621
    invoke-static {p1, v0}, Lcom/dropbox/core/v1/DbxEntry;->b(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/a;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object p1

    iget-object p1, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->a:Lcom/dropbox/core/v1/DbxEntry;

    return-object p1
.end method

.method public final bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .line 617
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry;

    move-result-object p1

    return-object p1
.end method
