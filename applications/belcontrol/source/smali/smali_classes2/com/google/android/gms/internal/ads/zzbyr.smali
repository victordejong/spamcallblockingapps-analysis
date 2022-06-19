.class public final synthetic Lcom/google/android/gms/internal/ads/zzbyr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwh;


# static fields
.field public static final zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbyr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbyr;->zzfzg:Lcom/google/android/gms/internal/ads/zzbwh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzo(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoEnd()V

    return-void
.end method
