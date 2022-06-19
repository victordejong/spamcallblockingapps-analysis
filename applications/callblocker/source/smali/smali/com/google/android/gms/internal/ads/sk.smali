.class public final Lcom/google/android/gms/internal/ads/sk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/st;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/dgr$b$b;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/dgr$b$h$b;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/internal/ads/sv;

.field private h:Z

.field private final i:Lcom/google/android/gms/internal/ads/ss;

.field private final j:Lcom/google/android/gms/internal/ads/sy;

.field private final k:Ljava/lang/Object;

.field private l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/sk;->a:Ljava/util/List;

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/ss;Ljava/lang/String;Lcom/google/android/gms/internal/ads/sv;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->e:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->l:Ljava/util/HashSet;

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/sk;->m:Z

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/sk;->n:Z

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/sk;->o:Z

    .line 9
    const-string/jumbo v0, "SafeBrowsing config is not present."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sk;->f:Landroid/content/Context;

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->c:Ljava/util/LinkedHashMap;

    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/sk;->g:Lcom/google/android/gms/internal/ads/sv;

    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ss;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->l:Ljava/util/HashSet;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->l:Ljava/util/HashSet;

    const-string/jumbo v1, "cookie"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b;->d()Lcom/google/android/gms/internal/ads/dgr$b$b;

    move-result-object v1

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->a:Lcom/google/android/gms/internal/ads/dgr$b$g;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dgr$b$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$g;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 22
    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/ads/dgr$b$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 23
    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/ads/dgr$b$b;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$a;->a()Lcom/google/android/gms/internal/ads/dgr$b$a$a;

    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ss;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ss;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$a$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$a$a;

    .line 27
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dgr$b$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$a;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$i;->a()Lcom/google/android/gms/internal/ads/dgr$b$i$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->f:Landroid/content/Context;

    .line 29
    invoke-static {v2}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/c/b;->a()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$i$a;->a(Z)Lcom/google/android/gms/internal/ads/dgr$b$i$a;

    move-result-object v0

    .line 30
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 31
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$i$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$i$a;

    .line 32
    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/f;->b()Lcom/google/android/gms/common/f;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sk;->f:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/f;->c(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    .line 33
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 34
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dgr$b$i$a;->a(J)Lcom/google/android/gms/internal/ads/dgr$b$i$a;

    .line 35
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$i;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dgr$b$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$i;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 37
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/sy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ss;->h:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/sy;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/gms/internal/ads/sk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->j:Lcom/google/android/gms/internal/ads/sy;

    .line 39
    return-void
.end method

.method static final synthetic d(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method private final e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$h$b;
    .locals 2

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static final synthetic e()V
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "Pinged SB successfully."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/su;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f()Ljava/util/List;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/google/android/gms/internal/ads/sk;->a:Ljava/util/List;

    return-object v0
.end method

.method private final g()Lcom/google/android/gms/internal/ads/crt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 112
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/sk;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/ss;->g:Z

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/sk;->o:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/ss;->f:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/sk;->h:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/ss;->d:Z

    if-eqz v1, :cond_3

    .line 113
    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 114
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 141
    :goto_1
    return-object v0

    .line 112
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    .line 117
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$h;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dgr$b$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$h;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    goto :goto_2

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 119
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->d:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$b;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->e:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$b;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 121
    invoke-static {}, Lcom/google/android/gms/internal/ads/su;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dgr$b$b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 124
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/dgr$b$b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x35

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "Sending SB report\n  url: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n  clickUrl: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n  resources: \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dgr$b$b;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$h;

    .line 126
    const-string/jumbo v4, "    ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dgr$b$h;->b()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dgr$b$h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 131
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/su;->a(Ljava/lang/String;)V

    .line 132
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ss;->b:Ljava/lang/String;

    .line 133
    new-instance v3, Lcom/google/android/gms/internal/ads/wq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/sk;->f:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/wq;-><init>(Landroid/content/Context;)V

    .line 134
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 135
    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/google/android/gms/internal/ads/wq;->a(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/google/android/gms/internal/ads/su;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 137
    sget-object v2, Lcom/google/android/gms/internal/ads/sl;->a:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 138
    :cond_8
    sget-object v2, Lcom/google/android/gms/internal/ads/so;->a:Lcom/google/android/gms/internal/ads/coe;

    .line 139
    sget-object v3, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 140
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/coe;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method final synthetic a(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/crt;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 145
    .line 147
    if-eqz p1, :cond_6

    .line 148
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "matches"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_0

    .line 153
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 155
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/sk;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    move-result-object v6

    .line 156
    if-nez v6, :cond_3

    .line 157
    const-string/jumbo v1, "Cannot find the corresponding resource object for "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/su;->a(Ljava/lang/String;)V

    .line 158
    monitor-exit v4

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 170
    const-string/jumbo v2, "Failed to get SafeBrowsing metadata"

    .line 171
    sget-object v0, Lcom/google/android/gms/internal/ads/at;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Safebrowsing report transmission failed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    :goto_2
    return-object v0

    .line 157
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 159
    :goto_3
    if-ge v0, v5, :cond_4

    .line 160
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "threat_type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/dgr$b$h$b;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 162
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/sk;->h:Z

    if-lez v5, :cond_5

    const/4 v0, 0x1

    :goto_4
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sk;->h:Z

    .line 163
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 162
    goto :goto_4

    .line 164
    :cond_6
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sk;->h:Z

    if-eqz v0, :cond_7

    .line 165
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 166
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$g;->b:Lcom/google/android/gms/internal/ads/dgr$b$g;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dgr$b$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$g;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 167
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 168
    :cond_7
    :try_start_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/sk;->g()Lcom/google/android/gms/internal/ads/crt;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    goto :goto_2

    .line 167
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/ss;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    return-object v0
.end method

.method final synthetic a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Lcom/google/android/gms/internal/ads/dbi;->h()Lcom/google/android/gms/internal/ads/dbw;

    move-result-object v0

    .line 175
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 178
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$f;->a()Lcom/google/android/gms/internal/ads/dgr$b$f$b;

    move-result-object v3

    .line 179
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbw;->a()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dgr$b$f$b;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dgr$b$f$b;

    move-result-object v0

    const-string/jumbo v3, "image/png"

    .line 180
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dgr$b$f$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$f$b;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/dgr$b$f$a;->a:Lcom/google/android/gms/internal/ads/dgr$b$f$a;

    .line 181
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dgr$b$f$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$f$a;)Lcom/google/android/gms/internal/ads/dgr$b$f$b;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$f;

    .line 183
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/dgr$b$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$f;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 184
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ss;->c:Z

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sk;->n:Z

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    const-string/jumbo v0, "Failed to capture the webview bitmap."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/su;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/sk;->n:Z

    .line 56
    new-instance v1, Lcom/google/android/gms/internal/ads/sj;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/sj;-><init>(Lcom/google/android/gms/internal/ads/sk;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ve;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    if-nez p1, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dgr$b$b;->j()Lcom/google/android/gms/internal/ads/dgr$b$b;

    .line 45
    :goto_0
    monitor-exit v1

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->b:Lcom/google/android/gms/internal/ads/dgr$b$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dgr$b$b;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$b;

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    if-ne p3, v1, :cond_0

    .line 60
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sk;->o:Z

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    if-ne p3, v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/dgr$b$h$a;->a(I)Lcom/google/android/gms/internal/ads/dgr$b$h$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dgr$b$h$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$h$a;)Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    .line 64
    :cond_1
    monitor-exit v2

    .line 86
    :goto_0
    return-void

    .line 65
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$h;->c()Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    move-result-object v3

    .line 66
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/dgr$b$h$a;->a(I)Lcom/google/android/gms/internal/ads/dgr$b$h$a;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dgr$b$h$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$h$a;)Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dgr$b$h$b;->a(I)Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    .line 70
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/dgr$b$h$b;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$d;->a()Lcom/google/android/gms/internal/ads/dgr$b$d$b;

    move-result-object v4

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->l:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_7

    if-eqz p2, :cond_7

    .line 73
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    :goto_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    :goto_3
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 77
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/sk;->l:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 78
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgr$b$c;->a()Lcom/google/android/gms/internal/ads/dgr$b$c$a;

    move-result-object v6

    .line 79
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/dgr$b$c$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dgr$b$c$a;

    move-result-object v1

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dgr$b$c$a;->b(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/dgr$b$c$a;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$c;

    .line 82
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/dgr$b$d$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$c;)Lcom/google/android/gms/internal/ads/dgr$b$d$b;

    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 74
    :cond_5
    :try_start_1
    const-string/jumbo v1, ""

    goto :goto_2

    .line 75
    :cond_6
    const-string/jumbo v0, ""

    goto :goto_3

    .line 84
    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dgr$b$d;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dgr$b$h$b;->a(Lcom/google/android/gms/internal/ads/dgr$b$d;)Lcom/google/android/gms/internal/ads/dgr$b$h$b;

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public final a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->j:Lcom/google/android/gms/internal/ads/sy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sy;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/gms/common/util/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->i:Lcom/google/android/gms/internal/ads/ss;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ss;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/sk;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/sk;->m:Z

    .line 95
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 99
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sk;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sk;->g:Lcom/google/android/gms/internal/ads/sv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sk;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/sk;->c:Ljava/util/LinkedHashMap;

    .line 101
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/sv;->a(Landroid/content/Context;Ljava/util/Set;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 102
    new-instance v2, Lcom/google/android/gms/internal/ads/sm;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/sm;-><init>(Lcom/google/android/gms/internal/ads/sk;)V

    .line 103
    sget-object v3, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 104
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 105
    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/google/android/gms/internal/ads/yg;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 106
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v2

    .line 107
    new-instance v3, Lcom/google/android/gms/internal/ads/sn;

    invoke-direct {v3, p0, v2}, Lcom/google/android/gms/internal/ads/sn;-><init>(Lcom/google/android/gms/internal/ads/sk;Lcom/google/android/gms/internal/ads/crt;)V

    .line 108
    sget-object v4, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 109
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 110
    sget-object v0, Lcom/google/android/gms/internal/ads/sk;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
