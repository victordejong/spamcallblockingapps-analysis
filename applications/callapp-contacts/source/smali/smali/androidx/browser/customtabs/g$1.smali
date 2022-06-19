.class final Landroidx/browser/customtabs/g$1;
.super Landroidx/browser/customtabs/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/g;-><init>(Landroid/support/a/a;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/browser/customtabs/g;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/g;)V
    .locals 0

    .line 122
    iput-object p1, p0, Landroidx/browser/customtabs/g$1;->a:Landroidx/browser/customtabs/g;

    invoke-direct {p0}, Landroidx/browser/customtabs/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 1

    .line 181
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/g$1;->a:Landroidx/browser/customtabs/g;

    iget-object v0, v0, Landroidx/browser/customtabs/g;->a:Landroid/support/a/a;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/a/a;->a(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 184
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 1

    .line 127
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/g$1;->a:Landroidx/browser/customtabs/g;

    iget-object v0, v0, Landroidx/browser/customtabs/g;->a:Landroid/support/a/a;

    invoke-interface {v0, p1, p2}, Landroid/support/a/a;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 129
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 160
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/g$1;->a:Landroidx/browser/customtabs/g;

    iget-object v0, v0, Landroidx/browser/customtabs/g;->a:Landroid/support/a/a;

    invoke-interface {v0, p1}, Landroid/support/a/a;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string v0, "RemoteException during ICustomTabsCallback transaction"

    .line 162
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 137
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/g$1;->a:Landroidx/browser/customtabs/g;

    iget-object v0, v0, Landroidx/browser/customtabs/g;->a:Landroid/support/a/a;

    invoke-interface {v0, p1, p2}, Landroid/support/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 139
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 149
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/g$1;->a:Landroidx/browser/customtabs/g;

    iget-object v0, v0, Landroidx/browser/customtabs/g;->a:Landroid/support/a/a;

    invoke-interface {v0, p1, p2}, Landroid/support/a/a;->c(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 151
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 170
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/g$1;->a:Landroidx/browser/customtabs/g;

    iget-object v0, v0, Landroidx/browser/customtabs/g;->a:Landroid/support/a/a;

    invoke-interface {v0, p1, p2}, Landroid/support/a/a;->b(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    .line 172
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
