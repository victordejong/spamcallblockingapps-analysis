.class public Lon$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lxt;

.field public final synthetic b:Lon;


# direct methods
.method public constructor <init>(Lon;)V
    .locals 1

    iput-object p1, p0, Lon$a;->b:Lon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lxt;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lxt;-><init>([B)V

    iput-object p1, p0, Lon$a;->a:Lxt;

    return-void
.end method


# virtual methods
.method public a(Lyt;)V
    .locals 9

    invoke-virtual {p1}, Lyt;->w()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lyt;->K(I)V

    invoke-virtual {p1}, Lyt;->a()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lon$a;->a:Lxt;

    invoke-virtual {p1, v4, v1}, Lyt;->e(Lxt;I)V

    iget-object v4, p0, Lon$a;->a:Lxt;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lxt;->g(I)I

    move-result v4

    iget-object v5, p0, Lon$a;->a:Lxt;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lxt;->n(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_1

    iget-object v4, p0, Lon$a;->a:Lxt;

    invoke-virtual {v4, v5}, Lxt;->n(I)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lon$a;->a:Lxt;

    invoke-virtual {v4, v5}, Lxt;->g(I)I

    move-result v4

    iget-object v5, p0, Lon$a;->b:Lon;

    invoke-static {v5}, Lon;->d(Lon;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lin;

    new-instance v7, Lon$b;

    iget-object v8, p0, Lon$a;->b:Lon;

    invoke-direct {v7, v8, v4}, Lon$b;-><init>(Lon;I)V

    invoke-direct {v6, v7}, Lin;-><init>(Lhn;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lon$a;->b:Lon;

    invoke-static {v4}, Lon;->i(Lon;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lon$a;->b:Lon;

    invoke-static {p1}, Lon;->j(Lon;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lon$a;->b:Lon;

    invoke-static {p1}, Lon;->d(Lon;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method

.method public b(Lju;Lck;Lpn$d;)V
    .locals 0

    return-void
.end method
