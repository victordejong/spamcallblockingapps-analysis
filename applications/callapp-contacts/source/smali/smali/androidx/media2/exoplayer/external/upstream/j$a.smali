.class public final Landroidx/media2/exoplayer/external/upstream/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Landroidx/media2/exoplayer/external/util/b;

.field e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/j$a;->a:Landroid/content/Context;

    .line 108
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1219
    sget-object v0, Landroidx/media2/exoplayer/external/upstream/j;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x4

    if-nez p1, :cond_1

    new-array p1, v0, [I

    .line 1221
    fill-array-data p1, :array_0

    .line 1206
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    const-wide/32 v2, 0xf4240

    .line 1207
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1208
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/j;->b:[J

    aget v4, p1, v3

    aget-wide v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1209
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/j;->c:[J

    const/4 v5, 0x1

    aget v6, p1, v5

    aget-wide v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v6, 0x3

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1210
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/j;->d:[J

    aget v4, p1, v4

    aget-wide v7, v2, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 1211
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/j;->e:[J

    aget v4, p1, v6

    aget-wide v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v0, 0x7

    .line 1213
    sget-object v2, Landroidx/media2/exoplayer/external/upstream/j;->b:[J

    aget p1, p1, v3

    aget-wide v3, v2, p1

    .line 1214
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1213
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 108
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/j$a;->b:Landroid/util/SparseArray;

    const/16 p1, 0x7d0

    .line 109
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/j$a;->c:I

    .line 110
    sget-object p1, Landroidx/media2/exoplayer/external/util/b;->a:Landroidx/media2/exoplayer/external/util/b;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/j$a;->d:Landroidx/media2/exoplayer/external/util/b;

    .line 111
    iput-boolean v5, p0, Landroidx/media2/exoplayer/external/upstream/j$a;->e:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method
