.class public final Lcom/google/android/gms/internal/ads/bph;
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
        "Lcom/google/android/gms/internal/ads/mn;",
        "Lcom/google/android/gms/internal/ads/bof;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/axo;

.field private c:Lcom/google/android/gms/internal/ads/le;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/axo;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bph;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bph;->b:Lcom/google/android/gms/internal/ads/axo;

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bph;Lcom/google/android/gms/internal/ads/le;)Lcom/google/android/gms/internal/ads/le;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bph;->c:Lcom/google/android/gms/internal/ads/le;

    return-object p1
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
            "Lcom/google/android/gms/internal/ads/mn;",
            "Lcom/google/android/gms/internal/ads/bof;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/mn;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->Q:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/mn;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/mn;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->K:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bph;->a:Landroid/content/Context;

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/bpj;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p3, v6}, Lcom/google/android/gms/internal/ads/bpj;-><init>(Lcom/google/android/gms/internal/ads/bph;Lcom/google/android/gms/internal/ads/bmx;Lcom/google/android/gms/internal/ads/bpk;)V

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v6, Lcom/google/android/gms/internal/ads/ku;

    .line 9
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mh;Lcom/google/android/gms/internal/ads/ku;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-void

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdhk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdhk;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 13
    .line 15
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->g:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    const-string/jumbo v1, "Unified must be used for RTB."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bph;->c:Lcom/google/android/gms/internal/ads/le;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ayx;->a(Lcom/google/android/gms/internal/ads/le;)Lcom/google/android/gms/internal/ads/ayx;

    move-result-object v0

    .line 19
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/chh;->g:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ayx;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    const-string/jumbo v1, "No corresponding native ad listener"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bph;->b:Lcom/google/android/gms/internal/ads/axo;

    new-instance v2, Lcom/google/android/gms/internal/ads/amy;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/azl;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/azl;-><init>(Lcom/google/android/gms/internal/ads/ayx;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/bap;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bph;->c:Lcom/google/android/gms/internal/ads/le;

    invoke-direct {v0, v5, v5, v4}, Lcom/google/android/gms/internal/ads/bap;-><init>(Lcom/google/android/gms/internal/ads/ld;Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/le;)V

    .line 24
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/axo;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/azl;Lcom/google/android/gms/internal/ads/bap;)Lcom/google/android/gms/internal/ads/ayy;

    move-result-object v1

    .line 25
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v0, Lcom/google/android/gms/internal/ads/bof;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/amj;->g()Lcom/google/android/gms/internal/ads/bri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/bof;->a(Lcom/google/android/gms/internal/ads/ku;)V

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ayw;->h()Lcom/google/android/gms/internal/ads/aym;

    move-result-object v0

    .line 27
    return-object v0
.end method
