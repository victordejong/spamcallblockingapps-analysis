.class final Lcom/google/api/client/auth/oauth2/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/auth/oauth2/d;->a()Lcom/google/api/client/http/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/client/auth/oauth2/d;


# direct methods
.method constructor <init>(Lcom/google/api/client/auth/oauth2/d;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/d$1;->a:Lcom/google/api/client/auth/oauth2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/d$1;->a:Lcom/google/api/client/auth/oauth2/d;

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/d;->a:Lcom/google/api/client/http/s;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/d$1;->a:Lcom/google/api/client/auth/oauth2/d;

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/d;->a:Lcom/google/api/client/http/s;

    invoke-interface {v0, p1}, Lcom/google/api/client/http/s;->a(Lcom/google/api/client/http/q;)V

    .line 1553
    :cond_0
    iget-object v0, p1, Lcom/google/api/client/http/q;->c:Lcom/google/api/client/http/m;

    .line 286
    new-instance v1, Lcom/google/api/client/auth/oauth2/d$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/api/client/auth/oauth2/d$1$1;-><init>(Lcom/google/api/client/auth/oauth2/d$1;Lcom/google/api/client/http/m;)V

    .line 1563
    iput-object v1, p1, Lcom/google/api/client/http/q;->c:Lcom/google/api/client/http/m;

    return-void
.end method
