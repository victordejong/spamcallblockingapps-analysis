.class Landroidx/appcompat/app/h$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/core/g/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h;->A()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .locals 0

    .line 780
    iput-object p1, p0, Landroidx/appcompat/app/h$3;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/g/ac;)Landroidx/core/g/ac;
    .locals 4

    .line 784
    invoke-virtual {p2}, Landroidx/core/g/ac;->b()I

    move-result v0

    .line 785
    iget-object v1, p0, Landroidx/appcompat/app/h$3;->a:Landroidx/appcompat/app/h;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/h;->j(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 789
    invoke-virtual {p2}, Landroidx/core/g/ac;->a()I

    move-result v0

    .line 791
    invoke-virtual {p2}, Landroidx/core/g/ac;->c()I

    move-result v2

    .line 792
    invoke-virtual {p2}, Landroidx/core/g/ac;->d()I

    move-result v3

    .line 788
    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/core/g/ac;->a(IIII)Landroidx/core/g/ac;

    move-result-object p2

    .line 796
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/g/u;->a(Landroid/view/View;Landroidx/core/g/ac;)Landroidx/core/g/ac;

    move-result-object p1

    return-object p1
.end method
