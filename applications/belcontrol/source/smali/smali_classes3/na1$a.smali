.class public Lna1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lna1;->v(Lna1$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lna1$g;

.field public final synthetic b:Lna1;


# direct methods
.method public constructor <init>(Lna1;Lna1$g;)V
    .locals 0

    iput-object p1, p0, Lna1$a;->b:Lna1;

    iput-object p2, p0, Lna1$a;->a:Lna1$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object p1, p0, Lna1$a;->b:Lna1;

    iget-boolean v0, p1, Lna1;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Billing service connected."

    invoke-virtual {p1, v0}, Lna1;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lna1$a;->b:Lna1;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    iput-object p2, p1, Lna1;->j:Lcom/android/vending/billing/IInAppBillingService;

    iget-object p1, p0, Lna1$a;->b:Lna1;

    iget-object p1, p1, Lna1;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lna1$a;->b:Lna1;

    const-string v0, "Checking for in-app billing 3 support."

    invoke-virtual {p2, v0}, Lna1;->n(Ljava/lang/String;)V

    iget-object p2, p0, Lna1$a;->b:Lna1;

    iget-object p2, p2, Lna1;->j:Lcom/android/vending/billing/IInAppBillingService;

    const-string v0, "inapp"

    const/4 v1, 0x3

    invoke-interface {p2, v1, p1, v0}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p1, p0, Lna1$a;->a:Lna1$g;

    if-eqz p1, :cond_1

    new-instance v1, Loa1;

    const-string v2, "Error checking for billing v3 support."

    invoke-direct {v1, p2, v2}, Loa1;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lna1$g;->a(Loa1;)V

    :cond_1
    iget-object p1, p0, Lna1$a;->b:Lna1;

    iput-boolean v0, p1, Lna1;->e:Z

    return-void

    :cond_2
    iget-object p2, p0, Lna1$a;->b:Lna1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lna1;->n(Ljava/lang/String;)V

    iget-object p2, p0, Lna1$a;->b:Lna1;

    iget-object p2, p2, Lna1;->j:Lcom/android/vending/billing/IInAppBillingService;

    const-string v2, "subs"

    invoke-interface {p2, v1, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lna1$a;->b:Lna1;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {p1, v1}, Lna1;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lna1$a;->b:Lna1;

    iput-boolean p2, p1, Lna1;->e:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lna1$a;->b:Lna1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lna1;->n(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lna1$a;->b:Lna1;

    iput-boolean p2, p1, Lna1;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lna1$a;->a:Lna1$g;

    if-eqz p1, :cond_4

    new-instance p2, Loa1;

    const-string v1, "Setup successful."

    invoke-direct {p2, v0, v1}, Loa1;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lna1$g;->a(Loa1;)V

    :cond_4
    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lna1$a;->a:Lna1$g;

    if-eqz p2, :cond_5

    new-instance v0, Loa1;

    const/16 v1, -0x3e9

    const-string v2, "RemoteException while setting up in-app billing."

    invoke-direct {v0, v1, v2}, Loa1;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lna1$g;->a(Loa1;)V

    :cond_5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lna1$a;->b:Lna1;

    const-string v0, "Billing service disconnected."

    invoke-virtual {p1, v0}, Lna1;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lna1$a;->b:Lna1;

    const/4 v0, 0x0

    iput-object v0, p1, Lna1;->j:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
