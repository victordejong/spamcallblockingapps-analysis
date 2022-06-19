.class public Lcom/allinone/callerid/main/c;
.super Lcom/bumptech/glide/h;
.source "GlideRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/h<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/i;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic C0(Landroid/net/Uri;)Lcom/bumptech/glide/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->R0(Landroid/net/Uri;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic E0(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->T0(Ljava/lang/Object;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic F0(Ljava/lang/String;)Lcom/bumptech/glide/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->U0(Ljava/lang/String;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public I0(Lcom/bumptech/glide/request/d;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/d<",
            "TTranscodeType;>;)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->o0(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/h;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public J0(Lcom/bumptech/glide/request/a;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a<",
            "*>;)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->p0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/h;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public K0()Lcom/allinone/callerid/main/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/main/c;

    return-object v0
.end method

.method public L0()Lcom/allinone/callerid/main/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/h;->t0()Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/main/c;

    return-object v0
.end method

.method public M0(Ljava/lang/Class;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->h(Ljava/lang/Class;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public N0(Lcom/bumptech/glide/load/engine/h;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/h;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->i(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public O0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->j(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public P0(I)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public Q0(Lcom/bumptech/glide/h;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/h<",
            "TTranscodeType;>;)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->u0(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public R0(Landroid/net/Uri;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->C0(Landroid/net/Uri;)Lcom/bumptech/glide/h;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public S0(Ljava/lang/Integer;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->D0(Ljava/lang/Integer;)Lcom/bumptech/glide/h;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic T()Lcom/bumptech/glide/request/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->V0()Lcom/allinone/callerid/main/c;

    move-result-object v0

    return-object v0
.end method

.method public T0(Ljava/lang/Object;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->E0(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic U()Lcom/bumptech/glide/request/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->W0()Lcom/allinone/callerid/main/c;

    move-result-object v0

    return-object v0
.end method

.method public U0(Ljava/lang/String;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/h;->F0(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic V()Lcom/bumptech/glide/request/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->X0()Lcom/allinone/callerid/main/c;

    move-result-object v0

    return-object v0
.end method

.method public V0()Lcom/allinone/callerid/main/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/a;->T()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/main/c;

    return-object v0
.end method

.method public W0()Lcom/allinone/callerid/main/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/a;->U()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/main/c;

    return-object v0
.end method

.method public X0()Lcom/allinone/callerid/main/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/request/a;->V()Lcom/bumptech/glide/request/a;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/main/c;

    return-object v0
.end method

.method public bridge synthetic Y(II)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/main/c;->Y0(II)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public Y0(II)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/a;->Y(II)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic Z(I)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public Z0(I)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->Z(I)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic a(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->J0(Lcom/bumptech/glide/request/a;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->a1(Landroid/graphics/drawable/Drawable;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public a1(Landroid/graphics/drawable/Drawable;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->a0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic b0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->b1(Lcom/bumptech/glide/Priority;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public b1(Lcom/bumptech/glide/Priority;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->b0(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public c1(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/d<",
            "TY;>;TY;)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/a;->f0(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->L0()Lcom/allinone/callerid/main/c;

    move-result-object v0

    return-object v0
.end method

.method public d1(Lcom/bumptech/glide/load/c;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->g0(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public e1(F)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->h0(F)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic f0(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/allinone/callerid/main/c;->c1(Lcom/bumptech/glide/load/d;Ljava/lang/Object;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public f1(Z)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->i0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic g()Lcom/bumptech/glide/request/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->L0()Lcom/allinone/callerid/main/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g0(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->d1(Lcom/bumptech/glide/load/c;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public g1(Lcom/bumptech/glide/load/h;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/h<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->j0(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Class;)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->M0(Ljava/lang/Class;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h0(F)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->e1(F)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public h1(Z)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/allinone/callerid/main/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/a;->n0(Z)Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public bridge synthetic i(Lcom/bumptech/glide/load/engine/h;)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->N0(Lcom/bumptech/glide/load/engine/h;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i0(Z)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->f1(Z)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->O0(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j0(Lcom/bumptech/glide/load/h;)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->g1(Lcom/bumptech/glide/load/h;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(I)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->P0(I)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n0(Z)Lcom/bumptech/glide/request/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->h1(Z)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o0(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->I0(Lcom/bumptech/glide/request/d;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic p0(Lcom/bumptech/glide/request/a;)Lcom/bumptech/glide/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->J0(Lcom/bumptech/glide/request/a;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic t0()Lcom/bumptech/glide/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->L0()Lcom/allinone/callerid/main/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u0(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/c;->Q0(Lcom/bumptech/glide/h;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method
