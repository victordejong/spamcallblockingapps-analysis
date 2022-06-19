.class final Lcom/google/android/gms/internal/ads/cph;
.super Lcom/google/android/gms/internal/ads/cpc;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/cpc",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:I

.field private final transient b:I

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cpc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cpc;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cph;->c:Lcom/google/android/gms/internal/ads/cpc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cpc;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/cph;->a:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/ads/cph;->b:I

    .line 4
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/android/gms/internal/ads/cpc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/cpc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/cph;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/cor;->a(III)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cph;->c:Lcom/google/android/gms/internal/ads/cpc;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cph;->a:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/cph;->a:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cpc;->subList(II)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpc;

    return-object v0
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cph;->c:Lcom/google/android/gms/internal/ads/cpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final c()I
    .locals 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cph;->c:Lcom/google/android/gms/internal/ads/cpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/cph;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final d()I
    .locals 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cph;->c:Lcom/google/android/gms/internal/ads/cpc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/cph;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/cph;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 13
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

    .prologue
    .line 9
    iget v0, p0, Lcom/google/android/gms/internal/ads/cph;->b:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cor;->a(II)I

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cph;->c:Lcom/google/android/gms/internal/ads/cpc;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cph;->a:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cpc;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/cph;->b:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/cpc;->a(II)Lcom/google/android/gms/internal/ads/cpc;

    move-result-object v0

    return-object v0
.end method
