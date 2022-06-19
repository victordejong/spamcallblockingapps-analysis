.class public Ld2/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/b0;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/b0;


# direct methods
.method public constructor <init>(Ld2/b0;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b0$a;->b:Ld2/b0;

    iput-object p2, p0, Ld2/b0$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ld2/b0$a;->b:Ld2/b0;

    iget-object v0, v0, Ld2/b0;->a:Ld2/j0;

    iget-object v1, p0, Ld2/b0$a;->a:Ld2/t0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Ld2/t0;->b:Ld2/f4;

    const-string v3, "id"

    .line 3
    invoke-static {v2, v3}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    .line 4
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    .line 5
    iget-object v4, v0, Ld2/j0;->g:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 6
    iget-object v5, v0, Ld2/j0;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld2/x3;

    if-eqz v5, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v3}, Ld2/f1;->q()Ld2/u0;

    move-result-object v1

    .line 8
    iget v2, v5, Ld2/x3;->u:I

    .line 9
    invoke-virtual {v1, v2}, Ld2/u0;->a(I)Ld2/z0;

    .line 10
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 12
    iget-object v1, v1, Ld2/t0;->a:Ljava/lang/String;

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ld2/k0;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
