.class final Lcom/facebook/share/internal/a$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/a$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/facebook/share/internal/a;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/a;Landroid/os/Bundle;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    iput-object p2, p0, Lcom/facebook/share/internal/a$10;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 894
    iget-object v0, p0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    invoke-static {v0}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 896
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v2, "Invalid Object Id"

    .line 897
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v1, p0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v1, v2, v0}, Lcom/facebook/share/internal/a;->c(Lcom/facebook/share/internal/a;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 906
    :cond_0
    new-instance v0, Lcom/facebook/i;

    invoke-direct {v0}, Lcom/facebook/i;-><init>()V

    .line 907
    new-instance v1, Lcom/facebook/share/internal/a$k;

    iget-object v2, p0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    .line 908
    invoke-static {v2}, Lcom/facebook/share/internal/a;->h(Lcom/facebook/share/internal/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/share/internal/a$10;->b:Lcom/facebook/share/internal/a;

    invoke-static {v4}, Lcom/facebook/share/internal/a;->i(Lcom/facebook/share/internal/a;)Lcom/facebook/share/widget/LikeView$e;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/share/internal/a$k;-><init>(Lcom/facebook/share/internal/a;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;)V

    .line 909
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/a$k;->a(Lcom/facebook/i;)V

    .line 910
    new-instance v2, Lcom/facebook/share/internal/a$10$1;

    invoke-direct {v2, p0, v1}, Lcom/facebook/share/internal/a$10$1;-><init>(Lcom/facebook/share/internal/a$10;Lcom/facebook/share/internal/a$k;)V

    invoke-virtual {v0, v2}, Lcom/facebook/i;->a(Lcom/facebook/i$a;)V

    .line 1260
    invoke-static {v0}, Lcom/facebook/GraphRequest;->b(Lcom/facebook/i;)Lcom/facebook/h;

    return-void
.end method
