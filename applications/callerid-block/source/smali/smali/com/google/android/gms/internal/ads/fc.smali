.class final synthetic Lcom/google/android/gms/internal/ads/fc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/pb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/pb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fc;->b:Lcom/google/android/gms/internal/ads/pb;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/pb;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/fc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/fc;-><init>(Lcom/google/android/gms/internal/ads/pb;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fc;->b:Lcom/google/android/gms/internal/ads/pb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pb;->i()V

    return-void
.end method
