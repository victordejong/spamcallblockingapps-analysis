.class public final synthetic Lcom/google/android/gms/internal/ads/zzbep;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzesh:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzesh:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbep;->zzesh:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbeq;->zzar(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void
.end method
