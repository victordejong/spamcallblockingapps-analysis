.class public final Lcom/google/android/gms/internal/ads/abw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dvk;
.implements Lcom/google/android/gms/internal/ads/dwl;
.implements Lcom/google/android/gms/internal/ads/eao;
.implements Lcom/google/android/gms/internal/ads/ecp;
.implements Lcom/google/android/gms/internal/ads/edu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dvk;",
        "Lcom/google/android/gms/internal/ads/dwl;",
        "Lcom/google/android/gms/internal/ads/eao;",
        "Lcom/google/android/gms/internal/ads/ecp<",
        "Lcom/google/android/gms/internal/ads/ecb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/edu;"
    }
.end annotation


# static fields
.field static a:I

.field static b:I


# instance fields
.field final c:Landroid/content/Context;

.field final d:Lcom/google/android/gms/internal/ads/abx;

.field final e:Lcom/google/android/gms/internal/ads/dvy;

.field final f:Lcom/google/android/gms/internal/ads/aay;

.field g:Lcom/google/android/gms/internal/ads/dvl;

.field h:Lcom/google/android/gms/internal/ads/acg;

.field i:I

.field j:I

.field final k:Ljava/lang/String;

.field final l:I

.field m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/abq;",
            ">;>;"
        }
    .end annotation
.end field

.field private final n:Lcom/google/android/gms/internal/ads/dvy;

.field private final o:Lcom/google/android/gms/internal/ads/ebp;

.field private p:Ljava/nio/ByteBuffer;

.field private q:Z

.field private final r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/abb;",
            ">;"
        }
    .end annotation
.end field

.field private s:J

.field private final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/ecg;",
            ">;"
        }
    .end annotation
.end field

.field private volatile u:Lcom/google/android/gms/internal/ads/abs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aay;Lcom/google/android/gms/internal/ads/abb;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->m:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    .line 5
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->r:Ljava/lang/ref/WeakReference;

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/abx;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/abx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->d:Lcom/google/android/gms/internal/ads/abx;

    .line 8
    new-instance v8, Lcom/google/android/gms/internal/ads/edo;

    sget-object v2, Lcom/google/android/gms/internal/ads/dzs;->a:Lcom/google/android/gms/internal/ads/dzs;

    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    const-wide/16 v3, 0x0

    const/4 v7, -0x1

    move-object v0, v8

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/edo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dzs;JLandroid/os/Handler;Lcom/google/android/gms/internal/ads/edu;I)V

    .line 9
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/abw;->n:Lcom/google/android/gms/internal/ads/dvy;

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/dxa;

    sget-object v0, Lcom/google/android/gms/internal/ads/dzs;->a:Lcom/google/android/gms/internal/ads/dzs;

    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/dxa;-><init>(Lcom/google/android/gms/internal/ads/dzs;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dwl;)V

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->e:Lcom/google/android/gms/internal/ads/dvy;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/ebo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ebo;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->o:Lcom/google/android/gms/internal/ads/ebp;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyz()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ExoPlayerAdapter initialize "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    .line 19
    :cond_0
    sget v1, Lcom/google/android/gms/internal/ads/abw;->a:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/google/android/gms/internal/ads/abw;->a:I

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dvy;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    aput-object v8, v1, v2

    .line 1001
    new-instance p1, Lcom/google/android/gms/internal/ads/dvo;

    invoke-direct {p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/dvo;-><init>([Lcom/google/android/gms/internal/ads/dvy;Lcom/google/android/gms/internal/ads/ebv;Lcom/google/android/gms/internal/ads/dvx;)V

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    .line 22
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/internal/ads/dvk;)V

    .line 23
    iput v3, p0, Lcom/google/android/gms/internal/ads/abw;->i:I

    const-wide/16 p1, 0x0

    .line 24
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/abw;->s:J

    .line 25
    iput v3, p0, Lcom/google/android/gms/internal/ads/abw;->j:I

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->t:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->u:Lcom/google/android/gms/internal/ads/abs;

    if-eqz p3, :cond_1

    .line 29
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/abb;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/abb;->h()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->k:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 30
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/abb;->i()I

    move-result v3

    :cond_2
    iput v3, p0, Lcom/google/android/gms/internal/ads/abw;->l:I

    .line 31
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->l:Lcom/google/android/gms/internal/ads/af;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 33
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dvl;->i()V

    :cond_3
    if-eqz p3, :cond_4

    .line 35
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/abb;->o()I

    move-result p1

    if-lez p1, :cond_4

    .line 36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/abb;->o()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/dvl;->a(I)V

    :cond_4
    if-eqz p3, :cond_5

    .line 37
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/abb;->p()I

    move-result p1

    if-lez p1, :cond_5

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/abb;->p()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/dvl;->b(I)V

    :cond_5
    return-void
.end method

.method private static a(Ljava/util/Map;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 44
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "content-length"

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 2001
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    .line 2004
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v3, v5, :cond_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_4

    .line 2007
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2008
    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3

    .line 2010
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/cxm;->a(C)I

    move-result v6

    const/16 v8, 0x1a

    if-ge v6, v8, :cond_1

    .line 2011
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/cxm;->a(C)I

    move-result v7

    if-eq v6, v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    nop

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eau;
    .locals 10

    .line 181
    new-instance v9, Lcom/google/android/gms/internal/ads/eaq;

    .line 183
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/abw;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    .line 184
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    .line 185
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 186
    new-instance v0, Lcom/google/android/gms/internal/ads/aby;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/aby;-><init>([B)V

    move-object v2, v0

    goto :goto_2

    .line 187
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bn:Lcom/google/android/gms/internal/ads/af;

    .line 189
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bl:Lcom/google/android/gms/internal/ads/af;

    .line 191
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aay;->i:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v1, v1, Lcom/google/android/gms/internal/ads/aay;->h:I

    if-lez v1, :cond_4

    .line 194
    new-instance v1, Lcom/google/android/gms/internal/ads/acb;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/gms/internal/ads/acb;-><init>(Lcom/google/android/gms/internal/ads/abw;Ljava/lang/String;Z)V

    goto :goto_1

    .line 195
    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/ads/aca;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/gms/internal/ads/aca;-><init>(Lcom/google/android/gms/internal/ads/abw;Ljava/lang/String;Z)V

    .line 196
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/aay;->i:Z

    if-eqz p2, :cond_5

    .line 198
    new-instance p2, Lcom/google/android/gms/internal/ads/acd;

    invoke-direct {p2, p0, v1}, Lcom/google/android/gms/internal/ads/acd;-><init>(Lcom/google/android/gms/internal/ads/abw;Lcom/google/android/gms/internal/ads/ecd;)V

    move-object v1, p2

    .line 199
    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->p:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    if-lez p2, :cond_6

    .line 200
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 203
    new-instance v0, Lcom/google/android/gms/internal/ads/acc;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/acc;-><init>(Lcom/google/android/gms/internal/ads/ecd;[B)V

    move-object v1, v0

    :cond_6
    move-object v2, v1

    .line 205
    :goto_2
    sget-object p2, Lcom/google/android/gms/internal/ads/aq;->k:Lcom/google/android/gms/internal/ads/af;

    .line 206
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p2

    .line 207
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 208
    sget-object p2, Lcom/google/android/gms/internal/ads/acf;->a:Lcom/google/android/gms/internal/ads/dxw;

    goto :goto_3

    .line 209
    :cond_7
    sget-object p2, Lcom/google/android/gms/internal/ads/ace;->a:Lcom/google/android/gms/internal/ads/dxw;

    :goto_3
    move-object v3, p2

    .line 210
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v4, p2, Lcom/google/android/gms/internal/ads/aay;->j:I

    sget-object v5, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    const/4 v7, 0x0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget v8, p2, Lcom/google/android/gms/internal/ads/aay;->f:I

    move-object v0, v9

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/eaq;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/ecd;Lcom/google/android/gms/internal/ads/dxw;ILandroid/os/Handler;Lcom/google/android/gms/internal/ads/eao;Ljava/lang/String;I)V

    return-object v9
.end method

.method private final e()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->u:Lcom/google/android/gms/internal/ads/abs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->u:Lcom/google/android/gms/internal/ads/abs;

    .line 2138
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/abs;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/dvl;->b(Lcom/google/android/gms/internal/ads/dvk;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dvl;->d()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    .line 79
    sget v0, Lcom/google/android/gms/internal/ads/abw;->b:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/abw;->b:I

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    .line 122
    iget v0, p0, Lcom/google/android/gms/internal/ads/abw;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/abw;->j:I

    return-void
.end method

.method public final a(II)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->h:Lcom/google/android/gms/internal/ads/acg;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/acg;->a(II)V

    :cond_0
    return-void
.end method

.method final a(Landroid/view/Surface;Z)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dvm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abw;->n:Lcom/google/android/gms/internal/ads/dvy;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/dvm;-><init>(Lcom/google/android/gms/internal/ads/dvn;ILjava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 165
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/dvm;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dvl;->b([Lcom/google/android/gms/internal/ads/dvm;)V

    return-void

    .line 166
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    new-array v1, v2, [Lcom/google/android/gms/internal/ads/dvm;

    aput-object v0, v1, p1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/dvl;->a([Lcom/google/android/gms/internal/ads/dvm;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzhe;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->h:Lcom/google/android/gms/internal/ads/acg;

    if-eqz v0, :cond_0

    const-string v1, "onPlayerError"

    .line 151
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/acg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abb;

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->bl:Lcom/google/android/gms/internal/ads/af;

    .line 111
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 114
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahs:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "frameRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahk:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bitRate"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzht;->width:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzht;->height:I

    const/16 v4, 0x17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resolution"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahn:Ljava/lang/String;

    const-string v3, "videoMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    const-string v3, "videoSampleMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahl:Ljava/lang/String;

    const-string v2, "videoCodec"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    .line 120
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/abb;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/io/IOException;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->h:Lcom/google/android/gms/internal/ads/acg;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->f:Lcom/google/android/gms/internal/ads/aay;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/aay;->k:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->h:Lcom/google/android/gms/internal/ads/acg;

    const-string v1, "onLoadException"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/acg;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->h:Lcom/google/android/gms/internal/ads/acg;

    const-string v1, "onLoadError"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/acg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .line 220
    check-cast p1, Lcom/google/android/gms/internal/ads/ecb;

    .line 221
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/ecg;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->t:Ljava/util/ArrayList;

    check-cast p1, Lcom/google/android/gms/internal/ads/ecg;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 223
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/abs;

    if-eqz v0, :cond_1

    .line 224
    check-cast p1, Lcom/google/android/gms/internal/ads/abs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->u:Lcom/google/android/gms/internal/ads/abs;

    .line 225
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/abw;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/abb;

    .line 226
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->bl:Lcom/google/android/gms/internal/ads/af;

    .line 227
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->u:Lcom/google/android/gms/internal/ads/abs;

    .line 3137
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/abs;->b:Z

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 231
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abw;->u:Lcom/google/android/gms/internal/ads/abs;

    .line 3139
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/abs;->d:Z

    .line 232
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gcacheHit"

    .line 233
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abw;->u:Lcom/google/android/gms/internal/ads/abs;

    .line 3140
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/abs;->e:Z

    .line 235
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gcacheDownloaded"

    .line 236
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    new-instance v2, Lcom/google/android/gms/internal/ads/abz;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/ads/abz;-><init>(Lcom/google/android/gms/internal/ads/abb;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method final a(Z)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dvl;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abw;->o:Lcom/google/android/gms/internal/ads/ebp;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ebp;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/abw;->a([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final a([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/abw;->p:Ljava/nio/ByteBuffer;

    .line 62
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/abw;->q:Z

    .line 63
    array-length p3, p1

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 64
    aget-object p1, p1, p4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/abw;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eau;

    move-result-object p1

    goto :goto_1

    .line 66
    :cond_1
    array-length p3, p1

    new-array p3, p3, [Lcom/google/android/gms/internal/ads/eau;

    .line 67
    :goto_0
    array-length v1, p1

    if-ge p4, v1, :cond_2

    .line 68
    aget-object v1, p1, p4

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/ads/abw;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/eau;

    move-result-object v1

    aput-object v1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 70
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/eav;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/eav;-><init>([Lcom/google/android/gms/internal/ads/eau;)V

    .line 72
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/abw;->g:Lcom/google/android/gms/internal/ads/dvl;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/dvl;->a(Lcom/google/android/gms/internal/ads/eau;)V

    .line 73
    sget p1, Lcom/google/android/gms/internal/ads/abw;->b:I

    add-int/2addr p1, v0

    sput p1, Lcom/google/android/gms/internal/ads/abw;->b:I

    return-void
.end method

.method public final b()J
    .locals 2

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget v0, p0, Lcom/google/android/gms/internal/ads/abw;->i:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b(I)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->h:Lcom/google/android/gms/internal/ads/acg;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/acg;->g(I)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzht;)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/abb;

    .line 133
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->bl:Lcom/google/android/gms/internal/ads/af;

    .line 134
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 135
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 137
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahn:Ljava/lang/String;

    const-string v3, "audioMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    const-string v3, "audioSampleMime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzht;->zzahl:Ljava/lang/String;

    const-string v2, "audioCodec"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onMetadataEvent"

    .line 140
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/abb;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final c()J
    .locals 4

    .line 88
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abw;->e()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->u:Lcom/google/android/gms/internal/ads/abs;

    .line 2139
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/abs;->d:Z

    if-nez v0, :cond_1

    return-wide v1

    .line 93
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/abw;->i:I

    int-to-long v0, v0

    .line 94
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abw;->u:Lcom/google/android/gms/internal/ads/abs;

    .line 2141
    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/abs;->f:J

    .line 94
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic c(I)V
    .locals 1

    .line 218
    iget v0, p0, Lcom/google/android/gms/internal/ads/abw;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/abw;->i:I

    return-void
.end method

.method public final d()J
    .locals 4

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/abw;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/abw;->s:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abw;->t:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ecg;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ecg;->b()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/abw;->a(Ljava/util/Map;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/abw;->s:J

    goto :goto_0

    .line 99
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/abw;->s:J

    return-wide v0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abw;->u:Lcom/google/android/gms/internal/ads/abs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/abs;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 212
    sget v0, Lcom/google/android/gms/internal/ads/abw;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/abw;->a:I

    .line 213
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzd;->zzyz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ExoPlayerAdapter finalize "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
