.class final Lcom/google/android/gms/internal/ads/eea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:F

.field private final synthetic e:Lcom/google/android/gms/internal/ads/edt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/edt;IIIF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eea;->e:Lcom/google/android/gms/internal/ads/edt;

    iput p2, p0, Lcom/google/android/gms/internal/ads/eea;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/eea;->b:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/eea;->c:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/eea;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eea;->e:Lcom/google/android/gms/internal/ads/edt;

    .line 1026
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/edt;->b:Lcom/google/android/gms/internal/ads/edu;

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/ads/eea;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/eea;->b:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/edu;->a(II)V

    return-void
.end method
