.class public final Lcom/google/android/gms/internal/base/zal;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zaa:Lcom/google/android/gms/internal/base/zam;

.field private static volatile zab:Lcom/google/android/gms/internal/base/zam;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/base/zan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/zan;-><init>(Lcom/google/android/gms/internal/base/zao;)V

    sput-object v0, Lcom/google/android/gms/internal/base/zal;->zaa:Lcom/google/android/gms/internal/base/zam;

    sput-object v0, Lcom/google/android/gms/internal/base/zal;->zab:Lcom/google/android/gms/internal/base/zam;

    return-void
.end method

.method public static zaa()Lcom/google/android/gms/internal/base/zam;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/base/zal;->zab:Lcom/google/android/gms/internal/base/zam;

    return-object v0
.end method
