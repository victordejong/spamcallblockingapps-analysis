.class final synthetic Lcom/google/android/gms/internal/ads/bhj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzx;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/asp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/asp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bhj;->a:Lcom/google/android/gms/internal/ads/asp;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/asp;)Lcom/google/android/gms/ads/internal/overlay/zzx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bhj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bhj;-><init>(Lcom/google/android/gms/internal/ads/asp;)V

    return-object v0
.end method


# virtual methods
.method public final zzws()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhj;->a:Lcom/google/android/gms/internal/ads/asp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/asp;->b()V

    return-void
.end method
