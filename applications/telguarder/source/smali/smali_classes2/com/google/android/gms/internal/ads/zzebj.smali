.class public abstract Lcom/google/android/gms/internal/ads/zzebj;
.super Lcom/google/android/gms/internal/ads/zzeax;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzemo;",
        "PublicKeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzemo;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzeax<",
        "TKeyProtoT;>;"
    }
.end annotation


# instance fields
.field private final zzibw:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPublicKeyProtoT;>;[",
            "Lcom/google/android/gms/internal/ads/zzeaz<",
            "*TKeyProtoT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzeax;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/zzeaz;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebj;->zzibw:Ljava/lang/Class;

    return-void
.end method
