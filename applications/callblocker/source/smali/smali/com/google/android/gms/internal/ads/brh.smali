.class public final Lcom/google/android/gms/internal/ads/brh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bmv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/aqz;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bmv",
        "<TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bmw",
            "<TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/bmy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bmy",
            "<TAdT;TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/ckz;

.field private final d:Lcom/google/android/gms/internal/ads/crs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ckz;Lcom/google/android/gms/internal/ads/crs;Lcom/google/android/gms/internal/ads/bmw;Lcom/google/android/gms/internal/ads/bmy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ckz;",
            "Lcom/google/android/gms/internal/ads/crs;",
            "Lcom/google/android/gms/internal/ads/bmw",
            "<TAdapterT;T",
            "ListenerT;",
            ">;",
            "Lcom/google/android/gms/internal/ads/bmy",
            "<TAdT;TAdapterT;T",
            "ListenerT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brh;->c:Lcom/google/android/gms/internal/ads/ckz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/brh;->d:Lcom/google/android/gms/internal/ads/crs;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/brh;->b:Lcom/google/android/gms/internal/ads/bmy;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/brh;->a:Lcom/google/android/gms/internal/ads/bmw;

    .line 6
    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brh;->b:Lcom/google/android/gms/internal/ads/bmy;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bmy;->b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brh;->b:Lcom/google/android/gms/internal/ads/bmy;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/bmy;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Z
    .locals 1

    .prologue
    .line 7
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;)Lcom/google/android/gms/internal/ads/crt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chd;",
            "Lcom/google/android/gms/internal/ads/cgr;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TAdT;>;"
        }
    .end annotation

    .prologue
    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cgr;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/brh;->a:Lcom/google/android/gms/internal/ads/bmw;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/cgr;->s:Lorg/json/JSONObject;

    invoke-interface {v3, v0, v4}, Lcom/google/android/gms/internal/ads/bmw;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/bmx;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdhk; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 14
    :cond_0
    if-nez v1, :cond_1

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpy;

    const-string/jumbo v1, "unable to instantiate mediation adapter class"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcpy;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 37
    :goto_1
    return-object v0

    .line 17
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/brm;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/brm;-><init>(Lcom/google/android/gms/internal/ads/brh;Lcom/google/android/gms/internal/ads/yo;)V

    .line 20
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/bmx;->c:Lcom/google/android/gms/internal/ads/aqz;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/aqz;->a(Lcom/google/android/gms/internal/ads/arc;)V

    .line 22
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/cgr;->E:Z

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/chd;->a:Lcom/google/android/gms/internal/ads/cgx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgx;->a:Lcom/google/android/gms/internal/ads/chh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/chh;->d:Lcom/google/android/gms/internal/ads/dya;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dya;->m:Landroid/os/Bundle;

    .line 24
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    :cond_2
    const-string/jumbo v3, "render_test_ad_label"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brh;->c:Lcom/google/android/gms/internal/ads/ckz;

    sget-object v3, Lcom/google/android/gms/internal/ads/ckw;->m:Lcom/google/android/gms/internal/ads/ckw;

    .line 30
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ckl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ckp;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/brk;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/brk;-><init>(Lcom/google/android/gms/internal/ads/brh;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/brh;->d:Lcom/google/android/gms/internal/ads/crs;

    .line 31
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/ckp;->a(Lcom/google/android/gms/internal/ads/ckj;Lcom/google/android/gms/internal/ads/crs;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/ckw;->n:Lcom/google/android/gms/internal/ads/ckw;

    .line 32
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ckr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/ads/ckw;->o:Lcom/google/android/gms/internal/ads/ckw;

    .line 34
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ckr;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/brj;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/brj;-><init>(Lcom/google/android/gms/internal/ads/brh;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/bmx;)V

    .line 35
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/ckr;->a(Lcom/google/android/gms/internal/ads/ckg;)Lcom/google/android/gms/internal/ads/ckr;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ckr;->a()Lcom/google/android/gms/internal/ads/cki;

    move-result-object v0

    goto :goto_1

    .line 13
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
