.class final Landroidx/media2/exoplayer/external/source/af$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/p$a;
.implements Landroidx/media2/exoplayer/external/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/upstream/v;

.field b:J

.field c:Landroidx/media2/exoplayer/external/upstream/h;

.field d:J

.field final synthetic e:Landroidx/media2/exoplayer/external/source/af;

.field private final f:Landroid/net/Uri;

.field private final g:Landroidx/media2/exoplayer/external/source/af$b;

.field private final h:Landroidx/media2/exoplayer/external/extractor/i;

.field private final i:Landroidx/media2/exoplayer/external/util/e;

.field private final j:Landroidx/media2/exoplayer/external/extractor/n;

.field private volatile k:Z

.field private l:Z

.field private m:Landroidx/media2/exoplayer/external/extractor/q;

.field private n:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/af;Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/f;Landroidx/media2/exoplayer/external/source/af$b;Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/util/e;)V
    .locals 0

    .line 941
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/af$a;->f:Landroid/net/Uri;

    .line 943
    new-instance p1, Landroidx/media2/exoplayer/external/upstream/v;

    invoke-direct {p1, p3}, Landroidx/media2/exoplayer/external/upstream/v;-><init>(Landroidx/media2/exoplayer/external/upstream/f;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    .line 944
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/af$a;->g:Landroidx/media2/exoplayer/external/source/af$b;

    .line 945
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/af$a;->h:Landroidx/media2/exoplayer/external/extractor/i;

    .line 946
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/af$a;->i:Landroidx/media2/exoplayer/external/util/e;

    .line 947
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/n;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/n;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af$a;->j:Landroidx/media2/exoplayer/external/extractor/n;

    const/4 p1, 0x1

    .line 948
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/af$a;->l:Z

    const-wide/16 p1, -0x1

    .line 949
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/source/af$a;->d:J

    const-wide/16 p1, 0x0

    .line 950
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/af$a;->a(J)Landroidx/media2/exoplayer/external/upstream/h;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af$a;->c:Landroidx/media2/exoplayer/external/upstream/h;

    return-void
.end method

.method private a(J)Landroidx/media2/exoplayer/external/upstream/h;
    .locals 9

    .line 1027
    new-instance v8, Landroidx/media2/exoplayer/external/upstream/h;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/af$a;->f:Landroid/net/Uri;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    .line 1031
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/af;->f(Landroidx/media2/exoplayer/external/source/af;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v4, -0x1

    const/16 v7, 0x16

    move-object v0, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/upstream/h;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-object v8
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 957
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af$a;->k:Z

    return-void
.end method

.method final a(JJ)V
    .locals 1

    .line 1038
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af$a;->j:Landroidx/media2/exoplayer/external/extractor/n;

    iput-wide p1, v0, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    .line 1039
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/af$a;->b:J

    const/4 p1, 0x1

    .line 1040
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/af$a;->l:Z

    const/4 p1, 0x0

    .line 1041
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/af$a;->n:Z

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 9

    .line 1013
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af$a;->n:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/af$a;->b:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/af;->e(Landroidx/media2/exoplayer/external/source/af;)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/af$a;->b:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 1014
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v6

    .line 1015
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af$a;->m:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/q;

    .line 1016
    invoke-interface {v2, p1, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1017
    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    const/4 p1, 0x1

    .line 1019
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/af$a;->n:Z

    return-void
.end method

.method public final b()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 963
    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/af$a;->k:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 966
    :try_start_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->j:Landroidx/media2/exoplayer/external/extractor/n;

    iget-wide v11, v4, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    .line 967
    invoke-direct {p0, v11, v12}, Landroidx/media2/exoplayer/external/source/af$a;->a(J)Landroidx/media2/exoplayer/external/upstream/h;

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->c:Landroidx/media2/exoplayer/external/upstream/h;

    .line 968
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    invoke-virtual {v5, v4}, Landroidx/media2/exoplayer/external/upstream/v;->a(Landroidx/media2/exoplayer/external/upstream/h;)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->d:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    add-long/2addr v4, v11

    .line 970
    iput-wide v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->d:J

    .line 972
    :cond_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/upstream/v;->a()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 973
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/upstream/v;->b()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/source/af;->a(Landroidx/media2/exoplayer/external/source/af;Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    .line 974
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    .line 975
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/af;->a(Landroidx/media2/exoplayer/external/source/af;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/af;->a(Landroidx/media2/exoplayer/external/source/af;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    iget v6, v6, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 976
    new-instance v5, Landroidx/media2/exoplayer/external/source/p;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/source/af;->a(Landroidx/media2/exoplayer/external/source/af;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v5, v6, v7, p0}, Landroidx/media2/exoplayer/external/source/p;-><init>(Landroidx/media2/exoplayer/external/upstream/f;ILandroidx/media2/exoplayer/external/source/p$a;)V

    .line 977
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    .line 1665
    new-instance v7, Landroidx/media2/exoplayer/external/source/af$f;

    invoke-direct {v7, v0, v3}, Landroidx/media2/exoplayer/external/source/af$f;-><init>(IZ)V

    invoke-virtual {v6, v7}, Landroidx/media2/exoplayer/external/source/af;->a(Landroidx/media2/exoplayer/external/source/af$f;)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v6

    .line 977
    iput-object v6, p0, Landroidx/media2/exoplayer/external/source/af$a;->m:Landroidx/media2/exoplayer/external/extractor/q;

    .line 978
    invoke-static {}, Landroidx/media2/exoplayer/external/source/af;->j()Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    invoke-interface {v6, v7}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    :cond_1
    move-object v6, v5

    .line 980
    new-instance v13, Landroidx/media2/exoplayer/external/extractor/d;

    iget-wide v9, p0, Landroidx/media2/exoplayer/external/source/af$a;->d:J

    move-object v5, v13

    move-wide v7, v11

    invoke-direct/range {v5 .. v10}, Landroidx/media2/exoplayer/external/extractor/d;-><init>(Landroidx/media2/exoplayer/external/upstream/f;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 981
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/af$a;->g:Landroidx/media2/exoplayer/external/source/af$b;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/af$a;->h:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-virtual {v2, v13, v5, v4}, Landroidx/media2/exoplayer/external/source/af$b;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/i;Landroid/net/Uri;)Landroidx/media2/exoplayer/external/extractor/g;

    move-result-object v2

    .line 982
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->l:Z

    if-eqz v4, :cond_2

    .line 983
    iget-wide v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->b:J

    invoke-interface {v2, v11, v12, v4, v5}, Landroidx/media2/exoplayer/external/extractor/g;->a(JJ)V

    .line 984
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/af$a;->l:Z

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 986
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->k:Z

    if-nez v4, :cond_3

    .line 987
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->i:Landroidx/media2/exoplayer/external/util/e;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/e;->c()V

    .line 988
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->j:Landroidx/media2/exoplayer/external/extractor/n;

    invoke-interface {v2, v13, v4}, Landroidx/media2/exoplayer/external/extractor/g;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I

    move-result v1

    .line 989
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/af;->b(Landroidx/media2/exoplayer/external/source/af;)J

    move-result-wide v6

    add-long/2addr v6, v11

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 990
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v11

    .line 991
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->i:Landroidx/media2/exoplayer/external/util/e;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/e;->b()Z

    .line 992
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/source/af;->d(Landroidx/media2/exoplayer/external/source/af;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/af$a;->e:Landroidx/media2/exoplayer/external/source/af;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/source/af;->c(Landroidx/media2/exoplayer/external/source/af;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    .line 999
    :cond_4
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/af$a;->j:Landroidx/media2/exoplayer/external/extractor/n;

    invoke-interface {v13}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    .line 1001
    :goto_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v13

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eq v1, v3, :cond_5

    if-eqz v2, :cond_5

    .line 999
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/af$a;->j:Landroidx/media2/exoplayer/external/extractor/n;

    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v2

    iput-wide v2, v1, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    .line 1001
    :cond_5
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/af$a;->a:Landroidx/media2/exoplayer/external/upstream/v;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroidx/media2/exoplayer/external/upstream/f;)V

    throw v0

    :cond_6
    return-void
.end method
