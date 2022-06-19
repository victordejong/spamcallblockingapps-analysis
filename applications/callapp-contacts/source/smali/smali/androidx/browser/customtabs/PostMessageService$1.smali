.class final Landroidx/browser/customtabs/PostMessageService$1;
.super Landroid/support/a/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/browser/customtabs/PostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/browser/customtabs/PostMessageService;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/PostMessageService;)V
    .locals 0

    .line 34
    iput-object p1, p0, Landroidx/browser/customtabs/PostMessageService$1;->a:Landroidx/browser/customtabs/PostMessageService;

    invoke-direct {p0}, Landroid/support/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/a/a;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    invoke-interface {p1, p2}, Landroid/support/a/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/support/a/a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    invoke-interface {p1, p2, p3}, Landroid/support/a/a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
