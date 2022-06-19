.class final synthetic Lcom/google/android/gms/internal/ads/cfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cfb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cfb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cfa;->a:Lcom/google/android/gms/internal/ads/cfb;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cfa;->a:Lcom/google/android/gms/internal/ads/cfb;

    .line 1006
    new-instance v1, Lcom/google/android/gms/internal/ads/cey;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cfb;->a:Lcom/google/android/gms/internal/ads/cot;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/cey;-><init>(Lcom/google/android/gms/internal/ads/cot;)V

    return-object v1
.end method
