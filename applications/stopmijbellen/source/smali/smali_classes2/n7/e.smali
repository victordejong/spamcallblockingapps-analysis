.class public Ln7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# instance fields
.field public final synthetic a:Ln7/j;


# direct methods
.method public constructor <init>(Ln7/a;Ln7/j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln7/e;->a:Ln7/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ln7/e;->a:Ln7/j;

    invoke-virtual {v0, p1}, Ln7/j;->n(Ljava/lang/Exception;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Ln7/e;->a:Ln7/j;

    .line 3
    iget-object v0, p1, Ln7/j;->i:Ln7/h;

    .line 4
    iget-object v1, v0, Ln7/h;->f:Lo7/a;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p1, Ln7/j;->p:Lk7/o;

    new-instance v3, Ln7/i;

    invoke-direct {v3, p1}, Ln7/i;-><init>(Ln7/j;)V

    invoke-interface {v1, v0, v2, v3}, Lo7/a;->a(Ln7/h;Lk7/o;Ll7/a;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ln7/j;->p(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
