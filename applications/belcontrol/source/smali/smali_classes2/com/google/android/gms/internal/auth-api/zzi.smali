.class public final Lcom/google/android/gms/internal/auth-api/zzi;
.super Lcom/google/android/gms/internal/auth-api/zzo;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/auth-api/zzo<",
        "Lcom/google/android/gms/auth/api/credentials/CredentialRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzan:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth-api/zzj;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/auth-api/zzi;->zzan:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth-api/zzo;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/auth-api/zzg;->zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/auth-api/zzg;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Landroid/content/Context;Lcom/google/android/gms/internal/auth-api/zzx;)V
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/auth-api/zzl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/auth-api/zzl;-><init>(Lcom/google/android/gms/internal/auth-api/zzi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zzi;->zzan:Lcom/google/android/gms/auth/api/credentials/CredentialRequest;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/auth-api/zzx;->zzc(Lcom/google/android/gms/internal/auth-api/zzv;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V

    return-void
.end method
