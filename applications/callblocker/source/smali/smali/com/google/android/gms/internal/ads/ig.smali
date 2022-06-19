.class final synthetic Lcom/google/android/gms/internal/ads/ig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/id;

.field private final b:Lcom/google/android/gms/internal/ads/iu;

.field private final c:Lcom/google/android/gms/internal/ads/hp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/hp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ig;->a:Lcom/google/android/gms/internal/ads/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ig;->b:Lcom/google/android/gms/internal/ads/iu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ig;->c:Lcom/google/android/gms/internal/ads/hp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ig;->a:Lcom/google/android/gms/internal/ads/id;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ig;->b:Lcom/google/android/gms/internal/ads/iu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ig;->c:Lcom/google/android/gms/internal/ads/hp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/hp;)V

    return-void
.end method
