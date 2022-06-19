.class public Ld2/f3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f3;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f3;


# direct methods
.method public constructor <init>(Ld2/f3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f3$c;->a:Ld2/f3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/f3$c;->a:Ld2/f3;

    invoke-virtual {v0, p1}, Ld2/f3;->c(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld2/f3$c;->a:Ld2/f3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "x"

    .line 4
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/f3;->b:I

    const-string v1, "y"

    .line 5
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/f3;->c:I

    const-string v1, "width"

    .line 6
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/f3;->d:I

    const-string v1, "height"

    .line 7
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Ld2/f3;->e:I

    .line 8
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 9
    iget v1, v0, Ld2/f3;->b:I

    iget v2, v0, Ld2/f3;->c:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 10
    iget v1, v0, Ld2/f3;->d:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 11
    iget v1, v0, Ld2/f3;->e:I

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
