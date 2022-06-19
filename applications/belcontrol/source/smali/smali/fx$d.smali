.class public Lfx$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lfx$a;

.field public b:Lfx$d;

.field public c:Lfx$d;

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfx$d;->d:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lfx$d;->e:J

    iput-wide v0, p0, Lfx$d;->f:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lfx$d;->c:Lfx$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lfx$d;->b:Lfx$d;

    iput-object v2, v0, Lfx$d;->b:Lfx$d;

    iput-object v1, p0, Lfx$d;->c:Lfx$d;

    :cond_0
    iget-object v2, p0, Lfx$d;->b:Lfx$d;

    if-eqz v2, :cond_1

    iput-object v0, v2, Lfx$d;->c:Lfx$d;

    iput-object v1, p0, Lfx$d;->b:Lfx$d;

    :cond_1
    return-void
.end method

.method public b(Landroid/util/LongSparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Lfx$d;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lfx$d;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lfx$d;->c:Lfx$d;

    if-nez v1, :cond_1

    iget-object v1, p0, Lfx$d;->b:Lfx$d;

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lfx$d;->a()V

    :cond_2
    iget-wide v0, p0, Lfx$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    const/4 v2, 0x0

    iput-object v2, p0, Lfx$d;->c:Lfx$d;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfx$d;

    iput-object v0, p0, Lfx$d;->b:Lfx$d;

    if-eqz v0, :cond_3

    iput-object p0, v0, Lfx$d;->c:Lfx$d;

    :cond_3
    iget-wide v0, p0, Lfx$d;->d:J

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-wide v0, p0, Lfx$d;->d:J

    iput-wide v0, p0, Lfx$d;->f:J

    :cond_4
    return-void
.end method
