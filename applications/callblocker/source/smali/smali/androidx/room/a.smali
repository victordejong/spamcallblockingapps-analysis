.class public Landroidx/room/a;
.super Ljava/lang/Object;
.source "DatabaseConfiguration.java"


# instance fields
.field public final a:Landroidx/i/a/c$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Landroidx/room/i$d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/room/i$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Landroidx/room/i$c;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/lang/String;

.field public final n:Ljava/io/File;

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/i/a/c$c;Landroidx/room/i$d;Ljava/util/List;ZLandroidx/room/i$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/i/a/c$c;",
            "Landroidx/room/i$d;",
            "Ljava/util/List",
            "<",
            "Landroidx/room/i$b;",
            ">;Z",
            "Landroidx/room/i$c;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p3, p0, Landroidx/room/a;->a:Landroidx/i/a/c$c;

    .line 242
    iput-object p1, p0, Landroidx/room/a;->b:Landroid/content/Context;

    .line 243
    iput-object p2, p0, Landroidx/room/a;->c:Ljava/lang/String;

    .line 244
    iput-object p4, p0, Landroidx/room/a;->d:Landroidx/room/i$d;

    .line 245
    iput-object p5, p0, Landroidx/room/a;->e:Ljava/util/List;

    .line 246
    iput-boolean p6, p0, Landroidx/room/a;->f:Z

    .line 247
    iput-object p7, p0, Landroidx/room/a;->g:Landroidx/room/i$c;

    .line 248
    iput-object p8, p0, Landroidx/room/a;->h:Ljava/util/concurrent/Executor;

    .line 249
    iput-object p9, p0, Landroidx/room/a;->i:Ljava/util/concurrent/Executor;

    .line 250
    iput-boolean p10, p0, Landroidx/room/a;->j:Z

    .line 251
    iput-boolean p11, p0, Landroidx/room/a;->k:Z

    .line 252
    iput-boolean p12, p0, Landroidx/room/a;->l:Z

    .line 253
    iput-object p13, p0, Landroidx/room/a;->o:Ljava/util/Set;

    .line 254
    iput-object p14, p0, Landroidx/room/a;->m:Ljava/lang/String;

    .line 255
    iput-object p15, p0, Landroidx/room/a;->n:Ljava/io/File;

    .line 256
    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 282
    if-le p1, p2, :cond_0

    move v2, v0

    .line 283
    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroidx/room/a;->l:Z

    if-eqz v2, :cond_1

    .line 290
    :goto_1
    return v1

    :cond_0
    move v2, v1

    .line 282
    goto :goto_0

    .line 290
    :cond_1
    iget-boolean v2, p0, Landroidx/room/a;->k:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/room/a;->o:Ljava/util/Set;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/room/a;->o:Ljava/util/Set;

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    move v1, v0

    .line 290
    goto :goto_1

    :cond_3
    move v0, v1

    .line 292
    goto :goto_2
.end method
