.class final synthetic Lcom/google/android/gms/internal/ads/bwr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/biv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/biv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwr;->a:Lcom/google/android/gms/internal/ads/biv;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/biv;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/bwr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bwr;-><init>(Lcom/google/android/gms/internal/ads/biv;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwr;->a:Lcom/google/android/gms/internal/ads/biv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/biv;->a()V

    return-void
.end method
