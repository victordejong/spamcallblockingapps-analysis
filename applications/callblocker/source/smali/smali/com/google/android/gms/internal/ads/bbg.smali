.class final synthetic Lcom/google/android/gms/internal/ads/bbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/coe;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:D

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;DII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bbg;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/bbg;->b:D

    iput p4, p0, Lcom/google/android/gms/internal/ads/bbg;->c:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/bbg;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bbg;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/bbg;->b:D

    iget v6, p0, Lcom/google/android/gms/internal/ads/bbg;->c:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/bbg;->d:I

    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/bh;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/bh;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 5
    return-object v1
.end method
