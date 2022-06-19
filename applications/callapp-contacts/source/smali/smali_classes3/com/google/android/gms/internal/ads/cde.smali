.class public final Lcom/google/android/gms/internal/ads/cde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final f:Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Lcom/google/android/gms/internal/ads/apf;

.field final d:Lcom/google/android/gms/internal/ads/cqm;

.field final e:Lcom/google/android/gms/internal/ads/cpo;

.field final g:Lcom/google/android/gms/ads/internal/util/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cde;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/apf;Lcom/google/android/gms/internal/ads/cqm;Lcom/google/android/gms/internal/ads/cpo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cde;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cde;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/apf;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cde;->d:Lcom/google/android/gms/internal/ads/cqm;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cde;->e:Lcom/google/android/gms/internal/ads/cpo;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yd;->d()Lcom/google/android/gms/ads/internal/util/zzf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cde;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->dk:Lcom/google/android/gms/internal/ads/af;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cde;->c:Lcom/google/android/gms/internal/ads/apf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cde;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/apf;->a(Lcom/google/android/gms/internal/ads/zzvq;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cde;->d:Lcom/google/android/gms/internal/ads/cqm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cqm;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 15
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/cdh;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/cdh;-><init>(Lcom/google/android/gms/internal/ads/cde;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
