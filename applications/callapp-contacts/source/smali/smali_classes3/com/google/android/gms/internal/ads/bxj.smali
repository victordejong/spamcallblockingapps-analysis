.class public final Lcom/google/android/gms/internal/ads/bxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bsk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/asy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bsk<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/bss;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bss<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/bsm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bsm<",
            "TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/cti;

.field private final d:Lcom/google/android/gms/internal/ads/dbs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cti;Lcom/google/android/gms/internal/ads/dbs;Lcom/google/android/gms/internal/ads/bsm;Lcom/google/android/gms/internal/ads/bss;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cti;",
            "Lcom/google/android/gms/internal/ads/dbs;",
            "Lcom/google/android/gms/internal/ads/bsm<",
            "TAdapterT;T",
            "ListenerT;",
            ">;",
            "Lcom/google/android/gms/internal/ads/bss<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxj;->c:Lcom/google/android/gms/internal/ads/cti;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bxj;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bxj;->a:Lcom/google/android/gms/internal/ads/bss;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bxj;->b:Lcom/google/android/gms/internal/ads/bsm;

    return-void
.end method

.method static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 38
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Error from: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", code: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z
    .locals 0

    .line 7
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/cov;->s:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TAdT;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/cov;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bxj;->b:Lcom/google/android/gms/internal/ads/bsm;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/cov;->u:Lorg/json/JSONObject;

    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/bsm;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/bsn;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcwa;

    const-string p2, "unable to instantiate mediation adapter class"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzcwa;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 19
    new-instance v2, Lcom/google/android/gms/internal/ads/bxp;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/bxp;-><init>(Lcom/google/android/gms/internal/ads/bxj;Lcom/google/android/gms/internal/ads/bsn;Lcom/google/android/gms/internal/ads/zp;)V

    .line 20
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bsn;->c:Lcom/google/android/gms/internal/ads/asy;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/asy;->a(Lcom/google/android/gms/internal/ads/asx;)V

    .line 22
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/cov;->H:Z

    if-eqz v2, :cond_3

    .line 23
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvq;->zzcih:Landroid/os/Bundle;

    .line 24
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 26
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-class v4, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const/4 v2, 0x1

    const-string v4, "render_test_ad_label"

    .line 28
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bxj;->c:Lcom/google/android/gms/internal/ads/cti;

    sget-object v3, Lcom/google/android/gms/internal/ads/ctj;->zzhtw:Lcom/google/android/gms/internal/ads/ctj;

    .line 30
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/cst;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csx;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bxm;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/bxm;-><init>(Lcom/google/android/gms/internal/ads/bxj;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bxj;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 31
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/csx;->a(Lcom/google/android/gms/internal/ads/csr;Lcom/google/android/gms/internal/ads/dbs;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/ctj;->zzhtx:Lcom/google/android/gms/internal/ads/ctj;

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/csz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/ctj;->zzhty:Lcom/google/android/gms/internal/ads/ctj;

    .line 34
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/csz;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bxl;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/bxl;-><init>(Lcom/google/android/gms/internal/ads/bxj;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V

    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/csz;->a(Lcom/google/android/gms/internal/ads/css;)Lcom/google/android/gms/internal/ads/csz;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/csz;->a()Lcom/google/android/gms/internal/ads/csu;

    move-result-object p1

    return-object p1
.end method
