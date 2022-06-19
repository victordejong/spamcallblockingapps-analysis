.class public Lv3/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv3/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv3/k;


# direct methods
.method public constructor <init>(Lv3/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv3/k$a;->a:Lv3/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lm0/b0;)Lm0/b0;
    .locals 4

    .line 1
    iget-object p1, p0, Lv3/k$a;->a:Lv3/k;

    iget-object v0, p1, Lv3/k;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p1, Lv3/k;->b:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object p1, p0, Lv3/k$a;->a:Lv3/k;

    iget-object p1, p1, Lv3/k;->b:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p2}, Lm0/b0;->c()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Lm0/b0;->e()I

    move-result v1

    .line 6
    invoke-virtual {p2}, Lm0/b0;->d()I

    move-result v2

    .line 7
    invoke-virtual {p2}, Lm0/b0;->b()I

    move-result v3

    .line 8
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    iget-object p1, p0, Lv3/k$a;->a:Lv3/k;

    invoke-virtual {p1, p2}, Lv3/k;->a(Lm0/b0;)V

    .line 10
    iget-object p1, p0, Lv3/k$a;->a:Lv3/k;

    .line 11
    iget-object v0, p2, Lm0/b0;->a:Lm0/b0$k;

    invoke-virtual {v0}, Lm0/b0$k;->i()Lf0/b;

    move-result-object v0

    sget-object v1, Lf0/b;->e:Lf0/b;

    invoke-virtual {v0, v1}, Lf0/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lv3/k$a;->a:Lv3/k;

    iget-object v0, v0, Lv3/k;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 13
    iget-object p1, p0, Lv3/k$a;->a:Lv3/k;

    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-static {p1}, Lm0/v$d;->k(Landroid/view/View;)V

    .line 15
    invoke-virtual {p2}, Lm0/b0;->a()Lm0/b0;

    move-result-object p1

    return-object p1
.end method
