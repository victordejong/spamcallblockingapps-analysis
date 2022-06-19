.class public final Lcom/google/android/gms/internal/ads/coa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/caj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/caj<",
        "Lcom/google/android/gms/internal/ads/bhu;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lcom/google/android/gms/internal/ads/cnc;

.field final c:Lcom/google/android/gms/internal/ads/cmh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cmh<",
            "Lcom/google/android/gms/internal/ads/bhx;",
            "Lcom/google/android/gms/internal/ads/bhu;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/gms/internal/ads/afq;

.field private final f:Lcom/google/android/gms/internal/ads/cpj;

.field private final g:Lcom/google/android/gms/internal/ads/cpq;

.field private h:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/bhu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/afq;Lcom/google/android/gms/internal/ads/cmh;Lcom/google/android/gms/internal/ads/cnc;Lcom/google/android/gms/internal/ads/cpq;Lcom/google/android/gms/internal/ads/cpj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/afq;",
            "Lcom/google/android/gms/internal/ads/cmh<",
            "Lcom/google/android/gms/internal/ads/bhx;",
            "Lcom/google/android/gms/internal/ads/bhu;",
            ">;",
            "Lcom/google/android/gms/internal/ads/cnc;",
            "Lcom/google/android/gms/internal/ads/cpq;",
            "Lcom/google/android/gms/internal/ads/cpj;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/coa;->d:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/coa;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/coa;->e:Lcom/google/android/gms/internal/ads/afq;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/coa;->c:Lcom/google/android/gms/internal/ads/cmh;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/coa;->b:Lcom/google/android/gms/internal/ads/cnc;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/coa;->g:Lcom/google/android/gms/internal/ads/cpq;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/coa;->f:Lcom/google/android/gms/internal/ads/cpj;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/bhz;
    .locals 3

    .line 37
    check-cast p1, Lcom/google/android/gms/internal/ads/coh;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coa;->e:Lcom/google/android/gms/internal/ads/afq;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afq;->q()Lcom/google/android/gms/internal/ads/bhz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/aqz$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/aqz$a;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/coa;->d:Landroid/content/Context;

    .line 5002
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/aqz$a;->a:Landroid/content/Context;

    .line 40
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/coh;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 5004
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/aqz$a;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 41
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/coh;->b:Ljava/lang/String;

    .line 5008
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/aqz$a;->d:Ljava/lang/String;

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/coa;->f:Lcom/google/android/gms/internal/ads/cpj;

    .line 5011
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/aqz$a;->e:Lcom/google/android/gms/internal/ads/cpj;

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aqz$a;->a()Lcom/google/android/gms/internal/ads/aqz;

    move-result-object p1

    .line 45
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bhz;->a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/bhz;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/awm$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/awm$a;-><init>()V

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/awm$a;->a()Lcom/google/android/gms/internal/ads/awm;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/bhz;->a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/bhz;

    move-result-object p1

    return-object p1
.end method

.method final a(I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coa;->g:Lcom/google/android/gms/internal/ads/cpq;

    .line 3021
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpq;->p:Lcom/google/android/gms/internal/ads/cpd;

    .line 4003
    iput p1, v0, Lcom/google/android/gms/internal/ads/cpd;->a:I

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/coa;->h:Lcom/google/android/gms/internal/ads/dbt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dbt;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cai;Lcom/google/android/gms/internal/ads/cal;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/cai;",
            "Lcom/google/android/gms/internal/ads/cal<",
            "-",
            "Lcom/google/android/gms/internal/ads/bhu;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    new-instance p3, Lcom/google/android/gms/internal/ads/zzavt;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzavt;-><init>(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V

    .line 15
    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzavt;->zzbvf:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/coa;->a:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/coe;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/coe;-><init>(Lcom/google/android/gms/internal/ads/coa;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p2

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/coa;->h:Lcom/google/android/gms/internal/ads/dbt;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dbt;->isDone()Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/coa;->d:Landroid/content/Context;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzavt;->zzdvn:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzvq;->zzcid:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/cqb;->a(Landroid/content/Context;Z)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/coa;->g:Lcom/google/android/gms/internal/ads/cpq;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzavt;->zzbvf:Ljava/lang/String;

    .line 1016
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/cpq;->d:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->zzql()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p2

    .line 2009
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/cpq;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 24
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzavt;->zzdvn:Lcom/google/android/gms/internal/ads/zzvq;

    .line 3006
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cpq;->a()Lcom/google/android/gms/internal/ads/cpo;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/google/android/gms/internal/ads/coh;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/coh;-><init>(Lcom/google/android/gms/internal/ads/cog;)V

    .line 28
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/coh;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 29
    iput-object p3, p2, Lcom/google/android/gms/internal/ads/coh;->b:Ljava/lang/String;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/coa;->c:Lcom/google/android/gms/internal/ads/cmh;

    new-instance p3, Lcom/google/android/gms/internal/ads/cmm;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/cmm;-><init>(Lcom/google/android/gms/internal/ads/cmk;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/cod;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cod;-><init>(Lcom/google/android/gms/internal/ads/coa;)V

    .line 31
    invoke-interface {p1, p3, v0}, Lcom/google/android/gms/internal/ads/cmh;->a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/coa;->h:Lcom/google/android/gms/internal/ads/dbt;

    .line 32
    new-instance p3, Lcom/google/android/gms/internal/ads/cog;

    invoke-direct {p3, p0, p4, p2}, Lcom/google/android/gms/internal/ads/cog;-><init>(Lcom/google/android/gms/internal/ads/coa;Lcom/google/android/gms/internal/ads/cal;Lcom/google/android/gms/internal/ads/coh;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/coa;->a:Ljava/util/concurrent/Executor;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    return p1
.end method
