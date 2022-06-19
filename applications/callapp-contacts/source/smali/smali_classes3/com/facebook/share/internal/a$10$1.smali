.class final Lcom/facebook/share/internal/a$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a$10;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/a$k;

.field final synthetic b:Lcom/facebook/share/internal/a$10;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a$10;Lcom/facebook/share/internal/a$k;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/a$10;

    iput-object p2, p0, Lcom/facebook/share/internal/a$10$1;->a:Lcom/facebook/share/internal/a$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 914
    iget-object v0, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/a$10;

    iget-object v0, v0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->j(Lcom/facebook/share/internal/a;)Z

    .line 916
    iget-object v0, p0, Lcom/facebook/share/internal/a$10$1;->a:Lcom/facebook/share/internal/a$k;

    invoke-virtual {v0}, Lcom/facebook/share/internal/a$k;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/a$10;

    iget-object v0, v0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Z)V

    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/a$10;

    iget-object v0, v0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$10$1;->a:Lcom/facebook/share/internal/a$k;

    iget-object v1, v1, Lcom/facebook/share/internal/a$k;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;

    .line 923
    iget-object v0, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/a$10;

    iget-object v0, v0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;Z)Z

    .line 925
    iget-object v0, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/a$10;

    iget-object v0, v0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->g(Lcom/facebook/share/internal/a;)Lcom/facebook/appevents/m;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/a$10;

    iget-object v1, v1, Lcom/facebook/share/internal/a$10;->a:Landroid/os/Bundle;

    const-string v2, "fb_like_control_did_like"

    .line 926
    invoke-virtual {v0, v2, v1}, Lcom/facebook/appevents/m;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 931
    iget-object v0, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/a$10;

    iget-object v0, v0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$10$1;->b:Lcom/facebook/share/internal/a$10;

    iget-object v1, v1, Lcom/facebook/share/internal/a$10;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Landroid/os/Bundle;)V

    return-void
.end method
