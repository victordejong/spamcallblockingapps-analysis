.class public final Lcom/google/android/gms/internal/ads/zzebk;
.super Lcom/google/android/gms/internal/ads/zzeav;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeaw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzemo;",
        "PublicKeyProtoT::",
        "Lcom/google/android/gms/internal/ads/zzemo;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzeav<",
        "TPrimitiveT;TKeyProtoT;>;",
        "Lcom/google/android/gms/internal/ads/zzeaw<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final zzibx:Lcom/google/android/gms/internal/ads/zzebj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzebj<",
            "TKeyProtoT;TPublicKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final zziby:Lcom/google/android/gms/internal/ads/zzeax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeax<",
            "TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzebj;Lcom/google/android/gms/internal/ads/zzeax;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzebj<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/ads/zzeax<",
            "TPublicKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzeav;-><init>(Lcom/google/android/gms/internal/ads/zzeax;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebk;->zzibx:Lcom/google/android/gms/internal/ads/zzebj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebk;->zziby:Lcom/google/android/gms/internal/ads/zzeax;

    return-void
.end method
