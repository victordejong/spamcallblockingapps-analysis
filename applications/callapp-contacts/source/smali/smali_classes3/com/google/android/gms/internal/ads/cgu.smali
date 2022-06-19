.class final synthetic Lcom/google/android/gms/internal/ads/cgu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cgr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cgr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgu;->a:Lcom/google/android/gms/internal/ads/cgr;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgu;->a:Lcom/google/android/gms/internal/ads/cgr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cgr;->b()Lcom/google/android/gms/internal/ads/cgy;

    move-result-object v0

    return-object v0
.end method
