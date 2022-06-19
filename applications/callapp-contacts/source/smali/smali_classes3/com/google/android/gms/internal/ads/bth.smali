.class final synthetic Lcom/google/android/gms/internal/ads/bth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/adt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/adt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bth;->a:Lcom/google/android/gms/internal/ads/adt;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/adt;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bth;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bth;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bth;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->P()V

    return-void
.end method
