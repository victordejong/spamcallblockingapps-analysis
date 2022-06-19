.class public Ley$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ley$f;->b(Ldz$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ley$f;


# direct methods
.method public constructor <init>(Ley$f;)V
    .locals 0

    iput-object p1, p0, Ley$f$a;->a:Ley$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ley$f$a;->a:Ley$f;

    iget-object v0, v0, Ley$f;->d:Ley;

    iget-object v1, v0, Ley;->t:Ldz$i;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    iget-object v0, v0, Ley;->o:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Ley$f$a;->a:Ley$f;

    iget-object v1, v0, Ley$f;->d:Ley;

    iget-object v0, v0, Ley$f;->a:Ldz$i;

    iput-object v0, v1, Ley;->t:Ldz$i;

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ley$f$a;->a:Ley$f;

    invoke-virtual {v0}, Ley$f;->c()I

    move-result v0

    :goto_0
    iget-object v1, p0, Ley$f$a;->a:Ley$f;

    invoke-virtual {v1, p1}, Ley$f;->d(Z)V

    iget-object p1, p0, Ley$f$a;->a:Ley$f;

    iget-object p1, p1, Ley$f;->c:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object p1, p0, Ley$f$a;->a:Ley$f;

    iget-object p1, p1, Ley$f;->a:Ldz$i;

    invoke-virtual {p1, v0}, Ldz$i;->F(I)V

    iget-object p1, p0, Ley$f$a;->a:Ley$f;

    iget-object p1, p1, Ley$f;->d:Ley;

    iget-object p1, p1, Ley;->o:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
