.class Lcom/facebook/login/m$b;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/login/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/facebook/internal/n;


# direct methods
.method constructor <init>(Lcom/facebook/internal/n;)V
    .locals 1

    .prologue
    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    const-string/jumbo v0, "fragment"

    invoke-static {p1, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 928
    iput-object p1, p0, Lcom/facebook/login/m$b;->a:Lcom/facebook/internal/n;

    .line 929
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/facebook/login/m$b;->a:Lcom/facebook/internal/n;

    invoke-virtual {v0}, Lcom/facebook/internal/n;->c()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/facebook/login/m$b;->a:Lcom/facebook/internal/n;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/internal/n;->a(Landroid/content/Intent;I)V

    .line 934
    return-void
.end method
