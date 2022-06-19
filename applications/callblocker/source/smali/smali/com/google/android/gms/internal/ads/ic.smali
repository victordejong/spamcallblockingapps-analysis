.class final synthetic Lcom/google/android/gms/internal/ads/ic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/id;

.field private final b:Lcom/google/android/gms/internal/ads/ctl;

.field private final c:Lcom/google/android/gms/internal/ads/iu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/iu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ic;->a:Lcom/google/android/gms/internal/ads/id;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ic;->b:Lcom/google/android/gms/internal/ads/ctl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ic;->c:Lcom/google/android/gms/internal/ads/iu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ic;->a:Lcom/google/android/gms/internal/ads/id;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ic;->b:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ic;->c:Lcom/google/android/gms/internal/ads/iu;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/id;->a(Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/iu;)V

    return-void
.end method
