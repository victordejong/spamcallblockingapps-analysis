.class final synthetic Lcom/google/android/gms/internal/ads/bch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bcz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bcz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bch;->a:Lcom/google/android/gms/internal/ads/bcz;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/bcz;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bch;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bch;-><init>(Lcom/google/android/gms/internal/ads/bcz;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bch;->a:Lcom/google/android/gms/internal/ads/bcz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bcz;->f()V

    return-void
.end method
