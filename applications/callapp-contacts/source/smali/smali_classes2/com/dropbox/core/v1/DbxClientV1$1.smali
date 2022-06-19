.class final Lcom/dropbox/core/v1/DbxClientV1$1;
.super Lcom/dropbox/core/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/i$b<",
        "Lcom/dropbox/core/v1/DbxEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/v1/DbxClientV1;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v1/DbxClientV1;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$1;->a:Lcom/dropbox/core/v1/DbxClientV1;

    invoke-direct {p0}, Lcom/dropbox/core/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1140
    iget v0, p1, Lcom/dropbox/core/http/a$b;->a:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2140
    :cond_0
    iget v0, p1, Lcom/dropbox/core/http/a$b;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 1134
    sget-object v0, Lcom/dropbox/core/v1/DbxEntry;->f:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry;

    return-object p1

    .line 1132
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/http/a$b;)Lcom/dropbox/core/DbxException;

    move-result-object p1

    throw p1
.end method
