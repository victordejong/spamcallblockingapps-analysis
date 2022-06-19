.class Lcom/facebook/login/t$1;
.super Ljava/lang/Object;
.source "WebViewLoginMethodHandler.java"

# interfaces
.implements Lcom/facebook/internal/z$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/t;->a(Lcom/facebook/login/j$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/j$c;

.field final synthetic b:Lcom/facebook/login/t;


# direct methods
.method constructor <init>(Lcom/facebook/login/t;Lcom/facebook/login/j$c;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/login/t$1;->b:Lcom/facebook/login/t;

    iput-object p2, p0, Lcom/facebook/login/t$1;->a:Lcom/facebook/login/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/login/t$1;->b:Lcom/facebook/login/t;

    iget-object v1, p0, Lcom/facebook/login/t$1;->a:Lcom/facebook/login/j$c;

    invoke-virtual {v0, v1, p1, p2}, Lcom/facebook/login/t;->b(Lcom/facebook/login/j$c;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 76
    return-void
.end method
