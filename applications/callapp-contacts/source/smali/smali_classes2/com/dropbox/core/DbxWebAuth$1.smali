.class final Lcom/dropbox/core/DbxWebAuth$1;
.super Lcom/dropbox/core/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxWebAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/i$b<",
        "Lcom/dropbox/core/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dropbox/core/DbxWebAuth;


# direct methods
.method constructor <init>(Lcom/dropbox/core/DbxWebAuth;Ljava/lang/String;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/dropbox/core/DbxWebAuth$1;->b:Lcom/dropbox/core/DbxWebAuth;

    iput-object p2, p0, Lcom/dropbox/core/DbxWebAuth$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dropbox/core/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2140
    iget v0, p1, Lcom/dropbox/core/http/a$b;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 1455
    sget-object v0, Lcom/dropbox/core/c;->j:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/c;

    iget-object v7, p0, Lcom/dropbox/core/DbxWebAuth$1;->a:Ljava/lang/String;

    .line 2196
    iget-object v0, p1, Lcom/dropbox/core/c;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2200
    new-instance v9, Lcom/dropbox/core/c;

    iget-object v1, p1, Lcom/dropbox/core/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/c;->b:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/c;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/dropbox/core/c;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/dropbox/core/c;->f:Ljava/lang/String;

    iget-object v6, p1, Lcom/dropbox/core/c;->e:Ljava/lang/String;

    iget-object v8, p1, Lcom/dropbox/core/c;->i:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/c;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    iget-wide v0, p1, Lcom/dropbox/core/c;->h:J

    .line 3186
    iput-wide v0, v9, Lcom/dropbox/core/c;->h:J

    return-object v9

    .line 2197
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already have URL state."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1453
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/http/a$b;)Lcom/dropbox/core/DbxException;

    move-result-object p1

    throw p1
.end method
