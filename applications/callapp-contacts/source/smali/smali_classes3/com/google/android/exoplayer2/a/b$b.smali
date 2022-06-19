.class public final Lcom/google/android/exoplayer2/a/b$b;
.super Lcom/google/android/exoplayer2/util/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/r;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/a/b$b;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/r;->a(I)Z

    move-result p1

    return p1
.end method

.method public final varargs a([I)Z
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/r;->a([I)Z

    move-result p1

    return p1
.end method

.method public final b(I)I
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/util/r;->b(I)I

    move-result p1

    return p1
.end method
