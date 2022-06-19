.class Lcom/facebook/login/c$5;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/c;->a(Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/c;


# direct methods
.method constructor <init>(Lcom/facebook/login/c;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/facebook/login/c$5;->a:Lcom/facebook/login/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/login/c$5;->a:Lcom/facebook/login/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/login/c;->l(Z)Landroid/view/View;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/facebook/login/c$5;->a:Lcom/facebook/login/c;

    invoke-static {v1}, Lcom/facebook/login/c;->g(Lcom/facebook/login/c;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 380
    iget-object v0, p0, Lcom/facebook/login/c$5;->a:Lcom/facebook/login/c;

    iget-object v1, p0, Lcom/facebook/login/c$5;->a:Lcom/facebook/login/c;

    invoke-static {v1}, Lcom/facebook/login/c;->f(Lcom/facebook/login/c;)Lcom/facebook/login/j$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/c;->a(Lcom/facebook/login/j$c;)V

    .line 381
    return-void
.end method
