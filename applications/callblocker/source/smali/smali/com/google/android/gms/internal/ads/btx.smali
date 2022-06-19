.class public final Lcom/google/android/gms/internal/ads/btx;
.super Lcom/google/android/gms/internal/ads/tv;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/google/android/gms/internal/ads/afh;

.field private f:Landroid/content/Context;

.field private g:Lcom/google/android/gms/internal/ads/ctl;

.field private h:Lcom/google/android/gms/internal/ads/yd;

.field private i:Lcom/google/android/gms/internal/ads/chr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/chr",
            "<",
            "Lcom/google/android/gms/internal/ads/bcy;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/gms/internal/ads/crs;

.field private final k:Ljava/util/concurrent/ScheduledExecutorService;

.field private l:Lcom/google/android/gms/internal/ads/ou;

.field private m:Landroid/graphics/Point;

.field private n:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "/aclk"

    aput-object v2, v1, v3

    const-string/jumbo v2, "/pcs/click"

    aput-object v2, v1, v4

    .line 232
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/btx;->a:Ljava/util/List;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, ".doubleclick.net"

    aput-object v2, v1, v3

    const-string/jumbo v2, ".googleadservices.com"

    aput-object v2, v1, v4

    .line 234
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/btx;->b:Ljava/util/List;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "/pagead/adview"

    aput-object v2, v1, v3

    const-string/jumbo v2, "/pcs/view"

    aput-object v2, v1, v4

    const-string/jumbo v2, "/pagead/conversion"

    aput-object v2, v1, v5

    .line 236
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/btx;->c:Ljava/util/List;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, ".doubleclick.net"

    aput-object v2, v1, v3

    const-string/jumbo v2, ".googleadservices.com"

    aput-object v2, v1, v4

    const-string/jumbo v2, ".googlesyndication.com"

    aput-object v2, v1, v5

    .line 238
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/btx;->d:Ljava/util/List;

    .line 239
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/afh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/chr;Lcom/google/android/gms/internal/ads/crs;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/afh;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/ctl;",
            "Lcom/google/android/gms/internal/ads/yd;",
            "Lcom/google/android/gms/internal/ads/chr",
            "<",
            "Lcom/google/android/gms/internal/ads/bcy;",
            ">;",
            "Lcom/google/android/gms/internal/ads/crs;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/tv;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->m:Landroid/graphics/Point;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->n:Landroid/graphics/Point;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btx;->e:Lcom/google/android/gms/internal/ads/afh;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btx;->f:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/btx;->g:Lcom/google/android/gms/internal/ads/ctl;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/btx;->h:Lcom/google/android/gms/internal/ads/yd;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/btx;->i:Lcom/google/android/gms/internal/ads/chr;

    .line 9
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/btx;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    return-void
.end method

.method static synthetic a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 189
    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const-string/jumbo v0, "nas"

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/btx;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 192
    :cond_0
    return-object p0
.end method

.method private static a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 142
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string/jumbo v0, "&adurl="

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 144
    if-ne v0, v2, :cond_0

    .line 145
    const-string/jumbo v0, "?adurl="

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 146
    :cond_0
    if-eq v0, v2, :cond_1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&"

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/bcy;

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->i:Lcom/google/android/gms/internal/ads/chr;

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/chr;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/bue;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/ads/bue;-><init>(Lcom/google/android/gms/internal/ads/btx;[Lcom/google/android/gms/internal/ads/bcy;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    .line 131
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 132
    new-instance v2, Lcom/google/android/gms/internal/ads/buh;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/buh;-><init>(Lcom/google/android/gms/internal/ads/btx;[Lcom/google/android/gms/internal/ads/bcy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 134
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crb;->c(Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dG:Lcom/google/android/gms/internal/ads/ect;

    .line 136
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/btx;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 138
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/crb;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/buc;->a:Lcom/google/android/gms/internal/ads/coe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crb;->a(Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    sget-object v2, Lcom/google/android/gms/internal/ads/buf;->a:Lcom/google/android/gms/internal/ads/coe;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/crb;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crb;

    move-result-object v0

    .line 141
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/btx;)Lcom/google/android/gms/internal/ads/yd;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->h:Lcom/google/android/gms/internal/ads/yd;

    return-object v0
.end method

.method static final synthetic a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    .line 186
    const-string/jumbo v0, ""

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method static final synthetic a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const-string/jumbo v0, "nas"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 195
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/btx;->b(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    const-string/jumbo v3, "nas"

    invoke-static {v0, v3, p1}, Lcom/google/android/gms/internal/ads/btx;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_2
    return-object v1
.end method

.method private final a()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ou;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ou;->b:Ljava/util/Map;

    .line 160
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 161
    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 117
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 126
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method private final b(Landroid/net/Uri;Lcom/google/android/gms/dynamic/a;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 105
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->g:Lcom/google/android/gms/internal/ads/ctl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->f:Landroid/content/Context;

    .line 107
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x0

    .line 108
    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 112
    :goto_0
    const-string/jumbo v0, "ms"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Failed to append spam signals to click url."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    :cond_0
    return-object p1
.end method

.method private static b(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/google/android/gms/internal/ads/btx;->c:Ljava/util/List;

    sget-object v1, Lcom/google/android/gms/internal/ads/btx;->d:Ljava/util/List;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/btx;->a(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final synthetic a(Landroid/net/Uri;Lcom/google/android/gms/dynamic/a;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/btx;->b(Landroid/net/Uri;Lcom/google/android/gms/dynamic/a;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method final synthetic a(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    .prologue
    .line 200
    .line 201
    const-string/jumbo v0, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    .line 202
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/btx;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bud;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bud;-><init>(Lcom/google/android/gms/internal/ads/btx;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    .line 203
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method final synthetic a(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    .prologue
    .line 206
    .line 207
    const-string/jumbo v0, "google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"

    .line 208
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/btx;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/bua;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/bua;-><init>(Lcom/google/android/gms/internal/ads/btx;Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    .line 209
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 210
    return-object v0
.end method

.method final synthetic a([Lcom/google/android/gms/internal/ads/bcy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/bcy;)Lcom/google/android/gms/internal/ads/crt;
    .locals 6

    .prologue
    .line 165
    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ou;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ou;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/ou;->a:Landroid/view/View;

    .line 169
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ou;->a:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ou;->a:Landroid/view/View;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 172
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/btx;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ou;->a:Landroid/view/View;

    .line 173
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/xf;->b(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 174
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 175
    const-string/jumbo v5, "asset_view_signal"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo v0, "ad_view_signal"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string/jumbo v0, "scroll_view_signal"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string/jumbo v0, "lock_screen_signal"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string/jumbo v0, "google.afma.nativeAds.getPublisherCustomRenderedClickSignals"

    if-ne p2, v0, :cond_0

    .line 180
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->n:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/btx;->m:Landroid/graphics/Point;

    .line 181
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/xf;->a(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "click_signal"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_0
    invoke-virtual {p3, p2, v4}, Lcom/google/android/gms/internal/ads/bcy;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/util/List;Lcom/google/android/gms/dynamic/a;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 211
    .line 212
    const-string/jumbo v0, ""

    .line 213
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->g:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ctl;->a()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 214
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->g:Lcom/google/android/gms/internal/ads/ctl;

    .line 215
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctl;->a()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->f:Landroid/content/Context;

    .line 216
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 217
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Failed to get view signals."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 221
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/btx;->b(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "Not a Google URL: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_1
    const-string/jumbo v4, "ms"

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/ads/btx;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Empty impression URLs result."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_3
    return-object v2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dF:Lcom/google/android/gms/internal/ads/ect;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xf;->a(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->m:Landroid/graphics/Point;

    .line 45
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->m:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->n:Landroid/graphics/Point;

    .line 47
    :cond_1
    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->m:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->m:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->g:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/view/MotionEvent;)V

    .line 50
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ou;->a:Landroid/view/View;

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/tw;Lcom/google/android/gms/internal/ads/ts;)V
    .locals 7

    .prologue
    .line 12
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->f:Landroid/content/Context;

    .line 13
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/btx;->f:Landroid/content/Context;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/tw;->a:Ljava/lang/String;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/tw;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/tw;->c:Lcom/google/android/gms/internal/ads/dyd;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/tw;->d:Lcom/google/android/gms/internal/ads/dya;

    .line 15
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/btx;->e:Lcom/google/android/gms/internal/ads/afh;

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/afh;->o()Lcom/google/android/gms/internal/ads/btu;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/apb$a;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/apb$a;-><init>()V

    .line 17
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/apb$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v3

    new-instance v6, Lcom/google/android/gms/internal/ads/chj;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/chj;-><init>()V

    .line 18
    if-nez v0, :cond_0

    const-string/jumbo v0, "adUnitId"

    :cond_0
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/chj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v6

    .line 19
    if-nez v1, :cond_1

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/dxz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dxz;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dxz;->a()Lcom/google/android/gms/internal/ads/dya;

    move-result-object v0

    .line 22
    :goto_0
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/chj;->a(Lcom/google/android/gms/internal/ads/dya;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v1

    .line 23
    if-nez v2, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/dyd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dyd;-><init>()V

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/chj;->a(Lcom/google/android/gms/internal/ads/dyd;)Lcom/google/android/gms/internal/ads/chj;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/chj;->e()Lcom/google/android/gms/internal/ads/chh;

    move-result-object v0

    .line 25
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/apb$a;->a(Lcom/google/android/gms/internal/ads/chh;)Lcom/google/android/gms/internal/ads/apb$a;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/apb$a;->a()Lcom/google/android/gms/internal/ads/apb;

    move-result-object v0

    .line 27
    invoke-interface {v5, v0}, Lcom/google/android/gms/internal/ads/btu;->a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/btu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/buk$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/buk$a;-><init>()V

    .line 28
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/buk$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/buk$a;

    move-result-object v1

    .line 29
    new-instance v2, Lcom/google/android/gms/internal/ads/buk;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/buk;-><init>(Lcom/google/android/gms/internal/ads/buk$a;Lcom/google/android/gms/internal/ads/bum;)V

    .line 30
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/btu;->a(Lcom/google/android/gms/internal/ads/buk;)Lcom/google/android/gms/internal/ads/btu;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/atf$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/atf$a;-><init>()V

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/atf$a;->a()Lcom/google/android/gms/internal/ads/atf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/btu;->a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/btu;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/btu;->a()Lcom/google/android/gms/internal/ads/btv;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/btv;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/google/android/gms/internal/ads/bug;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/ads/bug;-><init>(Lcom/google/android/gms/internal/ads/btx;Lcom/google/android/gms/internal/ads/ts;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->e:Lcom/google/android/gms/internal/ads/afh;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 36
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 37
    return-void

    :cond_1
    move-object v0, v1

    .line 21
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 23
    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ou;)V
    .locals 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btx;->l:Lcom/google/android/gms/internal/ads/ou;

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->i:Lcom/google/android/gms/internal/ads/chr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/chr;->a(I)V

    .line 56
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/op;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/dynamic/a;",
            "Lcom/google/android/gms/internal/ads/op;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dF:Lcom/google/android/gms/internal/ads/ect;

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    :try_start_0
    const-string/jumbo v0, "The updating URL feature is not enabled."

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/op;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/btw;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/btw;-><init>(Lcom/google/android/gms/internal/ads/btx;Ljava/util/List;Lcom/google/android/gms/dynamic/a;)V

    .line 66
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/btx;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Lcom/google/android/gms/internal/ads/btz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/btz;-><init>(Lcom/google/android/gms/internal/ads/btx;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    .line 69
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 71
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/buj;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/ads/buj;-><init>(Lcom/google/android/gms/internal/ads/btx;Lcom/google/android/gms/internal/ads/op;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->e:Lcom/google/android/gms/internal/ads/afh;

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 73
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 70
    :cond_1
    const-string/jumbo v1, "Asset view map is empty."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final synthetic a([Lcom/google/android/gms/internal/ads/bcy;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btx;->i:Lcom/google/android/gms/internal/ads/chr;

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/chr;->a(Lcom/google/android/gms/internal/ads/crt;)V

    .line 164
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/util/List;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/op;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/gms/dynamic/a;",
            "Lcom/google/android/gms/internal/ads/op;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->dF:Lcom/google/android/gms/internal/ads/ect;

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string/jumbo v0, "The updating URL feature is not enabled."

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/op;->a(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 81
    const-string/jumbo v0, "There should be only 1 click URL."

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/op;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/ads/btx;->a:Ljava/util/List;

    sget-object v2, Lcom/google/android/gms/internal/ads/btx;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/btx;->a(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Not a Google URL: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 88
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/op;->a(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    new-instance v2, Lcom/google/android/gms/internal/ads/bty;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/gms/internal/ads/bty;-><init>(Lcom/google/android/gms/internal/ads/btx;Landroid/net/Uri;Lcom/google/android/gms/dynamic/a;)V

    .line 95
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 96
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/btx;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    new-instance v1, Lcom/google/android/gms/internal/ads/bub;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bub;-><init>(Lcom/google/android/gms/internal/ads/btx;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->j:Lcom/google/android/gms/internal/ads/crs;

    .line 98
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 100
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/bui;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/ads/bui;-><init>(Lcom/google/android/gms/internal/ads/btx;Lcom/google/android/gms/internal/ads/op;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/btx;->e:Lcom/google/android/gms/internal/ads/afh;

    .line 101
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/afh;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 102
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 99
    :cond_3
    const-string/jumbo v1, "Asset view map is empty."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
