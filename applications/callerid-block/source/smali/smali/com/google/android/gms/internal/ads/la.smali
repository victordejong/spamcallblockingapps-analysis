.class final Lcom/google/android/gms/internal/ads/la;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uy1<",
        "Lcom/google/android/gms/internal/ads/ja;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzalw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pa;Lcom/google/android/gms/internal/ads/zzalw;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/la;->a:Lcom/google/android/gms/internal/ads/zzalw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/ja;

    new-instance v0, Lcom/google/android/gms/internal/ads/fp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fp;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/la;->a:Lcom/google/android/gms/internal/ads/zzalw;

    new-instance v2, Lcom/google/android/gms/internal/ads/ka;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/ka;-><init>(Lcom/google/android/gms/internal/ads/la;Lcom/google/android/gms/internal/ads/fp;)V

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/ja;->w4(Lcom/google/android/gms/internal/ads/zzalw;Lcom/google/android/gms/internal/ads/ia;)V

    return-object v0
.end method
