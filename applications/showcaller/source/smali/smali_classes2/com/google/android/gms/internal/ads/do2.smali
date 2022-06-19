.class public final Lcom/google/android/gms/internal/ads/do2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/r60;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/co2;

.field private final b:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/co2;Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/pj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/co2;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/zzcgz;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/do2;->a:Lcom/google/android/gms/internal/ads/co2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/do2;->b:Lcom/google/android/gms/internal/ads/pj3;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/do2;->c:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do2;->b:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v0, Lcom/google/android/gms/internal/ads/xp0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xp0;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do2;->c:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v1, Lcom/google/android/gms/internal/ads/gq0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/gq0;->a()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/h60;

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/h60;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/h60;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgz;)Lcom/google/android/gms/internal/ads/r60;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kj3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
