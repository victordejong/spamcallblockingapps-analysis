.class final Lcom/dropbox/core/v1/DbxEntry$WithChildren$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader<",
        "Lcom/dropbox/core/v1/DbxEntry$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 678
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .line 682
    new-instance v0, Lcom/dropbox/core/util/a$a;

    invoke-direct {v0}, Lcom/dropbox/core/util/a$a;-><init>()V

    invoke-static {p1, v0}, Lcom/dropbox/core/v1/DbxEntry;->b(Lcom/fasterxml/jackson/core/JsonParser;Lcom/dropbox/core/util/a;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object p1

    .line 683
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$c;

    iget-object v1, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->a:Lcom/dropbox/core/v1/DbxEntry;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lcom/dropbox/core/v1/DbxEntry$c;-><init>(Lcom/dropbox/core/v1/DbxEntry;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public final bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .line 678
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$WithChildren$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v1/DbxEntry$c;

    move-result-object p1

    return-object p1
.end method
