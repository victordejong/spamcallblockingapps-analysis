.class public final Lcom/google/android/gms/common/internal/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field private b:Lcom/google/android/gms/common/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/af;-><init>(Lcom/google/android/gms/common/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/af;->a:Landroid/util/SparseIntArray;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/af;->b:Lcom/google/android/gms/common/c;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/af;->a:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    .line 1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/common/api/a$f;->requiresGooglePlayServices()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/common/api/a$f;->getMinApkVersion()I

    move-result p2

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/af;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/common/internal/af;->a:Landroid/util/SparseIntArray;

    .line 6
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/common/internal/af;->a:Landroid/util/SparseIntArray;

    .line 7
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-le v3, p2, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/common/internal/af;->a:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_1
    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/af;->b:Lcom/google/android/gms/common/c;

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/c;->b(Landroid/content/Context;I)I

    move-result v1

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/common/internal/af;->a:Landroid/util/SparseIntArray;

    .line 10
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v1

    :goto_2
    return v0
.end method
