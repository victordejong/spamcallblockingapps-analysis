.class final Lcom/google/api/client/auth/oauth2/d$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/auth/oauth2/d$1;->a(Lcom/google/api/client/http/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/client/http/m;

.field final synthetic b:Lcom/google/api/client/auth/oauth2/d$1;


# direct methods
.method constructor <init>(Lcom/google/api/client/auth/oauth2/d$1;Lcom/google/api/client/http/m;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/d$1$1;->b:Lcom/google/api/client/auth/oauth2/d$1;

    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/d$1$1;->a:Lcom/google/api/client/http/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lcom/google/api/client/http/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/d$1$1;->a:Lcom/google/api/client/http/m;

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0, p1}, Lcom/google/api/client/http/m;->intercept(Lcom/google/api/client/http/q;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/d$1$1;->b:Lcom/google/api/client/auth/oauth2/d$1;

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/d$1;->a:Lcom/google/api/client/auth/oauth2/d;

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/d;->b:Lcom/google/api/client/http/m;

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/d$1$1;->b:Lcom/google/api/client/auth/oauth2/d$1;

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/d$1;->a:Lcom/google/api/client/auth/oauth2/d;

    iget-object v0, v0, Lcom/google/api/client/auth/oauth2/d;->b:Lcom/google/api/client/http/m;

    invoke-interface {v0, p1}, Lcom/google/api/client/http/m;->intercept(Lcom/google/api/client/http/q;)V

    :cond_1
    return-void
.end method
