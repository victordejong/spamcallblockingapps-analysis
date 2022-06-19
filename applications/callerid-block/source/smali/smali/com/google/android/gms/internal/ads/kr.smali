.class final synthetic Lcom/google/android/gms/internal/ads/kr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/mr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/mr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kr;->a:Lcom/google/android/gms/internal/ads/mr;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kr;->a:Lcom/google/android/gms/internal/ads/mr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mr;->l()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
