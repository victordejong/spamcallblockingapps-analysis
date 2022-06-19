.class public final Lcom/google/android/gms/ads/AdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.AdActivity"

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "AdActivity"


# instance fields
.field private zzacs:Lcom/google/android/gms/internal/ads/qz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final zzdq()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qz;->zzdq()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 81
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/qz;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 110
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    const-string v0, "#007 Could not call remote method."

    const/4 v1, 0x1

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v2, :cond_0

    .line 94
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/qz;->zzwh()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 97
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 100
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v1, :cond_1

    .line 101
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/qz;->onBackPressed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception v1

    .line 104
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qz;->zzae(Lcom/google/android/gms/dynamic/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 118
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v0

    .line 1043
    new-instance v1, Lcom/google/android/gms/internal/ads/ejn;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/ejn;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/app/Activity;)V

    .line 1045
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    .line 1046
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v0, "useClientJar flag not found in activity intent extras."

    .line 1047
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/za;->zzex(Ljava/lang/String;)V

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1050
    :goto_0
    invoke-virtual {v1, p0, v4}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/qz;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    const-string v1, "#007 Could not call remote method."

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void

    .line 9
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qz;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qz;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 74
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected final onPause()V
    .locals 2

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qz;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 50
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    .line 52
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected final onRestart()V
    .locals 2

    .line 15
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qz;->onRestart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 20
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected final onResume()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qz;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 43
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qz;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 58
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    .line 60
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qz;->onStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 28
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected final onStop()V
    .locals 2

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qz;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 66
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    .line 68
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method protected final onUserLeaveHint()V
    .locals 2

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacs:Lcom/google/android/gms/internal/ads/qz;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qz;->onUserLeaveHint()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 36
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzdq()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzdq()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 89
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzdq()V

    return-void
.end method
