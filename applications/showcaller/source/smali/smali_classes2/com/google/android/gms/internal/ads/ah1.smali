.class final Lcom/google/android/gms/internal/ads/ah1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/nu2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/nu2<",
        "Lcom/google/android/gms/internal/ads/zy3;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/internal/ads/bh1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bh1;DZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ah1;->c:Lcom/google/android/gms/internal/ads/bh1;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/ah1;->a:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/ah1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zy3;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ah1;->c:Lcom/google/android/gms/internal/ads/bh1;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zy3;->b:[B

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ah1;->a:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/ah1;->b:Z

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bh1;->b(Lcom/google/android/gms/internal/ads/bh1;[BDZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
