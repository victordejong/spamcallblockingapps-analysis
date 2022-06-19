.class final Landroidx/appcompat/app/AppCompatDelegateImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->v()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 938
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/ac;)Landroidx/core/view/ac;
    .locals 4

    .line 1428
    iget-object v0, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v0

    .line 1141
    iget v0, v0, Landroidx/core/graphics/b;->c:I

    .line 943
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$3;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl;->a(Landroidx/core/view/ac;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2428
    iget-object v0, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v0

    .line 2127
    iget v0, v0, Landroidx/core/graphics/b;->b:I

    .line 3428
    iget-object v2, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v2}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v2

    .line 3155
    iget v2, v2, Landroidx/core/graphics/b;->d:I

    .line 4428
    iget-object v3, p2, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v3}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v3

    .line 4169
    iget v3, v3, Landroidx/core/graphics/b;->e:I

    .line 946
    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/core/view/ac;->a(IIII)Landroidx/core/view/ac;

    move-result-object p2

    .line 954
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/ac;)Landroidx/core/view/ac;

    move-result-object p1

    return-object p1
.end method
