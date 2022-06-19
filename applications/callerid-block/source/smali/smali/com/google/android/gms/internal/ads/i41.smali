.class final synthetic Lcom/google/android/gms/internal/ads/i41;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vu;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/jt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/i41;->a:Lcom/google/android/gms/internal/ads/jt;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/jt;)Lcom/google/android/gms/internal/ads/vu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/i41;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/i41;-><init>(Lcom/google/android/gms/internal/ads/jt;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/i41;->a:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->S()V

    return-void
.end method
