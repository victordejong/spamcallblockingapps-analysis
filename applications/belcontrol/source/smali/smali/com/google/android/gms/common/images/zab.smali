.class public final Lcom/google/android/gms/common/images/zab;
.super Lcom/google/android/gms/common/images/zaa;
.source ""


# instance fields
.field private zac:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zaa;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zab;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zaa;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zab;->zac:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/images/zab;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/zab;

    iget-object v1, p0, Lcom/google/android/gms/common/images/zab;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/google/android/gms/common/images/zab;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/images/zab;->zac:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    instance-of v3, v0, Lcom/google/android/gms/internal/base/zai;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/base/zai;

    invoke-static {}, Lcom/google/android/gms/internal/base/zai;->zaa()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/common/images/zaa;->zab:I

    if-eqz v4, :cond_1

    if-eq v3, v4, :cond_8

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/images/zaa;->zaa(ZZ)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    instance-of v3, p3, Lcom/google/android/gms/internal/base/zaf;

    if-eqz v3, :cond_3

    check-cast p3, Lcom/google/android/gms/internal/base/zaf;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/base/zaf;->zaa()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1

    :cond_2
    move-object p3, v3

    :cond_3
    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/base/zaf;

    invoke-direct {v3, p3, p1}, Lcom/google/android/gms/internal/base/zaf;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v3

    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p3, v0, Lcom/google/android/gms/internal/base/zai;

    if-eqz p3, :cond_7

    check-cast v0, Lcom/google/android/gms/internal/base/zai;

    if-eqz p4, :cond_5

    iget-object p3, p0, Lcom/google/android/gms/common/images/zaa;->zaa:Lcom/google/android/gms/common/images/zac;

    iget-object p3, p3, Lcom/google/android/gms/common/images/zac;->zaa:Landroid/net/Uri;

    goto :goto_2

    :cond_5
    sget-object p3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_2
    invoke-static {p3}, Lcom/google/android/gms/internal/base/zai;->zaa(Landroid/net/Uri;)V

    if-eqz v2, :cond_6

    iget v1, p0, Lcom/google/android/gms/common/images/zaa;->zab:I

    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/internal/base/zai;->zaa(I)V

    :cond_7
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    check-cast p1, Lcom/google/android/gms/internal/base/zaf;

    const/16 p2, 0xfa

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/base/zaf;->zaa(I)V

    :cond_8
    return-void
.end method
