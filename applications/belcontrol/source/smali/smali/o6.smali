.class public Lo6;
.super Ln6;
.source ""


# instance fields
.field public m:I


# direct methods
.method public constructor <init>(Lx6;)V
    .locals 0

    invoke-direct {p0, p1}, Ln6;-><init>(Lx6;)V

    instance-of p1, p1, Lt6;

    if-eqz p1, :cond_0

    sget-object p1, Ln6$a;->b:Ln6$a;

    goto :goto_0

    :cond_0
    sget-object p1, Ln6$a;->c:Ln6$a;

    :goto_0
    iput-object p1, p0, Ln6;->e:Ln6$a;

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 1

    iget-boolean v0, p0, Ln6;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ln6;->j:Z

    iput p1, p0, Ln6;->g:I

    iget-object p1, p0, Ln6;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll6;

    invoke-interface {v0, v0}, Ll6;->a(Ll6;)V

    goto :goto_0

    :cond_1
    return-void
.end method
