.class public final Lcom/google/android/gms/ads/t;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/t$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/t$a;Lcom/google/android/gms/ads/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/t$a;->c(Lcom/google/android/gms/ads/t$a;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/t;->a:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/t$a;->d(Lcom/google/android/gms/ads/t$a;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/t;->b:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/t$a;->e(Lcom/google/android/gms/ads/t$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/t;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbis;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbis;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/t;->a:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbis;->e:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/t;->b:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbis;->f:Z

    iput-boolean p1, p0, Lcom/google/android/gms/ads/t;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/t;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/t;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/t;->a:Z

    return v0
.end method
