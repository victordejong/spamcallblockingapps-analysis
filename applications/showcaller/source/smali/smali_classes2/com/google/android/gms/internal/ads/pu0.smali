.class final synthetic Lcom/google/android/gms/internal/ads/pu0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/tu0;

.field private final e:I

.field private final f:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tu0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pu0;->d:Lcom/google/android/gms/internal/ads/tu0;

    iput p2, p0, Lcom/google/android/gms/internal/ads/pu0;->e:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/pu0;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pu0;->d:Lcom/google/android/gms/internal/ads/tu0;

    iget v1, p0, Lcom/google/android/gms/internal/ads/pu0;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/pu0;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/tu0;->u(II)V

    return-void
.end method
