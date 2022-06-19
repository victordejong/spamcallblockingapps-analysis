.class public Lcom/facebook/login/widget/DeviceLoginButton$b;
.super Lcom/facebook/login/widget/LoginButton$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/DeviceLoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lcom/facebook/login/widget/DeviceLoginButton;


# direct methods
.method public constructor <init>(Lcom/facebook/login/widget/DeviceLoginButton;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/login/widget/DeviceLoginButton$b;->b:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton$e;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/login/widget/DeviceLoginButton;Lcom/facebook/login/widget/DeviceLoginButton$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/login/widget/DeviceLoginButton$b;-><init>(Lcom/facebook/login/widget/DeviceLoginButton;)V

    return-void
.end method


# virtual methods
.method public a()Lwn0;
    .locals 2

    invoke-static {}, Lrn0;->C()Lrn0;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/widget/DeviceLoginButton$b;->b:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getDefaultAudience()Lqn0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwn0;->u(Lqn0;)Lwn0;

    sget-object v1, Ltn0;->o:Ltn0;

    invoke-virtual {v0, v1}, Lwn0;->w(Ltn0;)Lwn0;

    iget-object v1, p0, Lcom/facebook/login/widget/DeviceLoginButton$b;->b:Lcom/facebook/login/widget/DeviceLoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/DeviceLoginButton;->getDeviceRedirectUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrn0;->D(Landroid/net/Uri;)V

    return-object v0
.end method
