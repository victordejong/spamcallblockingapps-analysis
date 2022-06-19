.class final Lcom/facebook/share/internal/a$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a$12;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/a$i;

.field final synthetic b:Lcom/facebook/share/internal/a$d;

.field final synthetic c:Lcom/facebook/share/internal/a$12;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a$12;Lcom/facebook/share/internal/a$i;Lcom/facebook/share/internal/a$d;)V
    .locals 0

    .line 1007
    iput-object p1, p0, Lcom/facebook/share/internal/a$12$1;->c:Lcom/facebook/share/internal/a$12;

    iput-object p2, p0, Lcom/facebook/share/internal/a$12$1;->a:Lcom/facebook/share/internal/a$i;

    iput-object p3, p0, Lcom/facebook/share/internal/a$12$1;->b:Lcom/facebook/share/internal/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1010
    iget-object v0, p0, Lcom/facebook/share/internal/a$12$1;->a:Lcom/facebook/share/internal/a$i;

    invoke-interface {v0}, Lcom/facebook/share/internal/a$i;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/share/internal/a$12$1;->b:Lcom/facebook/share/internal/a$d;

    .line 1011
    invoke-virtual {v0}, Lcom/facebook/share/internal/a$d;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a$12$1;->c:Lcom/facebook/share/internal/a$12;

    iget-object v1, v0, Lcom/facebook/share/internal/a$12;->a:Lcom/facebook/share/internal/a;

    iget-object v0, p0, Lcom/facebook/share/internal/a$12$1;->a:Lcom/facebook/share/internal/a$i;

    .line 1023
    invoke-interface {v0}, Lcom/facebook/share/internal/a$i;->b()Z

    move-result v2

    iget-object v0, p0, Lcom/facebook/share/internal/a$12$1;->b:Lcom/facebook/share/internal/a$d;

    iget-object v3, v0, Lcom/facebook/share/internal/a$d;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/share/internal/a$12$1;->b:Lcom/facebook/share/internal/a$d;

    iget-object v4, v0, Lcom/facebook/share/internal/a$d;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/share/internal/a$12$1;->b:Lcom/facebook/share/internal/a$d;

    iget-object v5, v0, Lcom/facebook/share/internal/a$d;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/share/internal/a$12$1;->b:Lcom/facebook/share/internal/a$d;

    iget-object v6, v0, Lcom/facebook/share/internal/a$d;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/share/internal/a$12$1;->a:Lcom/facebook/share/internal/a$i;

    .line 1028
    invoke-interface {v0}, Lcom/facebook/share/internal/a$i;->c()Ljava/lang/String;

    move-result-object v7

    .line 1022
    invoke-static/range {v1 .. v7}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1014
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    .line 1016
    invoke-static {}, Lcom/facebook/share/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/share/internal/a$12$1;->c:Lcom/facebook/share/internal/a$12;

    iget-object v4, v4, Lcom/facebook/share/internal/a$12;->a:Lcom/facebook/share/internal/a;

    .line 1018
    invoke-static {v4}, Lcom/facebook/share/internal/a;->k(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to refresh like state for id: \'%s\'"

    .line 1014
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
