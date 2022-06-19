.class final Lcom/google/android/gms/internal/ads/bax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/coe",
        "<",
        "Lcom/google/android/gms/internal/ads/drt;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:D

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/internal/ads/bay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bay;DZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bax;->c:Lcom/google/android/gms/internal/ads/bay;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/bax;->a:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/bax;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/drt;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bax;->c:Lcom/google/android/gms/internal/ads/bay;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/drt;->b:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/bax;->a:D

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/bax;->b:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bay;->a(Lcom/google/android/gms/internal/ads/bay;[BDZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    return-object v0
.end method
