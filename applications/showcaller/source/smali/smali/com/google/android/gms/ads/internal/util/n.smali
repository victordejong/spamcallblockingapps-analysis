.class final synthetic Lcom/google/android/gms/ads/internal/util/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final d:Lcom/google/android/gms/ads/internal/util/w;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/w;IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/n;->d:Lcom/google/android/gms/ads/internal/util/w;

    iput p2, p0, Lcom/google/android/gms/ads/internal/util/n;->e:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/util/n;->f:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/util/n;->g:I

    iput p5, p0, Lcom/google/android/gms/ads/internal/util/n;->h:I

    iput p6, p0, Lcom/google/android/gms/ads/internal/util/n;->i:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/n;->d:Lcom/google/android/gms/ads/internal/util/w;

    iget v1, p0, Lcom/google/android/gms/ads/internal/util/n;->e:I

    iget v2, p0, Lcom/google/android/gms/ads/internal/util/n;->f:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/util/n;->g:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/util/n;->h:I

    iget v5, p0, Lcom/google/android/gms/ads/internal/util/n;->i:I

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/util/w;->q(IIIIILandroid/content/DialogInterface;I)V

    return-void
.end method
