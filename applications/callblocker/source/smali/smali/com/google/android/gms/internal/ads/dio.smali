.class final Lcom/google/android/gms/internal/ads/dio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/internal/ads/din;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/din;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dio;->c:Lcom/google/android/gms/internal/ads/din;

    iput p2, p0, Lcom/google/android/gms/internal/ads/dio;->a:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/dio;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dio;->c:Lcom/google/android/gms/internal/ads/din;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dio;->a:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dio;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/din;->b(IZ)Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dio;->c:Lcom/google/android/gms/internal/ads/din;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/din;->a(Lcom/google/android/gms/internal/ads/din;Lcom/google/android/gms/internal/ads/atw$a;)Lcom/google/android/gms/internal/ads/atw$a;

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/dio;->a:I

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/din;->a(ILcom/google/android/gms/internal/ads/atw$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dio;->c:Lcom/google/android/gms/internal/ads/din;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dio;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dio;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/din;->a(IZ)V

    .line 6
    :cond_0
    return-void
.end method
