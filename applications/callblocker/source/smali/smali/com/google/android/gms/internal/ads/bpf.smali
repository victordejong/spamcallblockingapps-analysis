.class public final Lcom/google/android/gms/internal/ads/bpf;
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
        "Lcom/google/android/gms/internal/ads/aym;",
        "Lcom/google/android/gms/internal/ads/chs;",
        "Lcom/google/android/gms/internal/ads/bof;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/axo;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/axo;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bpf;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bpf;->b:Lcom/google/android/gms/internal/ads/axo;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bpf;->c:Ljava/util/concurrent/Executor;

    .line 5
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/chd;I)Z
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->g:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 8
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
    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bpf;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cgr;->p:Lcom/google/android/gms/internal/ads/cgu;

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/wy;->a(Lcom/google/android/gms/internal/ads/wz;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v5, Lcom/google/android/gms/internal/ads/ku;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/chh;->i:Lcom/google/android/gms/internal/ads/bl;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/chh;->g:Ljava/util/ArrayList;

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/chs;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ku;Lcom/google/android/gms/internal/ads/bl;Ljava/util/List;)V

    .line 10
    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x6

    .line 12
    .line 13
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chs;->h()Lcom/google/android/gms/internal/ads/kx;

    move-result-object v1

    .line 14
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chs;->i()Lcom/google/android/gms/internal/ads/ld;

    move-result-object v2

    .line 15
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chs;->l()Lcom/google/android/gms/internal/ads/le;

    move-result-object v3

    .line 16
    if-eqz v3, :cond_0

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/bpf;->a(Lcom/google/android/gms/internal/ads/chd;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ayx;->a(Lcom/google/android/gms/internal/ads/le;)Lcom/google/android/gms/internal/ads/ayx;

    move-result-object v0

    .line 29
    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/chh;->g:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    const-string/jumbo v1, "No corresponding native ad listener"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/bpf;->a(Lcom/google/android/gms/internal/ads/chd;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ayx;->b(Lcom/google/android/gms/internal/ads/kx;)Lcom/google/android/gms/internal/ads/ayx;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x2

    .line 22
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/bpf;->a(Lcom/google/android/gms/internal/ads/chd;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ayx;->a(Lcom/google/android/gms/internal/ads/kx;)Lcom/google/android/gms/internal/ads/ayx;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_2
    if-eqz v2, :cond_3

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/bpf;->a(Lcom/google/android/gms/internal/ads/chd;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ayx;->b(Lcom/google/android/gms/internal/ads/ld;)Lcom/google/android/gms/internal/ads/ayx;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_3
    if-eqz v2, :cond_4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/bpf;->a(Lcom/google/android/gms/internal/ads/chd;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ayx;->a(Lcom/google/android/gms/internal/ads/ld;)Lcom/google/android/gms/internal/ads/ayx;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    const-string/jumbo v1, "No native ad mappers"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 33
    :cond_5
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bpf;->b:Lcom/google/android/gms/internal/ads/axo;

    new-instance v5, Lcom/google/android/gms/internal/ads/amy;

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-direct {v5, p1, p2, v6}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/azl;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/azl;-><init>(Lcom/google/android/gms/internal/ads/ayx;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/bap;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/bap;-><init>(Lcom/google/android/gms/internal/ads/ld;Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/le;)V

    .line 34
    invoke-virtual {v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/axo;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/azl;Lcom/google/android/gms/internal/ads/bap;)Lcom/google/android/gms/internal/ads/ayy;

    move-result-object v1

    .line 35
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v0, Lcom/google/android/gms/internal/ads/bof;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amj;->f()Lcom/google/android/gms/internal/ads/brp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bof;->a(Lcom/google/android/gms/internal/ads/ku;)V

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amj;->a()Lcom/google/android/gms/internal/ads/aqk;

    move-result-object v2

    .line 37
    new-instance v3, Lcom/google/android/gms/internal/ads/aio;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/chs;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/aio;-><init>(Lcom/google/android/gms/internal/ads/chs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bpf;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/ate;->a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ayw;->h()Lcom/google/android/gms/internal/ads/aym;

    move-result-object v0

    .line 39
    return-object v0
.end method
