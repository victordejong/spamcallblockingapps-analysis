.class final synthetic Lcom/google/android/gms/internal/ads/ik1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dk1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dk1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ik1;->b:Lcom/google/android/gms/internal/ads/dk1;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/dk1;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ik1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ik1;-><init>(Lcom/google/android/gms/internal/ads/dk1;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ik1;->b:Lcom/google/android/gms/internal/ads/dk1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dk1;->s()V

    return-void
.end method
