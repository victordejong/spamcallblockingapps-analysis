.class final Landroidx/viewpager2/adapter/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Landroidx/viewpager2/adapter/b;

.field final synthetic c:Landroidx/viewpager2/adapter/a;


# direct methods
.method constructor <init>(Landroidx/viewpager2/adapter/a;Landroid/widget/FrameLayout;Landroidx/viewpager2/adapter/b;)V
    .locals 0

    .line 184
    iput-object p1, p0, Landroidx/viewpager2/adapter/a$1;->c:Landroidx/viewpager2/adapter/a;

    iput-object p2, p0, Landroidx/viewpager2/adapter/a$1;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Landroidx/viewpager2/adapter/a$1;->b:Landroidx/viewpager2/adapter/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 188
    iget-object p1, p0, Landroidx/viewpager2/adapter/a$1;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Landroidx/viewpager2/adapter/a$1;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 190
    iget-object p1, p0, Landroidx/viewpager2/adapter/a$1;->c:Landroidx/viewpager2/adapter/a;

    iget-object p2, p0, Landroidx/viewpager2/adapter/a$1;->b:Landroidx/viewpager2/adapter/b;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/adapter/a;->a(Landroidx/viewpager2/adapter/b;)V

    :cond_0
    return-void
.end method
