.class final synthetic Lcom/google/android/gms/internal/ads/tf2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/xf2;

.field private final b:Lcom/google/android/gms/internal/ads/tg2;

.field private final c:Lcom/google/android/gms/internal/ads/wf2;

.field private final d:Lcom/google/android/gms/internal/ads/rg2;

.field private final e:Lcom/google/android/gms/internal/ads/g21;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xf2;Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/wf2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tf2;->a:Lcom/google/android/gms/internal/ads/xf2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/tf2;->b:Lcom/google/android/gms/internal/ads/tg2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/tf2;->c:Lcom/google/android/gms/internal/ads/wf2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tf2;->d:Lcom/google/android/gms/internal/ads/rg2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/tf2;->e:Lcom/google/android/gms/internal/ads/g21;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tf2;->a:Lcom/google/android/gms/internal/ads/xf2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tf2;->b:Lcom/google/android/gms/internal/ads/tg2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tf2;->c:Lcom/google/android/gms/internal/ads/wf2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tf2;->d:Lcom/google/android/gms/internal/ads/rg2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/tf2;->e:Lcom/google/android/gms/internal/ads/g21;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/cg2;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/xf2;->f(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/wf2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;Lcom/google/android/gms/internal/ads/cg2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
