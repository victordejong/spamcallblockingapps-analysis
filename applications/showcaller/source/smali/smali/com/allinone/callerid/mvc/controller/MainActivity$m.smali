.class Lcom/allinone/callerid/mvc/controller/MainActivity$m;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$m;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$m;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->v0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$m;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->z0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/google/android/gms/ads/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$m;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->z0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/google/android/gms/ads/d;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/e$a;-><init>()V

    const-class v1, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/e$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/e$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/d;->b(Lcom/google/android/gms/ads/e;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$m;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->w0(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)Z

    :cond_0
    return-void
.end method
