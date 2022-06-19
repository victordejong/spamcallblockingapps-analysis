.class final Landroidx/core/view/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/view/r;


# direct methods
.method constructor <init>(Landroidx/core/view/r;)V
    .locals 0

    .line 2469
    iput-object p1, p0, Landroidx/core/view/v$1;->a:Landroidx/core/view/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 2473
    invoke-static {p2}, Landroidx/core/view/ac;->a(Landroid/view/WindowInsets;)Landroidx/core/view/ac;

    move-result-object p2

    .line 2474
    iget-object v0, p0, Landroidx/core/view/v$1;->a:Landroidx/core/view/r;

    invoke-interface {v0, p1, p2}, Landroidx/core/view/r;->a(Landroid/view/View;Landroidx/core/view/ac;)Landroidx/core/view/ac;

    move-result-object p1

    .line 2475
    invoke-virtual {p1}, Landroidx/core/view/ac;->e()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
