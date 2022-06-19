.class public final Lcom/google/android/gms/internal/ads/bnm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bmy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bmy",
        "<",
        "Lcom/google/android/gms/internal/ads/akk;",
        "Lcom/google/android/gms/internal/ads/chs;",
        "Lcom/google/android/gms/internal/ads/bof;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/yd;

.field private final c:Lcom/google/android/gms/internal/ads/alh;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/alh;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnm;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bnm;->b:Lcom/google/android/gms/internal/ads/yd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bnm;->c:Lcom/google/android/gms/internal/ads/alh;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bnm;->d:Ljava/util/concurrent/Executor;

    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            "Lcom/google/android/gms/internal/ads/bmx",
            "<",
            "Lcom/google/android/gms/internal/ads/chs;",
            "Lcom/google/android/gms/internal/ads/bof;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->e:Lcom/google/android/gms/internal/ads/dyd;

    .line 8
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/dyd;->m:Z

    if-eqz v1, :cond_0

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/dyd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bnm;->a:Landroid/content/Context;

    iget v3, v0, Lcom/google/android/gms/internal/ads/dyd;->e:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/dyd;->b:I

    .line 10
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/s;->a(II)Lcom/google/android/gms/ads/e;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dyd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/e;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnm;->b:Lcom/google/android/gms/internal/ads/yd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yd;->c:I

    const v1, 0x3e8fa0

    if-ge v0, v1, :cond_1

    .line 14
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bnm;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v5, Lcom/google/android/gms/internal/ads/ku;

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/chs;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    .line 21
    :goto_1
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnm;->a:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->r:Ljava/util/List;

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chk;->a(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v2

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bnm;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 18
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    .line 19
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/wy;->a(Lcom/google/android/gms/internal/ads/wz;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v6, Lcom/google/android/gms/internal/ads/ku;

    .line 20
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/chs;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dyd;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;)V

    goto :goto_1
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bnm;->c:Lcom/google/android/gms/internal/ads/alh;

    new-instance v2, Lcom/google/android/gms/internal/ads/amy;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/ako;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chs;->a()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bnp;->a(Lcom/google/android/gms/internal/ads/chs;)Lcom/google/android/gms/internal/ads/ami;

    move-result-object v6

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->r:Ljava/util/List;

    const/4 v7, 0x0

    .line 26
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cgq;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/ako;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/ami;Lcom/google/android/gms/internal/ads/cgq;)V

    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/alh;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/ako;)Lcom/google/android/gms/internal/ads/akj;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/akj;->j()Lcom/google/android/gms/internal/ads/aup;

    move-result-object v2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chs;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/aup;->a(Landroid/view/View;)V

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amj;->a()Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v2

    .line 30
    new-instance v3, Lcom/google/android/gms/internal/ads/aio;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/aio;-><init>(Lcom/google/android/gms/internal/ads/chs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bnm;->d:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 31
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v0, Lcom/google/android/gms/internal/ads/bof;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amj;->f()Lcom/google/android/gms/internal/ads/brp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bof;->a(Lcom/google/android/gms/internal/ads/ku;)V

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/akj;->h()Lcom/google/android/gms/internal/ads/akk;

    move-result-object v0

    .line 33
    return-object v0
.end method
