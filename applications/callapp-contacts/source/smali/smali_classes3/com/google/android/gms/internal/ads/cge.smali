.class final synthetic Lcom/google/android/gms/internal/ads/cge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dar;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cgc;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;

.field private final d:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cgc;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cge;->a:Lcom/google/android/gms/internal/ads/cgc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cge;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cge;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cge;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cge;->a:Lcom/google/android/gms/internal/ads/cgc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cge;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cge;->c:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/cge;->d:Landroid/os/Bundle;

    .line 1016
    new-instance v10, Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zp;-><init>()V

    .line 1018
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cgc;->f:Lcom/google/android/gms/internal/ads/bym;

    .line 2005
    :try_start_0
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/bym;->b:Lcom/google/android/gms/internal/ads/bjg;

    .line 2021
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/bjg;->a()Lcom/google/android/gms/internal/ads/mm;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/mm;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/os;

    move-result-object v5

    .line 2022
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/bjg;->a:Lcom/google/android/gms/internal/ads/bja;

    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/internal/ads/bja;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/os;)V

    .line 2006
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bym;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Couldn\'t create RTB adapter : "

    .line 2009
    invoke-static {v4, v3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1019
    :goto_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cgc;->f:Lcom/google/android/gms/internal/ads/bym;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/bym;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/os;

    move-result-object v3

    .line 1021
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    new-instance v9, Lcom/google/android/gms/internal/ads/byv;

    invoke-direct {v9, v1, v3, v10}, Lcom/google/android/gms/internal/ads/byv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/os;Lcom/google/android/gms/internal/ads/zp;)V

    .line 1023
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgc;->d:Landroid/content/Context;

    .line 1024
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/cgc;->g:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1025
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/os/Bundle;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgc;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cpo;->e:Lcom/google/android/gms/internal/ads/zzvt;

    .line 1026
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/os;->a(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzvt;Lcom/google/android/gms/internal/ads/ox;)V

    return-object v10
.end method
