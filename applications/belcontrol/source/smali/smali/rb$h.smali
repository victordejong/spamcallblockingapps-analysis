.class public Lrb$h;
.super Lrb$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public e:Lt8;


# direct methods
.method public constructor <init>(Lrb;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrb$g;-><init>(Lrb;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lrb$h;->e:Lt8;

    return-void
.end method

.method public constructor <init>(Lrb;Lrb$h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrb$g;-><init>(Lrb;Lrb$g;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lrb$h;->e:Lt8;

    return-void
.end method


# virtual methods
.method public e()Lt8;
    .locals 1

    iget-object v0, p0, Lrb$h;->e:Lt8;

    if-nez v0, :cond_0

    iget-object v0, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lt8;->b(Landroid/graphics/Insets;)Lt8;

    move-result-object v0

    iput-object v0, p0, Lrb$h;->e:Lt8;

    :cond_0
    iget-object v0, p0, Lrb$h;->e:Lt8;

    return-object v0
.end method

.method public h(IIII)Lrb;
    .locals 1

    iget-object v0, p0, Lrb$e;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lrb;->p(Landroid/view/WindowInsets;)Lrb;

    move-result-object p1

    return-object p1
.end method
