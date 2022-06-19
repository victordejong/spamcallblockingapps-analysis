.class final Lcom/google/android/exoplayer2/source/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/k$a;
.implements Lcom/google/android/exoplayer2/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lcom/google/android/exoplayer2/upstream/t;

.field c:J

.field d:Lcom/google/android/exoplayer2/upstream/j;

.field e:J

.field final synthetic f:Lcom/google/android/exoplayer2/source/w;

.field private final g:Landroid/net/Uri;

.field private final h:Lcom/google/android/exoplayer2/source/v;

.field private final i:Lcom/google/android/exoplayer2/extractor/j;

.field private final j:Lcom/google/android/exoplayer2/util/f;

.field private final k:Lcom/google/android/exoplayer2/extractor/u;

.field private volatile l:Z

.field private m:Z

.field private n:Lcom/google/android/exoplayer2/extractor/x;

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/w;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/h;Lcom/google/android/exoplayer2/source/v;Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/util/f;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/w$a;->g:Landroid/net/Uri;

    .line 990
    new-instance p1, Lcom/google/android/exoplayer2/upstream/t;

    invoke-direct {p1, p3}, Lcom/google/android/exoplayer2/upstream/t;-><init>(Lcom/google/android/exoplayer2/upstream/h;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    .line 991
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/w$a;->h:Lcom/google/android/exoplayer2/source/v;

    .line 992
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/w$a;->i:Lcom/google/android/exoplayer2/extractor/j;

    .line 993
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/w$a;->j:Lcom/google/android/exoplayer2/util/f;

    .line 994
    new-instance p1, Lcom/google/android/exoplayer2/extractor/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w$a;->k:Lcom/google/android/exoplayer2/extractor/u;

    const/4 p1, 0x1

    .line 995
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/w$a;->m:Z

    const-wide/16 p1, -0x1

    .line 996
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w$a;->e:J

    .line 997
    invoke-static {}, Lcom/google/android/exoplayer2/source/l;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/w$a;->a:J

    const-wide/16 p1, 0x0

    .line 998
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/w$a;->a(J)Lcom/google/android/exoplayer2/upstream/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w$a;->d:Lcom/google/android/exoplayer2/upstream/j;

    return-void
.end method

.method private a(J)Lcom/google/android/exoplayer2/upstream/j;
    .locals 2

    .line 1087
    new-instance v0, Lcom/google/android/exoplayer2/upstream/j$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/j$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/w$a;->g:Landroid/net/Uri;

    .line 2094
    iput-object v1, v0, Lcom/google/android/exoplayer2/upstream/j$a;->a:Landroid/net/Uri;

    .line 2153
    iput-wide p1, v0, Lcom/google/android/exoplayer2/upstream/j$a;->f:J

    .line 1089
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    .line 1090
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/w;->f(Lcom/google/android/exoplayer2/source/w;)Ljava/lang/String;

    move-result-object p1

    .line 2175
    iput-object p1, v0, Lcom/google/android/exoplayer2/upstream/j$a;->h:Ljava/lang/String;

    const/4 p1, 0x6

    .line 2186
    iput p1, v0, Lcom/google/android/exoplayer2/upstream/j$a;->i:I

    .line 1093
    invoke-static {}, Lcom/google/android/exoplayer2/source/w;->l()Ljava/util/Map;

    move-result-object p1

    .line 3142
    iput-object p1, v0, Lcom/google/android/exoplayer2/upstream/j$a;->e:Ljava/util/Map;

    .line 1094
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/j$a;->a()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 1005
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/w$a;->l:Z

    return-void
.end method

.method final a(JJ)V
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$a;->k:Lcom/google/android/exoplayer2/extractor/u;

    iput-wide p1, v0, Lcom/google/android/exoplayer2/extractor/u;->a:J

    .line 1099
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/w$a;->c:J

    const/4 p1, 0x1

    .line 1100
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/w$a;->m:Z

    const/4 p1, 0x0

    .line 1101
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/w$a;->o:Z

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 9

    .line 1073
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/w$a;->o:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/w$a;->c:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/w;->e(Lcom/google/android/exoplayer2/source/w;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/w$a;->c:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 1074
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v6

    .line 1075
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$a;->n:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/extractor/x;

    .line 1076
    invoke-interface {v2, p1, v6}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1077
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    const/4 p1, 0x1

    .line 1079
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/w$a;->o:Z

    return-void
.end method

.method public final b()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_9

    .line 1011
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/w$a;->l:Z

    if-nez v3, :cond_9

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    .line 1013
    :try_start_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->k:Lcom/google/android/exoplayer2/extractor/u;

    iget-wide v13, v6, Lcom/google/android/exoplayer2/extractor/u;->a:J

    .line 1014
    invoke-direct {v1, v13, v14}, Lcom/google/android/exoplayer2/source/w$a;->a(J)Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->d:Lcom/google/android/exoplayer2/upstream/j;

    .line 1015
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/upstream/t;->a(Lcom/google/android/exoplayer2/upstream/j;)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/w$a;->e:J

    cmp-long v8, v6, v3

    if-eqz v8, :cond_0

    add-long/2addr v6, v13

    .line 1017
    iput-wide v6, v1, Lcom/google/android/exoplayer2/source/w$a;->e:J

    .line 1019
    :cond_0
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/upstream/t;->b()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/source/w;->a(Lcom/google/android/exoplayer2/source/w;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    .line 1020
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    .line 1021
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/w;->a(Lcom/google/android/exoplayer2/source/w;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/w;->a(Lcom/google/android/exoplayer2/source/w;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v7

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 1022
    new-instance v6, Lcom/google/android/exoplayer2/source/k;

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/w;->a(Lcom/google/android/exoplayer2/source/w;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v8

    iget v8, v8, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v6, v7, v8, v1}, Lcom/google/android/exoplayer2/source/k;-><init>(Lcom/google/android/exoplayer2/upstream/h;ILcom/google/android/exoplayer2/source/k$a;)V

    .line 1023
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    .line 1698
    new-instance v8, Lcom/google/android/exoplayer2/source/w$d;

    invoke-direct {v8, v0, v5}, Lcom/google/android/exoplayer2/source/w$d;-><init>(IZ)V

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/w;->a(Lcom/google/android/exoplayer2/source/w$d;)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v7

    .line 1023
    iput-object v7, v1, Lcom/google/android/exoplayer2/source/w$a;->n:Lcom/google/android/exoplayer2/extractor/x;

    .line 1024
    invoke-static {}, Lcom/google/android/exoplayer2/source/w;->k()Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    :cond_1
    move-object v8, v6

    .line 1026
    iget-object v7, v1, Lcom/google/android/exoplayer2/source/w$a;->h:Lcom/google/android/exoplayer2/source/v;

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/w$a;->g:Landroid/net/Uri;

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    .line 1029
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/upstream/t;->b()Ljava/util/Map;

    move-result-object v10

    iget-wide v11, v1, Lcom/google/android/exoplayer2/source/w$a;->e:J

    iget-object v15, v1, Lcom/google/android/exoplayer2/source/w$a;->i:Lcom/google/android/exoplayer2/extractor/j;

    move-wide/from16 v16, v11

    move-wide v11, v13

    move-wide v3, v13

    move-wide/from16 v13, v16

    .line 1026
    invoke-interface/range {v7 .. v15}, Lcom/google/android/exoplayer2/source/v;->a(Lcom/google/android/exoplayer2/upstream/e;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/exoplayer2/extractor/j;)V

    .line 1034
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/w;->a(Lcom/google/android/exoplayer2/source/w;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1035
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->h:Lcom/google/android/exoplayer2/source/v;

    invoke-interface {v6}, Lcom/google/android/exoplayer2/source/v;->b()V

    .line 1038
    :cond_2
    iget-boolean v6, v1, Lcom/google/android/exoplayer2/source/w$a;->m:Z

    if-eqz v6, :cond_3

    .line 1039
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->h:Lcom/google/android/exoplayer2/source/v;

    iget-wide v7, v1, Lcom/google/android/exoplayer2/source/w$a;->c:J

    invoke-interface {v6, v3, v4, v7, v8}, Lcom/google/android/exoplayer2/source/v;->a(JJ)V

    .line 1040
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/source/w$a;->m:Z

    :cond_3
    :goto_1
    move-wide v13, v3

    :cond_4
    if-nez v2, :cond_5

    .line 1042
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/w$a;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_5

    .line 1044
    :try_start_1
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/w$a;->j:Lcom/google/android/exoplayer2/util/f;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/f;->c()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1048
    :try_start_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/w$a;->h:Lcom/google/android/exoplayer2/source/v;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/w$a;->k:Lcom/google/android/exoplayer2/extractor/u;

    invoke-interface {v3, v4}, Lcom/google/android/exoplayer2/source/v;->a(Lcom/google/android/exoplayer2/extractor/u;)I

    move-result v2

    .line 1049
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/w$a;->h:Lcom/google/android/exoplayer2/source/v;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/v;->c()J

    move-result-wide v3

    .line 1050
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/w;->b(Lcom/google/android/exoplayer2/source/w;)J

    move-result-wide v6

    add-long/2addr v6, v13

    cmp-long v8, v3, v6

    if-lez v8, :cond_4

    .line 1052
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->j:Lcom/google/android/exoplayer2/util/f;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/f;->b()Z

    .line 1053
    iget-object v6, v1, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/w;->d(Lcom/google/android/exoplayer2/source/w;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/w$a;->f:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/w;->c(Lcom/google/android/exoplayer2/source/w;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1046
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-ne v2, v5, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    .line 1059
    :cond_6
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/w$a;->h:Lcom/google/android/exoplayer2/source/v;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/v;->c()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_7

    .line 1060
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/w$a;->k:Lcom/google/android/exoplayer2/extractor/u;

    iget-object v4, v1, Lcom/google/android/exoplayer2/source/w$a;->h:Lcom/google/android/exoplayer2/source/v;

    invoke-interface {v4}, Lcom/google/android/exoplayer2/source/v;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/exoplayer2/extractor/u;->a:J

    .line 1062
    :cond_7
    :goto_2
    iget-object v3, v1, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eq v2, v5, :cond_8

    .line 1059
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/w$a;->h:Lcom/google/android/exoplayer2/source/v;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/source/v;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    .line 1060
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/w$a;->k:Lcom/google/android/exoplayer2/extractor/u;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/w$a;->h:Lcom/google/android/exoplayer2/source/v;

    invoke-interface {v3}, Lcom/google/android/exoplayer2/source/v;->c()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    .line 1062
    :cond_8
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/w$a;->b:Lcom/google/android/exoplayer2/upstream/t;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/af;->a(Lcom/google/android/exoplayer2/upstream/h;)V

    .line 1063
    throw v0

    :cond_9
    return-void
.end method
