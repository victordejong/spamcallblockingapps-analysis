.class final Lcom/google/android/gms/internal/ads/ik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/daq<",
        "Lcom/google/android/gms/internal/ads/if;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzaiy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ih;Lcom/google/android/gms/internal/ads/zzaiy;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ik;->a:Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/if;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ik;->a:Lcom/google/android/gms/internal/ads/zzaiy;

    new-instance v2, Lcom/google/android/gms/internal/ads/ij;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/ij;-><init>(Lcom/google/android/gms/internal/ads/ik;Lcom/google/android/gms/internal/ads/zp;)V

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/if;->a(Lcom/google/android/gms/internal/ads/zzaiy;Lcom/google/android/gms/internal/ads/id;)V

    return-object v0
.end method
