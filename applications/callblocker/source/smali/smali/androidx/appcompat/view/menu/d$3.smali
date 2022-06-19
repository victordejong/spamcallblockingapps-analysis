.class Landroidx/appcompat/view/menu/d$3;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroidx/appcompat/widget/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/view/menu/d;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/d;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Landroidx/appcompat/view/menu/d$3;->a:Landroidx/appcompat/view/menu/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$3;->a:Landroidx/appcompat/view/menu/d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 150
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$3;->a:Landroidx/appcompat/view/menu/d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 154
    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/appcompat/view/menu/d$3;->a:Landroidx/appcompat/view/menu/d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_3

    .line 155
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$3;->a:Landroidx/appcompat/view/menu/d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d$a;->b:Landroidx/appcompat/view/menu/g;

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 161
    :goto_1
    if-ne v0, v3, :cond_1

    .line 194
    :goto_2
    return-void

    .line 154
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 167
    iget-object v2, p0, Landroidx/appcompat/view/menu/d$3;->a:Landroidx/appcompat/view/menu/d;

    iget-object v2, v2, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 168
    iget-object v1, p0, Landroidx/appcompat/view/menu/d$3;->a:Landroidx/appcompat/view/menu/d;

    iget-object v1, v1, Landroidx/appcompat/view/menu/d;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/d$a;

    .line 173
    :goto_3
    new-instance v1, Landroidx/appcompat/view/menu/d$3$1;

    invoke-direct {v1, p0, v0, p2, p1}, Landroidx/appcompat/view/menu/d$3$1;-><init>(Landroidx/appcompat/view/menu/d$3;Landroidx/appcompat/view/menu/d$a;Landroid/view/MenuItem;Landroidx/appcompat/view/menu/g;)V

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    .line 193
    iget-object v0, p0, Landroidx/appcompat/view/menu/d$3;->a:Landroidx/appcompat/view/menu/d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/d;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 170
    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_1
.end method
