.class Le/c/a/b/w/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/c/a/b/w/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/b/w/h;-><init>(Le/c/a/b/w/h$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/c/a/b/w/h;


# direct methods
.method constructor <init>(Le/c/a/b/w/h;)V
    .locals 0

    iput-object p1, p0, Le/c/a/b/w/h$a;->a:Le/c/a/b/w/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/c/a/b/w/o;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-object v0, p0, Le/c/a/b/w/h$a;->a:Le/c/a/b/w/h;

    invoke-static {v0}, Le/c/a/b/w/h;->b(Le/c/a/b/w/h;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Le/c/a/b/w/o;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Le/c/a/b/w/h$a;->a:Le/c/a/b/w/h;

    invoke-static {v0}, Le/c/a/b/w/h;->d(Le/c/a/b/w/h;)[Le/c/a/b/w/o$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Le/c/a/b/w/o;->f(Landroid/graphics/Matrix;)Le/c/a/b/w/o$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Le/c/a/b/w/o;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-object v0, p0, Le/c/a/b/w/h$a;->a:Le/c/a/b/w/h;

    invoke-static {v0}, Le/c/a/b/w/h;->b(Le/c/a/b/w/h;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Le/c/a/b/w/o;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Le/c/a/b/w/h$a;->a:Le/c/a/b/w/h;

    invoke-static {v0}, Le/c/a/b/w/h;->c(Le/c/a/b/w/h;)[Le/c/a/b/w/o$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Le/c/a/b/w/o;->f(Landroid/graphics/Matrix;)Le/c/a/b/w/o$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
