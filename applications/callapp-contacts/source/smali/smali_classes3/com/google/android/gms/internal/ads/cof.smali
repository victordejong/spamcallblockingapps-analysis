.class final synthetic Lcom/google/android/gms/internal/ads/cof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cnc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/cnc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cof;->a:Lcom/google/android/gms/internal/ads/cnc;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/cnc;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/cof;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cof;-><init>(Lcom/google/android/gms/internal/ads/cnc;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cof;->a:Lcom/google/android/gms/internal/ads/cnc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cnc;->a()V

    return-void
.end method
