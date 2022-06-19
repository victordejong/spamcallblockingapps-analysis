.class final Landroidx/core/h/u$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/h/q;


# direct methods
.method constructor <init>(Landroidx/core/h/q;)V
    .locals 0

    .prologue
    .line 2427
    iput-object p1, p0, Landroidx/core/h/u$1;->a:Landroidx/core/h/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 2430
    invoke-static {p2}, Landroidx/core/h/ac;->a(Ljava/lang/Object;)Landroidx/core/h/ac;

    move-result-object v0

    .line 2431
    iget-object v1, p0, Landroidx/core/h/u$1;->a:Landroidx/core/h/q;

    invoke-interface {v1, p1, v0}, Landroidx/core/h/q;->a(Landroid/view/View;Landroidx/core/h/ac;)Landroidx/core/h/ac;

    move-result-object v0

    .line 2432
    invoke-static {v0}, Landroidx/core/h/ac;->a(Landroidx/core/h/ac;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    return-object v0
.end method
