.class final synthetic Lcom/google/android/gms/internal/ads/la1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/oa1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oa1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/la1;->a:Lcom/google/android/gms/internal/ads/oa1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/la1;->a:Lcom/google/android/gms/internal/ads/oa1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oa1;->a()Lcom/google/android/gms/internal/ads/na1;

    move-result-object v0

    return-object v0
.end method
