.class public final Lcom/google/android/gms/internal/ads/ry;
.super Lcom/google/android/gms/internal/ads/fz;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Landroid/graphics/drawable/Drawable;

.field private final e:Landroid/net/Uri;

.field private final f:D

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ry;->d:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ry;->e:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/ry;->f:D

    iput p5, p0, Lcom/google/android/gms/internal/ads/ry;->g:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/ry;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ry;->g:I

    return v0
.end method

.method public final b()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ry;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ry;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/ry;->h:I

    return v0
.end method

.method public final e()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ry;->f:D

    return-wide v0
.end method
