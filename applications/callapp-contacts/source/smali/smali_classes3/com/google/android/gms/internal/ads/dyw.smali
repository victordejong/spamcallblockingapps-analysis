.class final Lcom/google/android/gms/internal/ads/dyw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dyu;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/gms/internal/ads/ecy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dyt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dyt;->a:Lcom/google/android/gms/internal/ads/ecy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyw;->c:Lcom/google/android/gms/internal/ads/ecy;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ecy;->i()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dyw;->a:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ecy;->i()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/dyw;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/dyw;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dyw;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyw;->c:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ecy;->i()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/dyw;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
