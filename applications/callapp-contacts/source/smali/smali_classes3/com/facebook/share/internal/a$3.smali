.class final Lcom/facebook/share/internal/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a$m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/a$e;

.field final synthetic b:Lcom/facebook/share/internal/a$g;

.field final synthetic c:Lcom/facebook/share/internal/a$m;

.field final synthetic d:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Lcom/facebook/share/internal/a$e;Lcom/facebook/share/internal/a$g;Lcom/facebook/share/internal/a$m;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/facebook/share/internal/a$3;->d:Lcom/facebook/share/internal/a;

    iput-object p2, p0, Lcom/facebook/share/internal/a$3;->a:Lcom/facebook/share/internal/a$e;

    iput-object p3, p0, Lcom/facebook/share/internal/a$3;->b:Lcom/facebook/share/internal/a$g;

    iput-object p4, p0, Lcom/facebook/share/internal/a$3;->c:Lcom/facebook/share/internal/a$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1124
    iget-object v0, p0, Lcom/facebook/share/internal/a$3;->d:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$3;->a:Lcom/facebook/share/internal/a$e;

    iget-object v1, v1, Lcom/facebook/share/internal/a$e;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1125
    iget-object v0, p0, Lcom/facebook/share/internal/a$3;->d:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/facebook/share/internal/a$3;->d:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$3;->b:Lcom/facebook/share/internal/a$g;

    iget-object v1, v1, Lcom/facebook/share/internal/a$g;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;

    .line 1127
    iget-object v0, p0, Lcom/facebook/share/internal/a$3;->d:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$3;->b:Lcom/facebook/share/internal/a$g;

    iget-boolean v1, v1, Lcom/facebook/share/internal/a$g;->f:Z

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->c(Lcom/facebook/share/internal/a;Z)Z

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a$3;->d:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1131
    sget-object v0, Lcom/facebook/m;->DEVELOPER_ERRORS:Lcom/facebook/m;

    .line 1133
    invoke-static {}, Lcom/facebook/share/internal/a;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/share/internal/a$3;->d:Lcom/facebook/share/internal/a;

    .line 1136
    invoke-static {v4}, Lcom/facebook/share/internal/a;->k(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to verify the FB id for \'%s\'. Verify that it is a valid FB object or page"

    .line 1131
    invoke-static {v0, v1, v3, v2}, Lcom/facebook/internal/x;->a(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1137
    iget-object v0, p0, Lcom/facebook/share/internal/a$3;->d:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$3;->b:Lcom/facebook/share/internal/a$g;

    .line 1139
    invoke-virtual {v1}, Lcom/facebook/share/internal/a$g;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/share/internal/a$3;->b:Lcom/facebook/share/internal/a$g;

    .line 1140
    invoke-virtual {v1}, Lcom/facebook/share/internal/a$g;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/facebook/share/internal/a$3;->a:Lcom/facebook/share/internal/a$e;

    .line 1141
    invoke-virtual {v1}, Lcom/facebook/share/internal/a$e;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    :goto_0
    const-string v2, "get_verified_id"

    .line 1137
    invoke-static {v0, v2, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1144
    :cond_2
    iget-object v0, p0, Lcom/facebook/share/internal/a$3;->c:Lcom/facebook/share/internal/a$m;

    if-eqz v0, :cond_3

    .line 1145
    invoke-interface {v0}, Lcom/facebook/share/internal/a$m;->a()V

    :cond_3
    return-void
.end method
