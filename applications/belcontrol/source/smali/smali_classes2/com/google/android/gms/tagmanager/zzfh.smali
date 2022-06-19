.class public final Lcom/google/android/gms/tagmanager/zzfh;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzakf:Lcom/google/android/gms/tagmanager/zzdz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            ">;"
        }
    .end annotation
.end field

.field private zzakg:Lcom/google/android/gms/internal/gtm/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzdz;Lcom/google/android/gms/internal/gtm/zzl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            ">;",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzakf:Lcom/google/android/gms/tagmanager/zzdz;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzakg:Lcom/google/android/gms/internal/gtm/zzl;

    return-void
.end method


# virtual methods
.method public final getSize()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzakf:Lcom/google/android/gms/tagmanager/zzdz;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdz;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzuw;->zzse()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzakg:Lcom/google/android/gms/internal/gtm/zzl;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzuw;->zzse()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final zzjh()Lcom/google/android/gms/tagmanager/zzdz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tagmanager/zzdz<",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzakf:Lcom/google/android/gms/tagmanager/zzdz;

    return-object v0
.end method

.method public final zzji()Lcom/google/android/gms/internal/gtm/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzfh;->zzakg:Lcom/google/android/gms/internal/gtm/zzl;

    return-object v0
.end method
