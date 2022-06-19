.class final Landroidx/appcompat/widget/l$1;
.super Landroidx/core/content/res/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/l;->a(Landroid/content/Context;Landroidx/appcompat/widget/ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/ref/WeakReference;

.field final synthetic d:Landroidx/appcompat/widget/l;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/l;IILjava/lang/ref/WeakReference;)V
    .locals 0

    .line 359
    iput-object p1, p0, Landroidx/appcompat/widget/l$1;->d:Landroidx/appcompat/widget/l;

    iput p2, p0, Landroidx/appcompat/widget/l$1;->a:I

    iput p3, p0, Landroidx/appcompat/widget/l$1;->b:I

    iput-object p4, p0, Landroidx/appcompat/widget/l$1;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroidx/core/content/res/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 3

    .line 362
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 363
    iget v0, p0, Landroidx/appcompat/widget/l$1;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 364
    iget v1, p0, Landroidx/appcompat/widget/l$1;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    .line 368
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/l$1;->d:Landroidx/appcompat/widget/l;

    iget-object v1, p0, Landroidx/appcompat/widget/l$1;->c:Ljava/lang/ref/WeakReference;

    .line 1434
    iget-boolean v2, v0, Landroidx/appcompat/widget/l;->d:Z

    if-eqz v2, :cond_2

    .line 1435
    iput-object p1, v0, Landroidx/appcompat/widget/l;->c:Landroid/graphics/Typeface;

    .line 1436
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1438
    iget v0, v0, Landroidx/appcompat/widget/l;->b:I

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    return-void
.end method
