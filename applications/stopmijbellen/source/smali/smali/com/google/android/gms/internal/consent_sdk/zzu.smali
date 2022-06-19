.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ls4/c$b;


# direct methods
.method public synthetic constructor <init>(Ls4/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->zza:Ls4/c$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzu;->zza:Ls4/c$b;

    check-cast v0, Ly2/l;

    iget-object v0, v0, Ly2/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/mglab/scm/MainActivity;

    .line 1
    iget-object v1, v0, Lcom/mglab/scm/MainActivity;->r:Ls4/c;

    invoke-interface {v1}, Ls4/c;->isConsentFormAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lz2/q;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lz2/q;-><init>(Ljava/lang/Object;I)V

    sget-object v2, Lz2/p;->f:Lz2/p;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/consent_sdk/zzd;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/consent_sdk/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzd;->zzc()Lcom/google/android/gms/internal/consent_sdk/zzba;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/zzba;->zza(Ls4/g;Ls4/f;)V

    :cond_0
    return-void
.end method
