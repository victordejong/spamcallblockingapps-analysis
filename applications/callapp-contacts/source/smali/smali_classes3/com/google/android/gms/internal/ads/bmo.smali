.class final synthetic Lcom/google/android/gms/internal/ads/bmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmo;->a:Lcom/google/android/gms/internal/ads/bmi;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmo;->a:Lcom/google/android/gms/internal/ads/bmi;

    .line 1145
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bmi;->d:Lcom/google/android/gms/internal/ads/zp;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return-object v0
.end method
