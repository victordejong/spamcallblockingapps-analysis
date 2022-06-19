.class final Lcom/google/android/gms/internal/ads/ejq;
.super Lcom/google/android/gms/internal/ads/ejy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ejy<",
        "Lcom/google/android/gms/internal/ads/ekw;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/zzvt;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/mm;

.field private final synthetic e:Lcom/google/android/gms/internal/ads/ejj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ejq;->e:Lcom/google/android/gms/internal/ads/ejj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ejq;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ejq;->b:Lcom/google/android/gms/internal/ads/zzvt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ejq;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ejq;->d:Lcom/google/android/gms/internal/ads/mm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ejy;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejq;->a:Landroid/content/Context;

    const-string v1, "app_open"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ejj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/j;-><init>()V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/elf;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejq;->a:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ejq;->b:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ejq;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ejq;->d:Lcom/google/android/gms/internal/ads/mm;

    const v6, 0xc365f90

    move-object v1, p1

    .line 12
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/elf;->zzc(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/ekw;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ejq;->e:Lcom/google/android/gms/internal/ads/ejj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ejj;->a(Lcom/google/android/gms/internal/ads/ejj;)Lcom/google/android/gms/internal/ads/eiz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ejq;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ejq;->b:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ejq;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ejq;->d:Lcom/google/android/gms/internal/ads/mm;

    const/4 v6, 0x4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/eiz;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;I)Lcom/google/android/gms/internal/ads/ekw;

    move-result-object v0

    return-object v0
.end method
