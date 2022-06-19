.class final synthetic Lcom/google/android/gms/internal/ads/vb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ob;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ob;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vb;->a:Lcom/google/android/gms/internal/ads/ob;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/ob;)Lcom/google/android/gms/internal/ads/vu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/vb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vb;-><init>(Lcom/google/android/gms/internal/ads/ob;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vb;->a:Lcom/google/android/gms/internal/ads/ob;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ob;->zza()V

    return-void
.end method
