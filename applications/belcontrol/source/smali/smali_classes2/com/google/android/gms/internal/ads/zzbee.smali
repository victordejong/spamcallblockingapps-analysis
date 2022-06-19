.class public Lcom/google/android/gms/internal/ads/zzbee;
.super Landroid/webkit/WebViewClient;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfn;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzbrq:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzchd:Lcom/google/android/gms/internal/ads/zzvc;

.field private zzdgz:Lcom/google/android/gms/internal/ads/zzahi;

.field private zzdha:Lcom/google/android/gms/internal/ads/zzahk;

.field private zzdhw:Lcom/google/android/gms/ads/internal/zza;

.field private zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

.field private zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field private zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;

.field private zzdwz:Z

.field public zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzeqv:Lcom/google/android/gms/internal/ads/zztu;

.field private final zzeqw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private zzeqx:Lcom/google/android/gms/internal/ads/zzbfq;

.field private zzeqy:Lcom/google/android/gms/internal/ads/zzbfp;

.field private zzeqz:Lcom/google/android/gms/internal/ads/zzbfs;

.field private zzera:Z

.field private zzerb:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzerc:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzerd:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzere:Lcom/google/android/gms/internal/ads/zzaqr;

.field public zzerf:Lcom/google/android/gms/internal/ads/zzawz;

.field private zzerg:Z

.field private zzerh:Z

.field private zzeri:I

.field private final zzerj:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzerk:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zztu;Z)V
    .locals 6

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaqr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacs()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaaw;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaqr;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaaw;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbee;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zztu;ZLcom/google/android/gms/internal/ads/zzaqr;Lcom/google/android/gms/internal/ads/zzaqg;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zztu;ZLcom/google/android/gms/internal/ads/zzaqr;Lcom/google/android/gms/internal/ads/zzaqg;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqw:Ljava/util/HashMap;

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzera:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqv:Lcom/google/android/gms/internal/ads/zztu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzbrq:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzere:Lcom/google/android/gms/internal/ads/zzaqr;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    new-instance p1, Ljava/util/HashSet;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzabp;->zzcws:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, ","

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerj:Ljava/util/HashSet;

    return-void
.end method

.method private final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawz;I)V
    .locals 2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzawz;->zzww()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzawz;->zzl(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzawz;->zzww()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbef;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbef;-><init>(Lcom/google/android/gms/internal/ads/zzbee;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawz;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqg;->zzvp()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkq()Lcom/google/android/gms/ads/internal/overlay/zzm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerf:Lcom/google/android/gms/internal/ads/zzawz;

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsu:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/zzd;->url:Ljava/lang/String;

    :cond_1
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzawz;->zzdv(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzbee;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawz;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawz;I)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzbee;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyg()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Received GMSG: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "  "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzaif;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p3, v0, p1}, Lcom/google/android/gms/internal/ads/zzaif;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private final zzadu()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerk:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerk:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final zzadz()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqx:Lcom/google/android/gms/internal/ads/zzbfq;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerg:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeri:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerh:Z

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcrm:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabi()Lcom/google/android/gms/internal/ads/zzacd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabi()Lcom/google/android/gms/internal/ads/zzacd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacd;->zzsp()Lcom/google/android/gms/internal/ads/zzacc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbbo;->zzabd()Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v1

    const-string v2, "awfllc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzabx;->zza(Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/internal/ads/zzaca;[Ljava/lang/String;)Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqx:Lcom/google/android/gms/internal/ads/zzbfq;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerh:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfq;->zzal(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqx:Lcom/google/android/gms/internal/ads/zzbfq;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadh()V

    return-void
.end method

.method private static zzaea()Landroid/webkit/WebResourceResponse;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcoy:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x108

    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v1, 0x14

    if-gt p1, v1, :cond_9

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_8

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabj()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v2

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const v9, 0xea60

    move-object v7, v1

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaze;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaze;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Ljava/net/HttpURLConnection;I)V

    const/16 v2, 0x12c

    if-lt v4, v2, :cond_7

    const/16 v2, 0x190

    if-ge v4, v2, :cond_7

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v3

    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "Protocol is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbee;->zzaea()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_2
    :try_start_2
    const-string v4, "http"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string p1, "Unsupported scheme: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbee;->zzaea()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_4
    :try_start_3
    const-string v0, "Redirecting to "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing Location header in redirect"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzd(Ljava/net/HttpURLConnection;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object p1

    :cond_8
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid protocol."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    new-instance p1, Ljava/io/IOException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Too many redirects (20)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw p1
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvc;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Loading resource: "

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gmsg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mobileads.google.com"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbee;->zzj(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbeb;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadd()V

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerg:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqy:Lcom/google/android/gms/internal/ads/zzbfp;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfp;->zzul()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqy:Lcom/google/android/gms/internal/ads/zzbfp;

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadz()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzb(ZI)Z

    move-result p1

    return p1
.end method

.method public final reset()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerf:Lcom/google/android/gms/internal/ads/zzawz;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzawz;->zzwy()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerf:Lcom/google/android/gms/internal/ads/zzawz;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqx:Lcom/google/android/gms/internal/ads/zzbfq;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqy:Lcom/google/android/gms/internal/ads/zzbfp;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdgz:Lcom/google/android/gms/internal/ads/zzahi;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdha:Lcom/google/android/gms/internal/ads/zzahk;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzera:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzbrq:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerb:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerd:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqz:Lcom/google/android/gms/internal/ads/zzbfs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaqg;->zzad(Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbee;->zzc(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 12

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "AdWebView shouldOverrideUrlLoading: "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mobileads.google.com"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbee;->zzj(Landroid/net/Uri;)V

    goto/16 :goto_7

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzera:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvc;->onAdClicked()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerf:Lcom/google/android/gms/internal/ads/zzawz;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzawz;->zzdv(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_b

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzada()Lcom/google/android/gms/internal/ads/zzei;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzei;->zzb(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabe()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_4

    :catch_0
    nop

    const-string p1, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhw:Lcom/google/android/gms/ads/internal/zza;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zza;->zzjy()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhw:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zza;->zzbk(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    :goto_5
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v4, "android.intent.action.VIEW"

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzt;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    goto :goto_7

    :cond_b
    const-string p1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzex(Ljava/lang/String;)V

    :goto_7
    return v2
.end method

.method public final zza(IIZ)V
    .locals 1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzere:Lcom/google/android/gms/internal/ads/zzaqr;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zzj(II)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzaqg;->zza(IIZ)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadc()Z

    move-result v0

    new-instance v8, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabj()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzbeb;)V

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    new-instance v11, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabj()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v3

    move-object v1, v11

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v11}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqy:Lcom/google/android/gms/internal/ads/zzbfp;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqx:Lcom/google/android/gms/internal/ads/zzbfq;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/internal/ads/zzahi;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/ads/zzahk;Lcom/google/android/gms/ads/internal/overlay/zzv;ZLcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqt;Lcom/google/android/gms/internal/ads/zzawz;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzdss;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    if-nez p8, :cond_0

    new-instance v5, Lcom/google/android/gms/ads/internal/zza;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lcom/google/android/gms/ads/internal/zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawz;Lcom/google/android/gms/internal/ads/zzatf;)V

    goto :goto_0

    :cond_0
    move-object/from16 v5, p8

    :goto_0
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaqg;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-direct {v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzaqg;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzaqt;)V

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzerf:Lcom/google/android/gms/internal/ads/zzawz;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzabp;->zzcpj:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzahj;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzahj;-><init>(Lcom/google/android/gms/internal/ads/zzahi;)V

    const-string v6, "/adMetadata"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzahl;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzahl;-><init>(Lcom/google/android/gms/internal/ads/zzahk;)V

    const-string v6, "/appEvent"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhl:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/backButton"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhm:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/refresh"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhc:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/canOpenApp"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhb:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/canOpenURLs"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhd:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/canOpenIntents"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhf:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/close"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhg:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/customClose"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhp:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/instrument"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhr:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/delayPageLoaded"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhs:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/delayPageClosed"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdht:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/getLocationInfo"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhi:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v6, "/log"

    invoke-virtual {p0, v6, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaig;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    invoke-direct {v4, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqg;Lcom/google/android/gms/internal/ads/zzaqt;)V

    const-string v3, "/mraid"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzere:Lcom/google/android/gms/internal/ads/zzaqr;

    const-string v4, "/mraidLoaded"

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaij;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    move-object v8, v3

    move-object v9, v5

    move-object/from16 v11, p11

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzaij;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;)V

    const-string v4, "/open"

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbdm;-><init>()V

    const-string v4, "/precache"

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzahm;->zzdhk:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v4, "/touch"

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzahm;->zzdhn:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v4, "/video"

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzahm;->zzdho:Lcom/google/android/gms/internal/ads/zzaif;

    const-string v4, "/videoMeta"

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    const-string v3, "/httpTrack"

    const-string v4, "/click"

    if-eqz p11, :cond_2

    if-eqz p12, :cond_2

    invoke-static/range {p11 .. p12}, Lcom/google/android/gms/internal/ads/zzdnw;->zza(Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzdss;)Lcom/google/android/gms/internal/ads/zzaif;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    invoke-static/range {p11 .. p12}, Lcom/google/android/gms/internal/ads/zzdnw;->zzb(Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzdss;)Lcom/google/android/gms/internal/ads/zzaif;

    move-result-object v4

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/google/android/gms/internal/ads/zzahm;->zzdhe:Lcom/google/android/gms/internal/ads/zzaif;

    invoke-virtual {p0, v4, v6}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzahm;->zzdhh:Lcom/google/android/gms/internal/ads/zzaif;

    :goto_1
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlp()Lcom/google/android/gms/internal/ads/zzaxc;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzaxc;->zzy(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaih;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzaih;-><init>(Landroid/content/Context;)V

    const-string v4, "/logScionEvent"

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V

    :cond_3
    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdgz:Lcom/google/android/gms/internal/ads/zzahi;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdha:Lcom/google/android/gms/internal/ads/zzahk;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhw:Lcom/google/android/gms/ads/internal/zza;

    move/from16 v1, p6

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzera:Z

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/Predicate<",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqw:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaif;

    invoke-interface {p2, v3}, Lcom/google/android/gms/common/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqw:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqw:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(ZILjava/lang/String;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadc()Z

    move-result v1

    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbek;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbek;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/ads/internal/overlay/zzq;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdgz:Lcom/google/android/gms/internal/ads/zzahi;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdha:Lcom/google/android/gms/internal/ads/zzahk;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabj()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v12

    move-object v2, v13

    move v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/ads/zzahi;Lcom/google/android/gms/internal/ads/zzahk;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbeb;ZILjava/lang/String;Lcom/google/android/gms/internal/ads/zzazn;)V

    invoke-direct {p0, v13}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadc()Z

    move-result v1

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbek;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbek;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/ads/internal/overlay/zzq;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdgz:Lcom/google/android/gms/internal/ads/zzahi;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdha:Lcom/google/android/gms/internal/ads/zzahk;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabj()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v13

    move-object v2, v14

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/ads/zzahi;Lcom/google/android/gms/internal/ads/zzahk;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbeb;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazn;)V

    invoke-direct {p0, v14}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzado()Lcom/google/android/gms/ads/internal/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhw:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method public final zzadp()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzbrq:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzadq()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerb:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzadr()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerc:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzads()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzadt()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzadv()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerf:Lcom/google/android/gms/internal/ads/zzawz;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Ljb;->R(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawz;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadu()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbei;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzbei;-><init>(Lcom/google/android/gms/internal/ads/zzbee;Lcom/google/android/gms/internal/ads/zzawz;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerk:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerk:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final zzadw()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerd:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeri:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeri:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadz()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzadx()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeri:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeri:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadz()V

    return-void
.end method

.method public final zzady()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqv:Lcom/google/android/gms/internal/ads/zztu;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zztw$zza$zza;->zzbye:Lcom/google/android/gms/internal/ads/zztw$zza$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztw$zza$zza;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerh:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbee;->zzadz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->destroy()V

    return-void
.end method

.method public final zzaw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzera:Z

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaif;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaif<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbeb;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqw:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzbb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdwz:Z

    return-void
.end method

.method public final zzbc(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerb:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzbd(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerc:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdwz:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzaxu;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/ads/zzbee;->zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzth;->zzbs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzsz;->zza(Lcom/google/android/gms/internal/ads/zzth;)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zzmw()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zzmx()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, v0, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaze;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzadh;->zzddv:Lcom/google/android/gms/internal/ads/zzacx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacx;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbee;->zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object p2

    const-string v0, "AdWebViewClient.interceptRequest"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzayo;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbee;->zzaea()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(ZI)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadc()Z

    move-result v0

    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbft;->zzaeo()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzequ:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabj()Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbeb;ZILcom/google/android/gms/internal/ads/zzazn;)V

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final zzi(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzdhx:Lcom/google/android/gms/internal/ads/zzaqg;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaqg;->zzi(II)V

    :cond_0
    return-void
.end method

.method public final zzj(Landroid/net/Uri;)V
    .locals 5

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzeqw:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcwr:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzerj:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcwt:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_1

    const-string v2, "Parsing gmsg query params on BG thread: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzbeh;-><init>(Lcom/google/android/gms/internal/ads/zzbee;Ljava/util/List;Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdzk;->zza(Lcom/google/android/gms/internal/ads/zzdzw;Lcom/google/android/gms/internal/ads/zzdzl;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzg(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbee;->zza(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzabp;->zzcyx:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayo;->zzxm()Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzazp;->zzeic:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbeg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbeg;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final zzvx()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbee;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzera:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbee;->zzbrq:Z

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazp;->zzeig:Lcom/google/android/gms/internal/ads/zzdzv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzbed;-><init>(Lcom/google/android/gms/internal/ads/zzbee;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
