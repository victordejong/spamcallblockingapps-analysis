.class Lcom/facebook/login/widget/LoginButton$b$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton$b;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/m;

.field final synthetic b:Lcom/facebook/login/widget/LoginButton$b;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/LoginButton$b;Lcom/facebook/login/m;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$b$1;->b:Lcom/facebook/login/widget/LoginButton$b;

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton$b$1;->a:Lcom/facebook/login/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$b$1;->a:Lcom/facebook/login/m;

    invoke-virtual {v0}, Lcom/facebook/login/m;->b()V

    .line 833
    return-void
.end method
