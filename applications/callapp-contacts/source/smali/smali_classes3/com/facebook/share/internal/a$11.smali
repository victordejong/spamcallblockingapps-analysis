.class final Lcom/facebook/share/internal/a$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/share/internal/a$l;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Lcom/facebook/share/internal/a$l;Landroid/os/Bundle;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/facebook/share/internal/a$11;->c:Lcom/facebook/share/internal/a;

    iput-object p2, p0, Lcom/facebook/share/internal/a$11;->a:Lcom/facebook/share/internal/a$l;

    iput-object p3, p0, Lcom/facebook/share/internal/a$11;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 952
    iget-object v0, p0, Lcom/facebook/share/internal/a$11;->c:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->j(Lcom/facebook/share/internal/a;)Z

    .line 954
    iget-object v0, p0, Lcom/facebook/share/internal/a$11;->a:Lcom/facebook/share/internal/a$l;

    invoke-virtual {v0}, Lcom/facebook/share/internal/a$l;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/facebook/share/internal/a$11;->c:Lcom/facebook/share/internal/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Z)V

    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/facebook/share/internal/a$11;->c:Lcom/facebook/share/internal/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Ljava/lang/String;)Ljava/lang/String;

    .line 960
    iget-object v0, p0, Lcom/facebook/share/internal/a$11;->c:Lcom/facebook/share/internal/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->b(Lcom/facebook/share/internal/a;Z)Z

    .line 962
    iget-object v0, p0, Lcom/facebook/share/internal/a$11;->c:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->g(Lcom/facebook/share/internal/a;)Lcom/facebook/appevents/m;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/share/internal/a$11;->b:Landroid/os/Bundle;

    const-string v2, "fb_like_control_did_unlike"

    .line 963
    invoke-virtual {v0, v2, v1}, Lcom/facebook/appevents/m;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 968
    iget-object v0, p0, Lcom/facebook/share/internal/a$11;->c:Lcom/facebook/share/internal/a;

    iget-object v1, p0, Lcom/facebook/share/internal/a$11;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;Landroid/os/Bundle;)V

    return-void
.end method
