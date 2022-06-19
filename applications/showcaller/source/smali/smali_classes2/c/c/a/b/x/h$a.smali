.class Lc/c/a/b/x/h$a;
.super Ljava/lang/Object;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Lc/c/a/b/x/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/x/h;-><init>(Lc/c/a/b/x/h$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c/a/b/x/h;


# direct methods
.method constructor <init>(Lc/c/a/b/x/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/b/x/h$a;->a:Lc/c/a/b/x/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/b/x/o;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/h$a;->a:Lc/c/a/b/x/h;

    invoke-static {v0}, Lc/c/a/b/x/h;->b(Lc/c/a/b/x/h;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lc/c/a/b/x/o;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 2
    iget-object v0, p0, Lc/c/a/b/x/h$a;->a:Lc/c/a/b/x/h;

    invoke-static {v0}, Lc/c/a/b/x/h;->c(Lc/c/a/b/x/h;)[Lc/c/a/b/x/o$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lc/c/a/b/x/o;->f(Landroid/graphics/Matrix;)Lc/c/a/b/x/o$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Lc/c/a/b/x/o;Landroid/graphics/Matrix;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/b/x/h$a;->a:Lc/c/a/b/x/h;

    invoke-static {v0}, Lc/c/a/b/x/h;->b(Lc/c/a/b/x/h;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Lc/c/a/b/x/o;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 2
    iget-object v0, p0, Lc/c/a/b/x/h$a;->a:Lc/c/a/b/x/h;

    invoke-static {v0}, Lc/c/a/b/x/h;->d(Lc/c/a/b/x/h;)[Lc/c/a/b/x/o$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lc/c/a/b/x/o;->f(Landroid/graphics/Matrix;)Lc/c/a/b/x/o$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
