.class public Ld2/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/r3;


# direct methods
.method public constructor <init>(Ld2/r3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/n3;->a:Ld2/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/n3;->a:Ld2/r3;

    invoke-static {v0, p1}, Ld2/r3;->a(Ld2/r3;Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ld2/n3;->a:Ld2/r3;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "visible"

    .line 5
    invoke-static {p1, v1}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 7
    iget-boolean v1, v0, Ld2/r3;->z:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Ld2/r3;->I:Ld2/r3$b;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 10
    iget-boolean v1, v0, Ld2/r3;->z:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Ld2/r3;->I:Ld2/r3$b;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
