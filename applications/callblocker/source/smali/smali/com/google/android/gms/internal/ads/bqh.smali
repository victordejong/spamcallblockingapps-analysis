.class public final Lcom/google/android/gms/internal/ads/bqh;
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
        "Lcom/google/android/gms/internal/ads/bdr;",
        "Lcom/google/android/gms/internal/ads/mn;",
        "Lcom/google/android/gms/internal/ads/bof;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/bdu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bdu;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bqh;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bqh;->b:Lcom/google/android/gms/internal/ads/bdu;

    .line 4
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
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->n:Lcom/google/android/gms/internal/ads/cgt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/cgt;->a:I

    sget v1, Lcom/google/android/gms/internal/ads/cgy;->c:I

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/mn;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->K:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bqh;->a:Landroid/content/Context;

    .line 10
    invoke-static {v4}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/bqj;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p3, v6}, Lcom/google/android/gms/internal/ads/bqj;-><init>(Lcom/google/android/gms/internal/ads/bqh;Lcom/google/android/gms/internal/ads/bmx;Lcom/google/android/gms/internal/ads/bqg;)V

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v6, Lcom/google/android/gms/internal/ads/ku;

    .line 11
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mn;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)V

    .line 19
    :goto_0
    return-void

    .line 12
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/mn;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/cgr;->K:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bqh;->a:Landroid/content/Context;

    .line 14
    invoke-static {v4}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/bqj;

    const/4 v6, 0x0

    invoke-direct {v5, p0, p3, v6}, Lcom/google/android/gms/internal/ads/bqj;-><init>(Lcom/google/android/gms/internal/ads/bqh;Lcom/google/android/gms/internal/ads/bmx;Lcom/google/android/gms/internal/ads/bqg;)V

    iget-object v6, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v6, Lcom/google/android/gms/internal/ads/ku;

    .line 15
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/mn;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dya;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/mi;Lcom/google/android/gms/internal/ads/ku;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string/jumbo v1, "Remote exception loading a rewarded RTB ad"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/boq;

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/mn;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v0, v2}, Lcom/google/android/gms/internal/ads/boq;-><init>(Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/mn;Z)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bqh;->b:Lcom/google/android/gms/internal/ads/bdu;

    new-instance v2, Lcom/google/android/gms/internal/ads/amy;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/bmx;->a:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/amy;-><init>(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/bds;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/bds;-><init>(Lcom/google/android/gms/internal/ads/awx;)V

    .line 23
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bdu;->a(Lcom/google/android/gms/internal/ads/amy;Lcom/google/android/gms/internal/ads/bds;)Lcom/google/android/gms/internal/ads/bdt;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/amj;->d()Lcom/google/android/gms/internal/ads/aqh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/boq;->a(Lcom/google/android/gms/internal/ads/aqh;)V

    .line 25
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    check-cast v0, Lcom/google/android/gms/internal/ads/bof;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bdt;->n()Lcom/google/android/gms/internal/ads/brf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bof;->a(Lcom/google/android/gms/internal/ads/ku;)V

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bdt;->h()Lcom/google/android/gms/internal/ads/bdr;

    move-result-object v0

    .line 27
    return-object v0
.end method
