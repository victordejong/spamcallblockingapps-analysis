.class Landroidx/fragment/app/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroidx/fragment/app/z$b;

.field final b:Landroidx/core/os/a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/z$b;Landroidx/core/os/a;)V
    .locals 0

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    iput-object p1, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 758
    iput-object p2, p0, Landroidx/fragment/app/b$b;->b:Landroidx/core/os/a;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    .line 772
    iget-object v0, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 1558
    iget-object v0, v0, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 773
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 772
    invoke-static {v0}, Landroidx/fragment/app/z$b$b;->from(Landroid/view/View;)Landroidx/fragment/app/z$b$b;

    move-result-object v0

    .line 774
    iget-object v1, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    .line 2539
    iget-object v1, v1, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    if-eq v0, v1, :cond_1

    .line 775
    sget-object v2, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    if-eq v0, v2, :cond_0

    sget-object v0, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method final b()V
    .locals 2

    .line 780
    iget-object v0, p0, Landroidx/fragment/app/b$b;->a:Landroidx/fragment/app/z$b;

    iget-object v1, p0, Landroidx/fragment/app/b$b;->b:Landroidx/core/os/a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/z$b;->b(Landroidx/core/os/a;)V

    return-void
.end method
