.class final synthetic Lcom/google/android/gms/internal/ads/aan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbbz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbbz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aan;->a:Lcom/google/android/gms/internal/ads/zzbbz;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/aan;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aan;-><init>(Lcom/google/android/gms/internal/ads/zzbbz;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aan;->a:Lcom/google/android/gms/internal/ads/zzbbz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbz;->b()V

    return-void
.end method
