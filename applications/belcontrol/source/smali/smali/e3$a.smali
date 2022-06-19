.class public Le3$a;
.super Landroid/support/customtabs/ICustomTabsCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le3;->b(Ld3;)Landroid/support/customtabs/ICustomTabsCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public final synthetic b:Ld3;


# direct methods
.method public constructor <init>(Le3;Ld3;)V
    .locals 0

    iput-object p2, p0, Le3$a;->b:Ld3;

    invoke-direct {p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le3$a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Le3$a;->b:Ld3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le3$a;->a:Landroid/os/Handler;

    new-instance v1, Le3$a$b;

    invoke-direct {v1, p0, p1, p2}, Le3$a$b;-><init>(Le3$a;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Le3$a;->b:Ld3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Ld3;->b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    throw v1
.end method

.method public onMessageChannelReady(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Le3$a;->b:Ld3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le3$a;->a:Landroid/os/Handler;

    new-instance v1, Le3$a$c;

    invoke-direct {v1, p0, p1}, Le3$a$c;-><init>(Le3$a;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Le3$a;->b:Ld3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le3$a;->a:Landroid/os/Handler;

    new-instance v1, Le3$a$a;

    invoke-direct {v1, p0, p1, p2}, Le3$a$a;-><init>(Le3$a;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Le3$a;->b:Ld3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le3$a;->a:Landroid/os/Handler;

    new-instance v1, Le3$a$d;

    invoke-direct {v1, p0, p1, p2}, Le3$a$d;-><init>(Le3$a;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Le3$a;->b:Ld3;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le3$a;->a:Landroid/os/Handler;

    new-instance v7, Le3$a$e;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Le3$a$e;-><init>(Le3$a;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
