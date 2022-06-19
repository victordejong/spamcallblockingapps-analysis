.class public final Lcom/google/android/gms/internal/ads/zzbht;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdjk;


# instance fields
.field private final synthetic zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

.field private final zzflt:Landroid/content/Context;

.field private final zzflu:Ljava/lang/String;

.field private zzfmh:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfnv:Lcom/google/android/gms/internal/ads/zzvs;

.field private zzfoe:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzvs;",
            ">;"
        }
    .end annotation
.end field

.field private zzfof:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzcxy;",
            ">;"
        }
    .end annotation
.end field

.field private zzfog:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzcys;",
            ">;"
        }
    .end annotation
.end field

.field private zzfoh:Lcom/google/android/gms/internal/ads/zzeqo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeqo<",
            "Lcom/google/android/gms/internal/ads/zzdje;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvs;)V
    .locals 8

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzffq:Lcom/google/android/gms/internal/ads/zzbgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzflt:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfnv:Lcom/google/android/gms/internal/ads/zzvs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzflu:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeqe;->zzbb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeqb;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfmh:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzeqe;->zzbb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeqb;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfoe:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzr(Lcom/google/android/gms/internal/ads/zzbgz;)Lcom/google/android/gms/internal/ads/zzeqo;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcyn;->zzak(Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzcyn;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeqc;->zzau(Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzeqo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfof:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcyr;->zzasl()Lcom/google/android/gms/internal/ads/zzcyr;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeqc;->zzau(Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzeqo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfog:Lcom/google/android/gms/internal/ads/zzeqo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfmh:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzab(Lcom/google/android/gms/internal/ads/zzbgz;)Lcom/google/android/gms/internal/ads/zzeqo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfoe:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgz;->zzt(Lcom/google/android/gms/internal/ads/zzbgz;)Lcom/google/android/gms/internal/ads/zzeqo;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfof:Lcom/google/android/gms/internal/ads/zzeqo;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfog:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdnq;->zzavd()Lcom/google/android/gms/internal/ads/zzdnq;

    move-result-object v7

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdjl;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdjl;-><init>(Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;Lcom/google/android/gms/internal/ads/zzeqo;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqc;->zzau(Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzeqo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfoh:Lcom/google/android/gms/internal/ads/zzeqo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzbgy;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbht;-><init>(Lcom/google/android/gms/internal/ads/zzbgz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvs;)V

    return-void
.end method


# virtual methods
.method public final zzahw()Lcom/google/android/gms/internal/ads/zzcxw;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcxw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzflt:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfnv:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzflu:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfoh:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdje;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzfof:Lcom/google/android/gms/internal/ads/zzeqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeqo;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcxy;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcxw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzcxy;)V

    return-object v6
.end method
