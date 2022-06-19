.class public Lcom/google/android/gms/common/k;
.super Landroidx/fragment/app/c;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private ae:Landroid/app/Dialog;

.field private af:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/common/k;->ae:Landroid/app/Dialog;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/common/k;->af:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/k;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    new-instance v1, Lcom/google/android/gms/common/k;

    invoke-direct {v1}, Lcom/google/android/gms/common/k;-><init>()V

    .line 12
    const-string/jumbo v0, "Cannot display null dialog"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 13
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 15
    iput-object v0, v1, Lcom/google/android/gms/common/k;->ae:Landroid/app/Dialog;

    .line 16
    if-eqz p1, :cond_0

    .line 17
    iput-object p1, v1, Lcom/google/android/gms/common/k;->af:Landroid/content/DialogInterface$OnCancelListener;

    .line 18
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Landroidx/fragment/app/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/c;->a(Landroidx/fragment/app/i;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public c(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/k;->ae:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/k;->a(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/k;->ae:Landroid/app/Dialog;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/k;->af:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/k;->af:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 9
    :cond_0
    return-void
.end method
