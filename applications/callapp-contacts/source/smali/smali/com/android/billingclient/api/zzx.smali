.class final Lcom/android/billingclient/api/zzx;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/h;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/d;Landroid/os/Handler;Lcom/android/billingclient/api/h;)V
    .locals 0

    iput-object p3, p0, Lcom/android/billingclient/api/zzx;->zza:Lcom/android/billingclient/api/h;

    .line 1
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 1000
    iput p1, v0, Lcom/android/billingclient/api/g$a;->a:I

    const-string p1, "BillingClient"

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/f/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2000
    iput-object p1, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object p1

    iget-object p2, p0, Lcom/android/billingclient/api/zzx;->zza:Lcom/android/billingclient/api/h;

    .line 4
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/h;->c(Lcom/android/billingclient/api/g;)V

    return-void
.end method
