.class Landroidx/appcompat/app/f$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Landroidx/core/h/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f;->z()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Landroidx/appcompat/app/f$3;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/h/ac;)Landroidx/core/h/ac;
    .locals 4

    .prologue
    .line 784
    invoke-virtual {p2}, Landroidx/core/h/ac;->b()I

    move-result v0

    .line 785
    iget-object v1, p0, Landroidx/appcompat/app/f$3;->a:Landroidx/appcompat/app/f;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/f;->i(I)I

    move-result v1

    .line 787
    if-eq v0, v1, :cond_0

    .line 789
    invoke-virtual {p2}, Landroidx/core/h/ac;->a()I

    move-result v0

    .line 791
    invoke-virtual {p2}, Landroidx/core/h/ac;->c()I

    move-result v2

    .line 792
    invoke-virtual {p2}, Landroidx/core/h/ac;->d()I

    move-result v3

    .line 788
    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/core/h/ac;->a(IIII)Landroidx/core/h/ac;

    move-result-object p2

    .line 796
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/ac;)Landroidx/core/h/ac;

    move-result-object v0

    return-object v0
.end method
