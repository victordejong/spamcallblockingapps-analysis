.class public final Lcom/google/android/gms/common/internal/service/zaf;
.super Lcom/google/android/gms/common/internal/service/zag;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/service/zac;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/service/zag;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/internal/service/zaj;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/zak;

    new-instance v0, Lcom/google/android/gms/common/internal/service/zae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/service/zae;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/service/zak;->zaa(Lcom/google/android/gms/common/internal/service/zai;)V

    return-void
.end method
