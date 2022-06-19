.class public final Lcom/google/android/gms/ads/s;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/s$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/s$a;Lcom/google/android/gms/ads/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/s$a;->c(Lcom/google/android/gms/ads/s$a;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/s;->a:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/s$a;->d(Lcom/google/android/gms/ads/s$a;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/ads/s;->b:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/s$a;->e(Lcom/google/android/gms/ads/s$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/s;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzady;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/s;->a:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzady;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/s;->b:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzady;->d:Z

    iput-boolean p1, p0, Lcom/google/android/gms/ads/s;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/s;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/s;->b:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/s;->a:Z

    return v0
.end method
