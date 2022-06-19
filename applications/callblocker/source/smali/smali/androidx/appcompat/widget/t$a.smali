.class Landroidx/appcompat/widget/t$a;
.super Landroidx/core/a/a/f$a;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/t$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroidx/appcompat/widget/t;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/t;II)V
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Landroidx/core/a/a/f$a;-><init>()V

    .line 380
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/widget/t$a;->a:Ljava/lang/ref/WeakReference;

    .line 381
    iput p2, p0, Landroidx/appcompat/widget/t$a;->b:I

    .line 382
    iput p3, p0, Landroidx/appcompat/widget/t$a;->c:I

    .line 383
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Landroidx/appcompat/widget/t$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/t;

    .line 388
    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 391
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 392
    iget v1, p0, Landroidx/appcompat/widget/t$a;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 393
    iget v2, p0, Landroidx/appcompat/widget/t$a;->b:I

    iget v1, p0, Landroidx/appcompat/widget/t$a;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {p1, v2, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    .line 397
    :cond_1
    new-instance v1, Landroidx/appcompat/widget/t$a$a;

    iget-object v2, p0, Landroidx/appcompat/widget/t$a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0, v2, p1}, Landroidx/appcompat/widget/t$a$a;-><init>(Landroidx/appcompat/widget/t$a;Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/t;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 393
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
