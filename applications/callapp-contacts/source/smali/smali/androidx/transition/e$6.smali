.class final Landroidx/transition/e$6;
.super Landroidx/transition/Transition$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/e;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Landroidx/transition/e;


# direct methods
.method constructor <init>(Landroidx/transition/e;Landroid/graphics/Rect;)V
    .locals 0

    .line 352
    iput-object p1, p0, Landroidx/transition/e$6;->b:Landroidx/transition/e;

    iput-object p2, p0, Landroidx/transition/e$6;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroidx/transition/Transition$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 1

    .line 355
    iget-object v0, p0, Landroidx/transition/e$6;->a:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Landroidx/transition/e$6;->a:Landroid/graphics/Rect;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
