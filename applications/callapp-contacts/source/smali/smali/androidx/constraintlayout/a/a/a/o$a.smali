.class final Landroidx/constraintlayout/a/a/a/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/a/a/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/constraintlayout/a/a/a/o;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/a/a/o;Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/d;I)V
    .locals 0

    .line 235
    iput-object p1, p0, Landroidx/constraintlayout/a/a/a/o$a;->h:Landroidx/constraintlayout/a/a/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/constraintlayout/a/a/a/o$a;->a:Ljava/lang/ref/WeakReference;

    .line 237
    iget-object p1, p2, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    invoke-static {p1}, Landroidx/constraintlayout/a/d;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/a/a/a/o$a;->b:I

    .line 238
    iget-object p1, p2, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    invoke-static {p1}, Landroidx/constraintlayout/a/d;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/a/a/a/o$a;->c:I

    .line 239
    iget-object p1, p2, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    invoke-static {p1}, Landroidx/constraintlayout/a/d;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/a/a/a/o$a;->d:I

    .line 240
    iget-object p1, p2, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    invoke-static {p1}, Landroidx/constraintlayout/a/d;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/a/a/a/o$a;->e:I

    .line 241
    iget-object p1, p2, Landroidx/constraintlayout/a/a/e;->L:Landroidx/constraintlayout/a/a/d;

    invoke-static {p1}, Landroidx/constraintlayout/a/d;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/a/a/a/o$a;->f:I

    .line 242
    iput p4, p0, Landroidx/constraintlayout/a/a/a/o$a;->g:I

    return-void
.end method
