.class public final synthetic Lcom/google/android/gms/internal/auth-api/zzat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzbr:Lcom/google/android/gms/internal/auth-api/zzao;

.field private final zzbt:Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth-api/zzao;Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth-api/zzat;->zzbr:Lcom/google/android/gms/internal/auth-api/zzao;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth-api/zzat;->zzbt:Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth-api/zzat;->zzbr:Lcom/google/android/gms/internal/auth-api/zzao;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth-api/zzat;->zzbt:Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zzaw;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/gms/internal/auth-api/zzax;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/auth-api/zzax;-><init>(Lcom/google/android/gms/internal/auth-api/zzao;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth-api/zzai;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;

    invoke-interface {p1, v2, p2}, Lcom/google/android/gms/internal/auth-api/zzai;->zzc(Lcom/google/android/gms/internal/auth-api/zzae;Lcom/google/android/gms/auth/api/identity/GetSignInIntentRequest;)V

    return-void
.end method
