.class Lcom/facebook/login/m$3;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/m;->a(Lcom/facebook/login/r;Lcom/facebook/login/j$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/m;


# direct methods
.method constructor <init>(Lcom/facebook/login/m;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/facebook/login/m$3;->a:Lcom/facebook/login/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/facebook/login/m$3;->a:Lcom/facebook/login/m;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/login/m;->a(ILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method
