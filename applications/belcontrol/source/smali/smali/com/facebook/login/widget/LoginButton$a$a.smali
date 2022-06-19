.class public Lcom/facebook/login/widget/LoginButton$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmm0;

.field public final synthetic b:Lcom/facebook/login/widget/LoginButton$a;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/LoginButton$a;Lmm0;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$a$a;->b:Lcom/facebook/login/widget/LoginButton$a;

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton$a$a;->a:Lmm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$a$a;->b:Lcom/facebook/login/widget/LoginButton$a;

    iget-object v0, v0, Lcom/facebook/login/widget/LoginButton$a;->b:Lcom/facebook/login/widget/LoginButton;

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$a$a;->a:Lmm0;

    invoke-static {v0, v1}, Lcom/facebook/login/widget/LoginButton;->n(Lcom/facebook/login/widget/LoginButton;Lmm0;)V

    return-void
.end method
