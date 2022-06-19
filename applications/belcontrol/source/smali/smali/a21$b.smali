.class public La21$b;
.super Lve;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lve<",
        "Lq71$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:La21;


# direct methods
.method public constructor <init>(La21;)V
    .locals 0

    iput-object p1, p0, La21$b;->k:La21;

    invoke-direct {p0}, Lve;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 3

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->h()V

    invoke-static {}, Lq71$a;->b()Lq71$a;

    move-result-object v0

    sget-object v1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lfa1;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lfa1;->z()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lfa1;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    sget-object v2, Lq71$a;->g:Lq71$a;

    if-ne v0, v2, :cond_3

    :cond_2
    :goto_0
    iget-object v1, p0, La21$b;->k:La21;

    iget-object v1, v1, La21;->h:Lve;

    invoke-virtual {v1, v0}, Lve;->j(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lfa1;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lq71$a;->f:Lq71$a;

    if-eq v0, v1, :cond_2

    move-object v0, v1

    goto :goto_0
.end method
