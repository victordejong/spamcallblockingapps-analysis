.class public Lac$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lac;


# direct methods
.method public constructor <init>(Lac;)V
    .locals 0

    iput-object p1, p0, Lac$b;->a:Lac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lac$b;->a:Lac;

    iget-boolean v1, v0, Lac;->q:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lac;->o:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lac;->o:Z

    iget-object v0, v0, Lac;->a:Lac$a;

    invoke-virtual {v0}, Lac$a;->m()V

    :cond_1
    iget-object v0, p0, Lac$b;->a:Lac;

    iget-object v0, v0, Lac;->a:Lac$a;

    invoke-virtual {v0}, Lac$a;->h()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lac$b;->a:Lac;

    invoke-virtual {v1}, Lac;->u()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lac$b;->a:Lac;

    iget-boolean v3, v1, Lac;->p:Z

    if-eqz v3, :cond_3

    iput-boolean v2, v1, Lac;->p:Z

    invoke-virtual {v1}, Lac;->c()V

    :cond_3
    invoke-virtual {v0}, Lac$a;->a()V

    invoke-virtual {v0}, Lac$a;->b()I

    move-result v1

    invoke-virtual {v0}, Lac$a;->c()I

    move-result v0

    iget-object v2, p0, Lac$b;->a:Lac;

    invoke-virtual {v2, v1, v0}, Lac;->j(II)V

    iget-object v0, p0, Lac$b;->a:Lac;

    iget-object v0, v0, Lac;->c:Landroid/view/View;

    invoke-static {v0, p0}, Ljb;->f0(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lac$b;->a:Lac;

    iput-boolean v2, v0, Lac;->q:Z

    return-void
.end method
