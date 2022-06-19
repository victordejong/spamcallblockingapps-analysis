.class final Lcom/dropbox/core/oauth/a$1;
.super Lcom/dropbox/core/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/oauth/a;->a(Lcom/dropbox/core/h;Lcom/dropbox/core/e;)Lcom/dropbox/core/oauth/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/i$b<",
        "Lcom/dropbox/core/oauth/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dropbox/core/oauth/a;


# direct methods
.method constructor <init>(Lcom/dropbox/core/oauth/a;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/dropbox/core/oauth/a$1;->a:Lcom/dropbox/core/oauth/a;

    invoke-direct {p0}, Lcom/dropbox/core/i$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 2140
    iget v0, p1, Lcom/dropbox/core/http/a$b;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1213
    sget-object v0, Lcom/dropbox/core/oauth/c;->d:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v0, p1}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/oauth/c;

    return-object p1

    .line 1207
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/i;->c(Lcom/dropbox/core/http/a$b;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    sget-object v1, Lcom/dropbox/core/oauth/b;->d:Lcom/dropbox/core/json/JsonReader;

    invoke-static {v1, p1}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/a$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/oauth/b;

    .line 1211
    new-instance v1, Lcom/dropbox/core/oauth/DbxOAuthException;

    invoke-direct {v1, v0, p1}, Lcom/dropbox/core/oauth/DbxOAuthException;-><init>(Ljava/lang/String;Lcom/dropbox/core/oauth/b;)V

    throw v1
.end method
