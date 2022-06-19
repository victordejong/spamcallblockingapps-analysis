.class public final Lcom/google/android/gms/internal/ads/caw;
.super Lcom/google/android/gms/internal/ads/xr;
.source "SourceFile"


# static fields
.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/google/android/gms/internal/ads/die;

.field c:Lcom/google/android/gms/internal/ads/cqd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cqd<",
            "Lcom/google/android/gms/internal/ads/bgy;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/android/gms/internal/ads/dbs;

.field e:Lcom/google/android/gms/internal/ads/zzatj;

.field f:Landroid/graphics/Point;

.field g:Landroid/graphics/Point;

.field private l:Lcom/google/android/gms/internal/ads/afq;

.field private m:Lcom/google/android/gms/internal/ads/zzbar;

.field private final n:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "/aclk"

    const-string v2, "/pcs/click"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/caw;->h:Ljava/util/List;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".doubleclick.net"

    const-string v2, ".googleadservices.com"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/caw;->i:Ljava/util/List;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, "/pagead/adview"

    const-string v4, "/pcs/view"

    const-string v5, "/pagead/conversion"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/caw;->j:Ljava/util/List;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    const-string v3, ".googlesyndication.com"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/caw;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/afq;Landroid/content/Context;Lcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/cqd;Lcom/google/android/gms/internal/ads/dbs;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/afq;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/die;",
            "Lcom/google/android/gms/internal/ads/zzbar;",
            "Lcom/google/android/gms/internal/ads/cqd<",
            "Lcom/google/android/gms/internal/ads/bgy;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dbs;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/xr;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->f:Landroid/graphics/Point;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->g:Landroid/graphics/Point;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/caw;->l:Lcom/google/android/gms/internal/ads/afq;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/caw;->a:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/caw;->b:Lcom/google/android/gms/internal/ads/die;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/caw;->m:Lcom/google/android/gms/internal/ads/zzbar;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/caw;->c:Lcom/google/android/gms/internal/ads/cqd;

    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/caw;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/caw;->n:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nas"

    .line 191
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/caw;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 142
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&adurl="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "?adurl="

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-eq v1, v2, :cond_1

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    .line 152
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 157
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/caw;)Lcom/google/android/gms/internal/ads/zzbar;
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/caw;->m:Lcom/google/android/gms/internal/ads/zzbar;

    return-object p0
.end method

.method static final synthetic a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 186
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static final synthetic a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "nas"

    .line 188
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 195
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/caw;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "nas"

    .line 197
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/caw;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final a()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->e:Lcom/google/android/gms/internal/ads/zzatj;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatj;->zzdva:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->e:Lcom/google/android/gms/internal/ads/zzatj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatj;->zzdva:Ljava/util/Map;

    .line 160
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static a(Landroid/net/Uri;)Z
    .locals 2

    .line 104
    sget-object v0, Lcom/google/android/gms/internal/ads/caw;->j:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/caw;->k:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/caw;->a(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method final a(Landroid/net/Uri;Lcom/google/android/gms/dynamic/b;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->b:Lcom/google/android/gms/internal/ads/die;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/caw;->a:Landroid/content/Context;

    .line 107
    invoke-static {p2}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/google/android/gms/internal/ads/die;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeh; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, ""

    .line 111
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/za;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p2, "ms"

    .line 112
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p1

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Failed to append spam signals to click url."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/dynamic/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/bgy;

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/caw;->c:Lcom/google/android/gms/internal/ads/cqd;

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cqd;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/cbd;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/ads/cbd;-><init>(Lcom/google/android/gms/internal/ads/caw;[Lcom/google/android/gms/internal/ads/bgy;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/caw;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 6019
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 132
    new-instance v1, Lcom/google/android/gms/internal/ads/cbg;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/cbg;-><init>(Lcom/google/android/gms/internal/ads/caw;[Lcom/google/android/gms/internal/ads/bgy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->d:Lcom/google/android/gms/internal/ads/dbs;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 134
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->eu:Lcom/google/android/gms/internal/ads/af;

    .line 136
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/caw;->n:Ljava/util/concurrent/ScheduledExecutorService;

    .line 138
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dbc;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/cbb;->a:Lcom/google/android/gms/internal/ads/cxu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/caw;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 139
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/dbc;->a(Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1

    const-class v0, Ljava/lang/Exception;

    sget-object v1, Lcom/google/android/gms/internal/ads/cbe;->a:Lcom/google/android/gms/internal/ads/cxu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/caw;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 140
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dbc;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;)V
    .locals 2

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->et:Lcom/google/android/gms/internal/ads/af;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->e:Lcom/google/android/gms/internal/ads/zzatj;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzatj;->zzaay:Landroid/view/View;

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbn;->zza(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->f:Landroid/graphics/Point;

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->f:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->g:Landroid/graphics/Point;

    .line 47
    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/caw;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->b:Lcom/google/android/gms/internal/ads/die;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/die;->a(Landroid/view/MotionEvent;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/zzazi;Lcom/google/android/gms/internal/ads/xn;)V
    .locals 5

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/caw;->a:Landroid/content/Context;

    .line 13
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzazi;->zzbvf:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzazi;->zzbrw:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzazi;->zzedt:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzazi;->zzedu:Lcom/google/android/gms/internal/ads/zzvq;

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/caw;->l:Lcom/google/android/gms/internal/ads/afq;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/afq;->s()Lcom/google/android/gms/internal/ads/cat;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/aqz$a;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/aqz$a;-><init>()V

    .line 1002
    iput-object p1, v4, Lcom/google/android/gms/internal/ads/aqz$a;->a:Landroid/content/Context;

    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/cpq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/cpq;-><init>()V

    if-nez v0, :cond_0

    const-string v0, "adUnitId"

    .line 1016
    :cond_0
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/cpq;->d:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 20
    new-instance p2, Lcom/google/android/gms/internal/ads/eja;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/eja;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/eja;->a()Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p2

    .line 2006
    :cond_1
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    if-nez v2, :cond_2

    .line 23
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzvt;-><init>()V

    .line 2009
    :cond_2
    iput-object v2, p1, Lcom/google/android/gms/internal/ads/cpq;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cpq;->a()Lcom/google/android/gms/internal/ads/cpo;

    move-result-object p1

    .line 3004
    iput-object p1, v4, Lcom/google/android/gms/internal/ads/aqz$a;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/aqz$a;->a()Lcom/google/android/gms/internal/ads/aqz;

    move-result-object p1

    .line 27
    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/cat;->a(Lcom/google/android/gms/internal/ads/aqz;)Lcom/google/android/gms/internal/ads/cat;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/cbj$a;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/cbj$a;-><init>()V

    .line 4002
    iput-object v1, p2, Lcom/google/android/gms/internal/ads/cbj$a;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/cbj;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/cbj;-><init>(Lcom/google/android/gms/internal/ads/cbj$a;Lcom/google/android/gms/internal/ads/cbl;)V

    .line 30
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/cat;->a(Lcom/google/android/gms/internal/ads/cbj;)Lcom/google/android/gms/internal/ads/cat;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/awm$a;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/awm$a;-><init>()V

    .line 31
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/awm$a;->a()Lcom/google/android/gms/internal/ads/awm;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/cat;->a(Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/cat;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cat;->a()Lcom/google/android/gms/internal/ads/cau;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cau;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/google/android/gms/internal/ads/cbf;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/cbf;-><init>(Lcom/google/android/gms/internal/ads/caw;Lcom/google/android/gms/internal/ads/xn;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/caw;->l:Lcom/google/android/gms/internal/ads/afq;

    .line 35
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/afq;->b()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 36
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzatj;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/caw;->e:Lcom/google/android/gms/internal/ads/zzatj;

    .line 55
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/caw;->c:Lcom/google/android/gms/internal/ads/cqd;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/cqd;->a(I)V

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/ro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/dynamic/b;",
            "Lcom/google/android/gms/internal/ads/ro;",
            ")V"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->et:Lcom/google/android/gms/internal/ads/af;

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-string p1, "The updating URL feature is not enabled."

    .line 60
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/ro;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 63
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->d:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v1, Lcom/google/android/gms/internal/ads/cav;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/cav;-><init>(Lcom/google/android/gms/internal/ads/caw;Ljava/util/List;Lcom/google/android/gms/dynamic/b;)V

    .line 66
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/caw;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 68
    new-instance p2, Lcom/google/android/gms/internal/ads/cay;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/cay;-><init>(Lcom/google/android/gms/internal/ads/caw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 4019
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "Asset view map is empty."

    .line 70
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 71
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/cbi;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/cbi;-><init>(Lcom/google/android/gms/internal/ads/caw;Lcom/google/android/gms/internal/ads/ro;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/caw;->l:Lcom/google/android/gms/internal/ads/afq;

    .line 72
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/afq;->b()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 73
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/dynamic/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/util/List;Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/ro;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/dynamic/b;",
            "Lcom/google/android/gms/internal/ads/ro;",
            ")V"
        }
    .end annotation

    .line 75
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->et:Lcom/google/android/gms/internal/ads/af;

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "The updating URL feature is not enabled."

    .line 78
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/ro;->a(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string p1, "There should be only 1 click URL."

    .line 81
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/ro;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/ads/caw;->h:Ljava/util/List;

    sget-object v2, Lcom/google/android/gms/internal/ads/caw;->i:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/caw;->a(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 87
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Not a Google URL: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 88
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/ro;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/caw;->d:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v1, Lcom/google/android/gms/internal/ads/cax;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/cax;-><init>(Lcom/google/android/gms/internal/ads/caw;Landroid/net/Uri;Lcom/google/android/gms/dynamic/b;)V

    .line 95
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/caw;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 97
    new-instance p2, Lcom/google/android/gms/internal/ads/cba;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/cba;-><init>(Lcom/google/android/gms/internal/ads/caw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/caw;->d:Lcom/google/android/gms/internal/ads/dbs;

    .line 5019
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p2, "Asset view map is empty."

    .line 99
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 100
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/cbh;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/cbh;-><init>(Lcom/google/android/gms/internal/ads/caw;Lcom/google/android/gms/internal/ads/ro;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/caw;->l:Lcom/google/android/gms/internal/ads/afq;

    .line 101
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/afq;->b()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 102
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 92
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
