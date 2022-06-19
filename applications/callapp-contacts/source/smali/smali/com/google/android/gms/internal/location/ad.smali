.class final Lcom/google/android/gms/internal/location/ad;
.super Lcom/google/android/gms/internal/location/ae;
.source "SourceFile"


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/android/gms/internal/location/ae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/ae;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/ad;->c:Lcom/google/android/gms/internal/location/ae;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/location/ae;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/location/ad;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/location/ad;->b:I

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/android/gms/internal/location/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/location/ae;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/location/ad;->b:I

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/location/y;->a(III)V

    iget-object v0, p0, Lcom/google/android/gms/internal/location/ad;->c:Lcom/google/android/gms/internal/location/ae;

    iget v1, p0, Lcom/google/android/gms/internal/location/ad;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/location/ae;->a(II)Lcom/google/android/gms/internal/location/ae;

    move-result-object p1

    return-object p1
.end method

.method final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/ad;->c:Lcom/google/android/gms/internal/location/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/ab;->b()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final c()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/ad;->c:Lcom/google/android/gms/internal/location/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/ab;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/location/ad;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final d()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/ad;->c:Lcom/google/android/gms/internal/location/ae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/location/ab;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/location/ad;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/location/ad;->b:I

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

    iget v0, p0, Lcom/google/android/gms/internal/location/ad;->b:I

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/location/y;->a(II)I

    iget-object v0, p0, Lcom/google/android/gms/internal/location/ad;->c:Lcom/google/android/gms/internal/location/ae;

    iget v1, p0, Lcom/google/android/gms/internal/location/ad;->a:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/location/ae;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/location/ad;->b:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/location/ae;->a(II)Lcom/google/android/gms/internal/location/ae;

    move-result-object p1

    return-object p1
.end method
