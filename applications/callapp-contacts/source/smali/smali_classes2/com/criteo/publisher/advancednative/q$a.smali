.class final Lcom/criteo/publisher/advancednative/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/advancednative/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field volatile a:Lcom/criteo/publisher/advancednative/p;

.field private final b:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/criteo/publisher/advancednative/o;


# direct methods
.method constructor <init>(Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "Landroid/view/View;",
            ">;",
            "Lcom/criteo/publisher/advancednative/o;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/criteo/publisher/advancednative/q$a;->a:Lcom/criteo/publisher/advancednative/p;

    .line 93
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/q$a;->b:Ljava/lang/ref/Reference;

    .line 94
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/q$a;->c:Lcom/criteo/publisher/advancednative/o;

    .line 1100
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1105
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1106
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1107
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    .line 1124
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/q$a;->b:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2034
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 2038
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_3

    goto :goto_1

    .line 2045
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_4

    .line 2133
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/q$a;->a:Lcom/criteo/publisher/advancednative/p;

    if-eqz v0, :cond_4

    .line 2136
    invoke-interface {v0}, Lcom/criteo/publisher/advancednative/p;->a()V

    :cond_4
    return v1
.end method
