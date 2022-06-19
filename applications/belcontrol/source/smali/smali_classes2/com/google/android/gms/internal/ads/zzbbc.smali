.class public final Lcom/google/android/gms/internal/ads/zzbbc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzekp:Lcom/google/android/gms/internal/ads/zzbax;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbax;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzekp:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbc;->zzekp:Lcom/google/android/gms/internal/ads/zzbax;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "surfaceCreated"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Lcom/google/android/gms/internal/ads/zzbax;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
