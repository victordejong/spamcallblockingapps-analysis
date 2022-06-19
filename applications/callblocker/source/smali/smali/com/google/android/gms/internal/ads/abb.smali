.class public final Lcom/google/android/gms/internal/ads/abb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dks;
.implements Lcom/google/android/gms/internal/ads/dqb;
.implements Lcom/google/android/gms/internal/ads/dsa;
.implements Lcom/google/android/gms/internal/ads/dte;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dks;",
        "Lcom/google/android/gms/internal/ads/dqb;",
        "Lcom/google/android/gms/internal/ads/dsa",
        "<",
        "Lcom/google/android/gms/internal/ads/drp;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dte;"
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/aay;

.field private final e:Lcom/google/android/gms/internal/ads/dli;

.field private final f:Lcom/google/android/gms/internal/ads/dli;

.field private final g:Lcom/google/android/gms/internal/ads/drd;

.field private final h:Lcom/google/android/gms/internal/ads/aae;

.field private i:Lcom/google/android/gms/internal/ads/dkt;

.field private j:Ljava/nio/ByteBuffer;

.field private k:Z

.field private l:Lcom/google/android/gms/internal/ads/abk;

.field private m:I

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/ads/aau;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aae;)V
    .locals 9

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->n:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abb;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/aay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aay;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->d:Lcom/google/android/gms/internal/ads/aay;

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/dsy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abb;->c:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/internal/ads/dpa;->a:Lcom/google/android/gms/internal/ads/dpa;

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v8, -0x1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/dsy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dpa;JLcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dte;I)V

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->e:Lcom/google/android/gms/internal/ads/dli;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/dmj;

    sget-object v1, Lcom/google/android/gms/internal/ads/dpa;->a:Lcom/google/android/gms/internal/ads/dpa;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dmj;-><init>(Lcom/google/android/gms/internal/ads/dpa;)V

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->f:Lcom/google/android/gms/internal/ads/dli;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/dqy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dqy;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->g:Lcom/google/android/gms/internal/ads/drd;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/uu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ExoPlayerAdapter initialize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 18
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/abb;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gms/internal/ads/abb;->a:I

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dli;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abb;->f:Lcom/google/android/gms/internal/ads/dli;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abb;->e:Lcom/google/android/gms/internal/ads/dli;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->g:Lcom/google/android/gms/internal/ads/drd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abb;->d:Lcom/google/android/gms/internal/ads/aay;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dkx;->a([Lcom/google/android/gms/internal/ads/dli;Lcom/google/android/gms/internal/ads/drj;Lcom/google/android/gms/internal/ads/dlh;)Lcom/google/android/gms/internal/ads/dkt;

    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dkt;->a(Lcom/google/android/gms/internal/ads/dks;)V

    .line 22
    return-void
.end method

.method private final a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dqg;
    .locals 9

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/gms/internal/ads/dqc;

    .line 105
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/abb;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 107
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abb;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 108
    new-instance v2, Lcom/google/android/gms/internal/ads/aba;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/aba;-><init>([B)V

    .line 121
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/abi;->a:Lcom/google/android/gms/internal/ads/dni;

    .line 122
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget v4, v1, Lcom/google/android/gms/internal/ads/aae;->j:I

    sget-object v5, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget v8, v1, Lcom/google/android/gms/internal/ads/aae;->f:I

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/dqc;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/dro;Lcom/google/android/gms/internal/ads/dni;ILcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dqb;Ljava/lang/String;I)V

    .line 123
    return-object v0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget v1, v1, Lcom/google/android/gms/internal/ads/aae;->h:I

    if-lez v1, :cond_3

    .line 110
    new-instance v1, Lcom/google/android/gms/internal/ads/abd;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/abd;-><init>(Lcom/google/android/gms/internal/ads/abb;Ljava/lang/String;)V

    .line 112
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/aae;->i:Z

    if-eqz v2, :cond_1

    .line 114
    new-instance v2, Lcom/google/android/gms/internal/ads/abf;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/abf;-><init>(Lcom/google/android/gms/internal/ads/abb;Lcom/google/android/gms/internal/ads/dro;)V

    move-object v1, v2

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abb;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-lez v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abb;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v3, v2, [B

    .line 117
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abb;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 119
    new-instance v2, Lcom/google/android/gms/internal/ads/abe;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/abe;-><init>(Lcom/google/android/gms/internal/ads/dro;[B)V

    move-object v1, v2

    :cond_2
    move-object v2, v1

    .line 120
    goto :goto_0

    .line 111
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/abc;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/abc;-><init>(Lcom/google/android/gms/internal/ads/abb;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/google/android/gms/internal/ads/abb;->a:I

    return v0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/google/android/gms/internal/ads/abb;->b:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dkt;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/dro;)Lcom/google/android/gms/internal/ads/drp;
    .locals 4

    .prologue
    .line 135
    new-instance v0, Lcom/google/android/gms/internal/ads/aaw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->c:Landroid/content/Context;

    .line 136
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dro;->a()Lcom/google/android/gms/internal/ads/drp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/abg;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/abg;-><init>(Lcom/google/android/gms/internal/ads/abb;)V

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/gms/internal/ads/aaw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/drp;Lcom/google/android/gms/internal/ads/dsa;Lcom/google/android/gms/internal/ads/aaz;)V

    .line 137
    return-object v0
.end method

.method final synthetic a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/drp;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 141
    new-instance v0, Lcom/google/android/gms/internal/ads/drr;

    .line 142
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/aae;->i:Z

    if-eqz v1, :cond_0

    move-object v3, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget v4, v1, Lcom/google/android/gms/internal/ads/aae;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget v5, v1, Lcom/google/android/gms/internal/ads/aae;->e:I

    const/4 v6, 0x1

    move-object v1, p1

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/drr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dsm;Lcom/google/android/gms/internal/ads/dsa;IIZLcom/google/android/gms/internal/ads/drv;)V

    .line 143
    return-object v0

    :cond_0
    move-object v3, p0

    .line 142
    goto :goto_0
.end method

.method final a(FZ)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dku;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->f:Lcom/google/android/gms/internal/ads/dli;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dku;-><init>(Lcom/google/android/gms/internal/ads/dkv;ILjava/lang/Object;)V

    .line 93
    if-eqz p2, :cond_1

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    new-array v2, v5, [Lcom/google/android/gms/internal/ads/dku;

    aput-object v0, v2, v4

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dkt;->b([Lcom/google/android/gms/internal/ads/dku;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    new-array v2, v5, [Lcom/google/android/gms/internal/ads/dku;

    aput-object v0, v2, v4

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dkt;->a([Lcom/google/android/gms/internal/ads/dku;)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aau;

    .line 79
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/aau;->a(I)V

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method public final a(IIIF)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/abk;->a(II)V

    .line 63
    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method final a(Landroid/view/Surface;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dku;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->e:Lcom/google/android/gms/internal/ads/dli;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/dku;-><init>(Lcom/google/android/gms/internal/ads/dkv;ILjava/lang/Object;)V

    .line 86
    if-eqz p2, :cond_1

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/dku;

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dkt;->b([Lcom/google/android/gms/internal/ads/dku;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/dku;

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dkt;->a([Lcom/google/android/gms/internal/ads/dku;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/abk;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    .line 27
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dlf;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dlj;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dmt;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dqv;Lcom/google/android/gms/internal/ads/drg;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzgq;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    const-string/jumbo v1, "onPlayerError"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/abk;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 74
    :cond_0
    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    const-string/jumbo v1, "onLoadError"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/abk;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 56
    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 129
    .line 130
    iget v0, p0, Lcom/google/android/gms/internal/ads/abb;->m:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/abb;->m:I

    .line 131
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/drq;)V
    .locals 1

    .prologue
    .line 132
    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/abb;->m:I

    .line 134
    return-void
.end method

.method public final a(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public final a(ZI)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/abk;->b(I)V

    .line 71
    :cond_0
    return-void
.end method

.method final synthetic a(ZJ)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->l:Lcom/google/android/gms/internal/ads/abk;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/abk;->a(ZJ)V

    .line 140
    :cond_0
    return-void
.end method

.method public final a([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/abb;->a([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    .line 30
    return-void
.end method

.method public final a([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    if-nez v1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 33
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/abb;->j:Ljava/nio/ByteBuffer;

    .line 34
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/abb;->k:Z

    .line 35
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 36
    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/abb;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dqg;

    move-result-object v0

    .line 44
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dkt;->a(Lcom/google/android/gms/internal/ads/dqg;)V

    .line 45
    sget v0, Lcom/google/android/gms/internal/ads/abb;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/gms/internal/ads/abb;->b:I

    goto :goto_0

    .line 38
    :cond_1
    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dqg;

    .line 39
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 40
    aget-object v2, p1, v0

    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/internal/ads/abb;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dqg;

    move-result-object v2

    aput-object v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 42
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/dqh;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dqh;-><init>([Lcom/google/android/gms/internal/ads/dqg;)V

    goto :goto_1
.end method

.method final synthetic b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/drp;
    .locals 6

    .prologue
    .line 144
    new-instance v0, Lcom/google/android/gms/internal/ads/aau;

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/aae;->i:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget v3, v1, Lcom/google/android/gms/internal/ads/aae;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget v4, v1, Lcom/google/android/gms/internal/ads/aae;->e:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->h:Lcom/google/android/gms/internal/ads/aae;

    iget v5, v1, Lcom/google/android/gms/internal/ads/aae;->h:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/aau;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dsa;III)V

    .line 146
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abb;->n:Ljava/util/Set;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    return-object v0

    :cond_0
    move-object v2, p0

    .line 145
    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/dmt;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method final b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    if-nez v0, :cond_1

    .line 102
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dkt;->e()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 100
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/abb;->g:Lcom/google/android/gms/internal/ads/drd;

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/drd;->a(IZ)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 100
    goto :goto_1
.end method

.method public final d()Lcom/google/android/gms/internal/ads/aay;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->d:Lcom/google/android/gms/internal/ads/aay;

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dkt;->b(Lcom/google/android/gms/internal/ads/dks;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dkt;->d()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abb;->i:Lcom/google/android/gms/internal/ads/dkt;

    .line 51
    sget v0, Lcom/google/android/gms/internal/ads/abb;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/abb;->b:I

    .line 52
    :cond_0
    return-void
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/gms/internal/ads/abb;->m:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final finalize()V
    .locals 3

    .prologue
    .line 124
    sget v0, Lcom/google/android/gms/internal/ads/abb;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/abb;->a:I

    .line 125
    invoke-static {}, Lcom/google/android/gms/internal/ads/uu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ExoPlayerAdapter finalize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
