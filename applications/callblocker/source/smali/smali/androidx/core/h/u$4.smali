.class final Landroidx/core/h/u$4;
.super Landroidx/core/h/u$b;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/h/u;->d()Landroidx/core/h/u$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/core/h/u$b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 0

    .prologue
    .line 3936
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/h/u$b;-><init>(ILjava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 3941
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityHeading()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 3947
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityHeading(Z)V

    .line 3948
    return-void
.end method

.method bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3936
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroidx/core/h/u$4;->a(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method

.method a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 1

    .prologue
    .line 3952
    invoke-virtual {p0, p1, p2}, Landroidx/core/h/u$4;->b(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3936
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Landroidx/core/h/u$4;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method synthetic b(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3936
    invoke-virtual {p0, p1}, Landroidx/core/h/u$4;->a(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
