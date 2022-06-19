.class public final Lcom/google/android/gms/common/api/internal/zacb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zaa:Lcom/google/android/gms/common/api/internal/zacc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacb;->zaa:Lcom/google/android/gms/common/api/internal/zacc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacb;->zaa:Lcom/google/android/gms/common/api/internal/zacc;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zacc;->zaa(Lcom/google/android/gms/common/api/internal/zacc;)Lcom/google/android/gms/common/api/internal/zacd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zacd;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
