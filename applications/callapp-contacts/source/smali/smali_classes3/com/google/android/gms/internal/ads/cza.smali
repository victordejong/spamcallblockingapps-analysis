.class final Lcom/google/android/gms/internal/ads/cza;
.super Lcom/google/android/gms/internal/ads/cyz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/cyz<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:I

.field private final transient b:I

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cyz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cyz;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cza;->c:Lcom/google/android/gms/internal/ads/cyz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cyz;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/cza;->a:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/ads/cza;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/android/gms/internal/ads/cyz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/cyz<",
            "TE;>;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/cza;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/cyg;->a(III)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cza;->c:Lcom/google/android/gms/internal/ads/cyz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cza;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/cyz;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/cyz;

    return-object p1
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cza;->c:Lcom/google/android/gms/internal/ads/cyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyt;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final c()I
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cza;->c:Lcom/google/android/gms/internal/ads/cyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyt;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/cza;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final d()I
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cza;->c:Lcom/google/android/gms/internal/ads/cyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyt;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/cza;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/cza;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/cza;->b:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cyg;->a(II)I

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cza;->c:Lcom/google/android/gms/internal/ads/cyz;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cza;->a:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cyz;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/cza;->b:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/cyz;->a(II)Lcom/google/android/gms/internal/ads/cyz;

    move-result-object p1

    return-object p1
.end method
