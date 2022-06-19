.class Lcom/facebook/login/k$2;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/facebook/login/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/facebook/login/k;


# direct methods
.method constructor <init>(Lcom/facebook/login/k;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/facebook/login/k$2;->b:Lcom/facebook/login/k;

    iput-object p2, p0, Lcom/facebook/login/k$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/login/k$2;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/login/k$2;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-void
.end method
