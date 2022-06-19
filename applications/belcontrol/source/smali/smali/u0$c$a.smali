.class public Lu0$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu0$c;->d(Lx0;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu0$d;

.field public final synthetic b:Landroid/view/MenuItem;

.field public final synthetic c:Lx0;

.field public final synthetic d:Lu0$c;


# direct methods
.method public constructor <init>(Lu0$c;Lu0$d;Landroid/view/MenuItem;Lx0;)V
    .locals 0

    iput-object p1, p0, Lu0$c$a;->d:Lu0$c;

    iput-object p2, p0, Lu0$c$a;->a:Lu0$d;

    iput-object p3, p0, Lu0$c$a;->b:Landroid/view/MenuItem;

    iput-object p4, p0, Lu0$c$a;->c:Lx0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lu0$c$a;->a:Lu0$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lu0$c$a;->d:Lu0$c;

    iget-object v1, v1, Lu0$c;->a:Lu0;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lu0;->C:Z

    iget-object v0, v0, Lu0$d;->b:Lx0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx0;->close(Z)V

    iget-object v0, p0, Lu0$c$a;->d:Lu0$c;

    iget-object v0, v0, Lu0$c;->a:Lu0;

    iput-boolean v1, v0, Lu0;->C:Z

    :cond_0
    iget-object v0, p0, Lu0$c$a;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu0$c$a;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu0$c$a;->c:Lx0;

    iget-object v1, p0, Lu0$c$a;->b:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lx0;->performItemAction(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
