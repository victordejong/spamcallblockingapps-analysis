.class final synthetic Lcom/google/android/gms/internal/ads/ap1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vo1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vo1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ap1;->a:Lcom/google/android/gms/internal/ads/vo1;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ap1;->a:Lcom/google/android/gms/internal/ads/vo1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vo1;->zza()V

    const/4 v0, 0x0

    return-object v0
.end method
