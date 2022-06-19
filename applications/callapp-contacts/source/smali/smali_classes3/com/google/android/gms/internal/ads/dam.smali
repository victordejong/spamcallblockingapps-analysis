.class final Lcom/google/android/gms/internal/ads/dam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cyt;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dak;Lcom/google/android/gms/internal/ads/cyt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dam;->b:Lcom/google/android/gms/internal/ads/dak;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dam;->a:Lcom/google/android/gms/internal/ads/cyt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dam;->b:Lcom/google/android/gms/internal/ads/dak;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dam;->a:Lcom/google/android/gms/internal/ads/cyt;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dak;->a(Lcom/google/android/gms/internal/ads/dak;Lcom/google/android/gms/internal/ads/cyt;)V

    return-void
.end method
