.class public Lcom/facebook/login/widget/LoginButton$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/LoginButton;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$a;->b:Lcom/facebook/login/widget/LoginButton;

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnm0;->o(Ljava/lang/String;Z)Lmm0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$a;->b:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->o(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/facebook/login/widget/LoginButton$a$a;

    invoke-direct {v2, p0, v0}, Lcom/facebook/login/widget/LoginButton$a$a;-><init>(Lcom/facebook/login/widget/LoginButton$a;Lmm0;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
