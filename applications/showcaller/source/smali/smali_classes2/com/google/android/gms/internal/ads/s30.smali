.class final Lcom/google/android/gms/internal/ads/s30;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uz2<",
        "Lcom/google/android/gms/internal/ads/q30;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbqy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/w30;Lcom/google/android/gms/internal/ads/zzbqy;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s30;->a:Lcom/google/android/gms/internal/ads/zzbqy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/q30;

    new-instance v0, Lcom/google/android/gms/internal/ads/vi0;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/vi0;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s30;->a:Lcom/google/android/gms/internal/ads/zzbqy;

    new-instance v2, Lcom/google/android/gms/internal/ads/r30;

    .line 3
    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/r30;-><init>(Lcom/google/android/gms/internal/ads/s30;Lcom/google/android/gms/internal/ads/vi0;)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/q30;->a3(Lcom/google/android/gms/internal/ads/zzbqy;Lcom/google/android/gms/internal/ads/p30;)V

    return-object v0
.end method
