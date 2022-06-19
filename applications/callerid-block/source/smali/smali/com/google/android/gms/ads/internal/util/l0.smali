.class public final Lcom/google/android/gms/ads/internal/util/l0;
.super Lcom/google/android/gms/ads/internal/util/z;
.source ""


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/to;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->d()Lcom/google/android/gms/ads/internal/util/l1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/l1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/z;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/ads/to;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/to;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/l0;->c:Lcom/google/android/gms/internal/ads/to;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/l0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/l0;->c:Lcom/google/android/gms/internal/ads/to;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/l0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/to;->g(Ljava/lang/String;)V

    return-void
.end method
