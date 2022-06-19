.class public final Lcom/google/android/gms/internal/ads/zzazx;
.super Lcom/google/android/gms/internal/ads/zzbaa;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzbaa<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzeim:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbaa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazx;->zzeim:Ljava/lang/Object;

    return-void
.end method

.method public static zzk(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzazx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/ads/zzazx<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazx;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzazx;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final zzaac()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazx;->zzeim:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbaa;->set(Ljava/lang/Object;)Z

    return-void
.end method
