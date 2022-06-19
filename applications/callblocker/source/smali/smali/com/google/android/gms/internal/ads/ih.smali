.class final synthetic Lcom/google/android/gms/internal/ads/ih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hs;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/id;

.field private final b:Lcom/google/android/gms/internal/ads/iu;

.field private final c:Lcom/google/android/gms/internal/ads/hp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/hp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ih;->a:Lcom/google/android/gms/internal/ads/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ih;->b:Lcom/google/android/gms/internal/ads/iu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ih;->c:Lcom/google/android/gms/internal/ads/hp;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ih;->a:Lcom/google/android/gms/internal/ads/id;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ih;->b:Lcom/google/android/gms/internal/ads/iu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ih;->c:Lcom/google/android/gms/internal/ads/hp;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v4, Lcom/google/android/gms/internal/ads/ig;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/ig;-><init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/hp;)V

    sget v0, Lcom/google/android/gms/internal/ads/io;->b:I

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    return-void
.end method
