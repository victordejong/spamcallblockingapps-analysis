.class public final Lcom/google/android/gms/internal/ads/i23;
.super Lcom/google/android/gms/internal/ads/q13;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/o13;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/ads/mf3;",
        "PublicKeyProtoT::",
        "Lcom/google/android/gms/internal/ads/mf3;",
        ">",
        "Lcom/google/android/gms/internal/ads/q13<",
        "TPrimitiveT;TKeyProtoT;>;",
        "Lcom/google/android/gms/internal/ads/o13<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/j23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/j23<",
            "TKeyProtoT;TPublicKeyProtoT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/w13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/w13<",
            "TPublicKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/j23;Lcom/google/android/gms/internal/ads/w13;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/j23<",
            "TKeyProtoT;TPublicKeyProtoT;>;",
            "Lcom/google/android/gms/internal/ads/w13<",
            "TPublicKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/q13;-><init>(Lcom/google/android/gms/internal/ads/w13;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i23;->c:Lcom/google/android/gms/internal/ads/j23;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/i23;->d:Lcom/google/android/gms/internal/ads/w13;

    return-void
.end method
