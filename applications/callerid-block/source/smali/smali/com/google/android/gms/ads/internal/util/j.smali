.class final synthetic Lcom/google/android/gms/ads/internal/util/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/ads/internal/util/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/j;->b:Lcom/google/android/gms/ads/internal/util/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/j;->b:Lcom/google/android/gms/ads/internal/util/l;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/l;->h()V

    return-void
.end method
