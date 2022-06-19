.class public final Lp8/f$h;
.super Lq8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp8/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq8/a<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq8/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1}, Lr8/a;->e(Landroid/view/View;)Lr8/a;

    move-result-object p1

    .line 3
    iget p1, p1, Lr8/a;->f:F

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Object;F)V
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1}, Lr8/a;->e(Landroid/view/View;)Lr8/a;

    move-result-object p1

    .line 3
    iget-boolean v0, p1, Lr8/a;->c:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lr8/a;->f:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lr8/a;->c()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lr8/a;->c:Z

    .line 6
    iput p2, p1, Lr8/a;->f:F

    .line 7
    invoke-virtual {p1}, Lr8/a;->b()V

    :cond_1
    return-void
.end method
