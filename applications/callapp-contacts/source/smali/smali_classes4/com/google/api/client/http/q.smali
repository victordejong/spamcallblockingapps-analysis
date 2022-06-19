.class public final Lcom/google/api/client/http/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field private A:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private B:Z

.field private C:Lcom/google/api/client/a/ac;

.field private final D:Lio/opencensus/trace/w;

.field public c:Lcom/google/api/client/http/m;

.field public d:Lcom/google/api/client/http/n;

.field public e:Lcom/google/api/client/http/n;

.field f:I

.field g:Z

.field h:Lcom/google/api/client/http/j;

.field i:Ljava/lang/String;

.field j:Lcom/google/api/client/http/i;

.field public k:I

.field public l:I

.field public m:Lcom/google/api/client/http/x;

.field public n:Lcom/google/api/client/a/x;

.field public o:Z

.field p:Z

.field private q:I

.field private r:Z

.field private final s:Lcom/google/api/client/http/w;

.field private t:I

.field private u:Lcom/google/api/client/http/o;

.field private v:Lcom/google/api/client/http/u;

.field private w:Lcom/google/api/client/http/k;

.field private x:Lcom/google/api/client/http/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/google/api/client/http/q;->p()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/q;->a:Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google-HTTP-Java-Client/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (gzip)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/q;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/api/client/http/w;Ljava/lang/String;)V
    .locals 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/google/api/client/http/n;

    invoke-direct {v0}, Lcom/google/api/client/http/n;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    .line 102
    new-instance v0, Lcom/google/api/client/http/n;

    invoke-direct {v0}, Lcom/google/api/client/http/n;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/q;->e:Lcom/google/api/client/http/n;

    const/16 v0, 0xa

    .line 110
    iput v0, p0, Lcom/google/api/client/http/q;->q:I

    const/16 v0, 0x4000

    .line 124
    iput v0, p0, Lcom/google/api/client/http/q;->f:I

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/google/api/client/http/q;->g:Z

    .line 130
    iput-boolean v0, p0, Lcom/google/api/client/http/q;->r:Z

    const/16 v1, 0x4e20

    .line 145
    iput v1, p0, Lcom/google/api/client/http/q;->k:I

    .line 151
    iput v1, p0, Lcom/google/api/client/http/q;->l:I

    const/4 v1, 0x0

    .line 154
    iput v1, p0, Lcom/google/api/client/http/q;->t:I

    .line 175
    iput-boolean v0, p0, Lcom/google/api/client/http/q;->y:Z

    .line 178
    iput-boolean v1, p0, Lcom/google/api/client/http/q;->z:Z

    .line 184
    iput-boolean v0, p0, Lcom/google/api/client/http/q;->o:Z

    .line 190
    iput-boolean v1, p0, Lcom/google/api/client/http/q;->A:Z

    .line 200
    sget-object v0, Lcom/google/api/client/a/ac;->a:Lcom/google/api/client/a/ac;

    iput-object v0, p0, Lcom/google/api/client/http/q;->C:Lcom/google/api/client/a/ac;

    .line 203
    invoke-static {}, Lcom/google/api/client/http/ac;->a()Lio/opencensus/trace/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/q;->D:Lio/opencensus/trace/w;

    .line 211
    iput-boolean v1, p0, Lcom/google/api/client/http/q;->p:Z

    .line 218
    iput-object p1, p0, Lcom/google/api/client/http/q;->s:Lcom/google/api/client/http/w;

    .line 219
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/q;->a(Ljava/lang/String;)Lcom/google/api/client/http/q;

    return-void
.end method

.method private static a(Lio/opencensus/trace/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 12041
    invoke-static {p2}, Lio/opencensus/trace/a$b;->a(Ljava/lang/String;)Lio/opencensus/trace/a;

    move-result-object p2

    .line 1221
    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/o;->a(Ljava/lang/String;Lio/opencensus/trace/a;)V

    :cond_0
    return-void
.end method

.method private static p()Ljava/lang/String;
    .locals 4

    const-string v0, "unknown-version"

    .line 1229
    :try_start_0
    const-class v1, Lcom/google/api/client/http/q;

    const-string v2, "/com/google/api/client/http/google-http-client.properties"

    .line 1230
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 1233
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1234
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v3, "google-http-client.version"

    .line 1235
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 1229
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_0

    .line 1237
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v3

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/api/client/a/x;)Lcom/google/api/client/http/q;
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/google/api/client/http/q;->n:Lcom/google/api/client/a/x;

    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;
    .locals 0

    .line 2125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 266
    check-cast p1, Lcom/google/api/client/http/i;

    iput-object p1, p0, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/i;

    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/google/api/client/http/q;->h:Lcom/google/api/client/http/j;

    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/q;
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/google/api/client/http/q;->w:Lcom/google/api/client/http/k;

    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/m;)Lcom/google/api/client/http/q;
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/google/api/client/http/q;->c:Lcom/google/api/client/http/m;

    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/o;)Lcom/google/api/client/http/q;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/google/api/client/http/q;->u:Lcom/google/api/client/http/o;

    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/u;)Lcom/google/api/client/http/q;
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/google/api/client/http/q;->v:Lcom/google/api/client/http/u;

    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/x;)Lcom/google/api/client/http/q;
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/x;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/api/client/http/q;
    .locals 1

    if-eqz p1, :cond_1

    .line 246
    invoke-static {p1}, Lcom/google/api/client/http/p;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2035
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/m;->a(Z)V

    .line 247
    iput-object p1, p0, Lcom/google/api/client/http/q;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Lcom/google/api/client/http/q;
    .locals 0

    .line 734
    iput-boolean p1, p0, Lcom/google/api/client/http/q;->o:Z

    return-object p0
.end method

.method public final a()Lcom/google/api/client/http/w;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/google/api/client/http/q;->s:Lcom/google/api/client/http/w;

    return-object v0
.end method

.method public final a(ILcom/google/api/client/http/n;)Z
    .locals 2

    .line 1176
    invoke-virtual {p2}, Lcom/google/api/client/http/n;->j()Ljava/lang/String;

    move-result-object p2

    .line 10685
    iget-boolean v0, p0, Lcom/google/api/client/http/q;->y:Z

    if-eqz v0, :cond_1

    .line 1178
    invoke-static {p1}, Lcom/google/api/client/http/v;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1181
    new-instance v0, Lcom/google/api/client/http/i;

    iget-object v1, p0, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/i;

    invoke-virtual {v1, p2}, Lcom/google/api/client/http/i;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    iget-boolean v1, p0, Lcom/google/api/client/http/q;->z:Z

    invoke-direct {v0, p2, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/net/URL;Z)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/q;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;

    const/16 p2, 0x12f

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    const-string p1, "GET"

    .line 1184
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/q;->a(Ljava/lang/String;)Lcom/google/api/client/http/q;

    .line 11285
    iput-object v0, p0, Lcom/google/api/client/http/q;->h:Lcom/google/api/client/http/j;

    .line 1189
    :cond_0
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/n;->a(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 1190
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1}, Lcom/google/api/client/http/n;->f()Lcom/google/api/client/http/n;

    .line 1191
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1}, Lcom/google/api/client/http/n;->g()Lcom/google/api/client/http/n;

    .line 1192
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1}, Lcom/google/api/client/http/n;->e()Lcom/google/api/client/http/n;

    .line 1193
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1}, Lcom/google/api/client/http/n;->h()Lcom/google/api/client/http/n;

    .line 1194
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1}, Lcom/google/api/client/http/n;->i()Lcom/google/api/client/http/n;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/api/client/http/q;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/google/api/client/http/i;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/i;

    return-object v0
.end method

.method public final d()Lcom/google/api/client/http/j;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/api/client/http/q;->h:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final e()Lcom/google/api/client/http/c;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/api/client/http/q;->x:Lcom/google/api/client/http/c;

    return-object v0
.end method

.method public final f()Lcom/google/api/client/http/q;
    .locals 1

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/google/api/client/http/q;->g:Z

    return-object p0
.end method

.method public final g()Lcom/google/api/client/http/n;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    return-object v0
.end method

.method public final h()Lcom/google/api/client/http/m;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/google/api/client/http/q;->c:Lcom/google/api/client/http/m;

    return-object v0
.end method

.method public final i()Lcom/google/api/client/http/x;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/x;

    return-object v0
.end method

.method public final j()Lcom/google/api/client/http/o;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/api/client/http/q;->u:Lcom/google/api/client/http/o;

    return-object v0
.end method

.method public final k()Lcom/google/api/client/http/u;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/google/api/client/http/q;->v:Lcom/google/api/client/http/u;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/google/api/client/http/q;->q:I

    return v0
.end method

.method public final m()Lcom/google/api/client/a/x;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/google/api/client/http/q;->n:Lcom/google/api/client/a/x;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcom/google/api/client/http/q;->o:Z

    return v0
.end method

.method public final o()Lcom/google/api/client/http/t;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 851
    iget v0, v1, Lcom/google/api/client/http/q;->q:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3035
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->a(Z)V

    .line 852
    iget v0, v1, Lcom/google/api/client/http/q;->q:I

    .line 860
    iget-object v4, v1, Lcom/google/api/client/http/q;->i:Ljava/lang/String;

    .line 3125
    invoke-static {v4}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    iget-object v4, v1, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/i;

    .line 4125
    invoke-static {v4}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iget-object v4, v1, Lcom/google/api/client/http/q;->D:Lio/opencensus/trace/w;

    sget-object v5, Lcom/google/api/client/http/ac;->a:Ljava/lang/String;

    .line 5037
    invoke-static {}, Lio/a/a;->a()Lio/a/a;

    move-result-object v6

    invoke-static {v6}, Lio/opencensus/trace/b/a;->a(Lio/a/a;)Lio/opencensus/trace/o;

    .line 4308
    invoke-virtual {v4, v5}, Lio/opencensus/trace/w;->a(Ljava/lang/String;)Lio/opencensus/trace/p;

    move-result-object v4

    .line 866
    invoke-static {}, Lcom/google/api/client/http/ac;->b()Z

    invoke-virtual {v4}, Lio/opencensus/trace/p;->a()Lio/opencensus/trace/p;

    move-result-object v4

    .line 867
    invoke-virtual {v4}, Lio/opencensus/trace/p;->b()Lio/opencensus/trace/o;

    move-result-object v4

    move v6, v0

    const/4 v0, 0x0

    .line 869
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "retry #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/google/api/client/http/q;->q:I

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "description"

    .line 5140
    invoke-static {v7, v8}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5141
    sget-object v8, Lio/opencensus/trace/o;->b:Ljava/util/Map;

    invoke-virtual {v4, v7, v8}, Lio/opencensus/trace/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v0, :cond_1

    .line 872
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->i()V

    .line 879
    :cond_1
    iget-object v0, v1, Lcom/google/api/client/http/q;->c:Lcom/google/api/client/http/m;

    if-eqz v0, :cond_2

    .line 880
    invoke-interface {v0, v1}, Lcom/google/api/client/http/m;->intercept(Lcom/google/api/client/http/q;)V

    .line 883
    :cond_2
    iget-object v0, v1, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/i;

    invoke-virtual {v0}, Lcom/google/api/client/http/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 884
    iget-object v7, v1, Lcom/google/api/client/http/q;->i:Ljava/lang/String;

    const-string v8, "http.method"

    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v7, v1, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/i;

    .line 5276
    iget-object v7, v7, Lcom/google/api/client/http/i;->a:Ljava/lang/String;

    const-string v8, "http.host"

    .line 885
    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v7, v1, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/i;

    .line 5511
    iget-object v8, v7, Lcom/google/api/client/http/i;->b:Ljava/util/List;

    if-nez v8, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    .line 5515
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 5516
    invoke-virtual {v7, v8}, Lcom/google/api/client/http/i;->a(Ljava/lang/StringBuilder;)V

    .line 5517
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    const-string v8, "http.path"

    .line 886
    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/o;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "http.url"

    .line 887
    invoke-static {v4, v7, v0}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v7, v1, Lcom/google/api/client/http/q;->s:Lcom/google/api/client/http/w;

    iget-object v8, v1, Lcom/google/api/client/http/q;->i:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/google/api/client/http/w;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/z;

    move-result-object v7

    .line 890
    sget-object v8, Lcom/google/api/client/http/w;->LOGGER:Ljava/util/logging/Logger;

    .line 891
    iget-boolean v9, v1, Lcom/google/api/client/http/q;->g:Z

    if-eqz v9, :cond_4

    sget-object v9, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_5

    .line 896
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-------------- REQUEST  --------------"

    .line 897
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/google/api/client/a/ae;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    iget-object v11, v1, Lcom/google/api/client/http/q;->i:Ljava/lang/String;

    .line 899
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    .line 900
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/google/api/client/a/ae;->a:Ljava/lang/String;

    .line 902
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-boolean v11, v1, Lcom/google/api/client/http/q;->r:Z

    if-eqz v11, :cond_6

    .line 906
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "curl -v --compressed"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 907
    iget-object v12, v1, Lcom/google/api/client/http/q;->i:Ljava/lang/String;

    const-string v13, "GET"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, " -X "

    .line 908
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/google/api/client/http/q;->i:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :cond_6
    const/4 v11, 0x0

    .line 913
    :cond_7
    :goto_4
    iget-object v12, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    .line 5712
    iget-object v12, v12, Lcom/google/api/client/http/n;->userAgent:Ljava/util/List;

    invoke-static {v12}, Lcom/google/api/client/http/n;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 914
    iget-boolean v13, v1, Lcom/google/api/client/http/q;->B:Z

    if-nez v13, :cond_9

    const-string v13, "http.user_agent"

    if-nez v12, :cond_8

    .line 916
    iget-object v14, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    sget-object v15, Lcom/google/api/client/http/q;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/google/api/client/http/n;->f(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 917
    invoke-static {v4, v13, v15}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/o;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 919
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/google/api/client/http/q;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 920
    iget-object v15, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {v15, v14}, Lcom/google/api/client/http/n;->f(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 921
    invoke-static {v4, v13, v14}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :cond_9
    :goto_5
    iget-object v13, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-static {v4, v13}, Lcom/google/api/client/http/ac;->a(Lio/opencensus/trace/o;Lcom/google/api/client/http/n;)V

    .line 927
    iget-object v13, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-static {v13, v10, v11, v8, v7}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/n;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/z;)V

    .line 928
    iget-boolean v13, v1, Lcom/google/api/client/http/q;->B:Z

    if-nez v13, :cond_a

    .line 930
    iget-object v13, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {v13, v12}, Lcom/google/api/client/http/n;->f(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 934
    :cond_a
    iget-object v12, v1, Lcom/google/api/client/http/q;->h:Lcom/google/api/client/http/j;

    if-eqz v12, :cond_c

    .line 935
    invoke-interface {v12}, Lcom/google/api/client/http/j;->retrySupported()Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/4 v13, 0x1

    :goto_7
    const-string v2, "\'"

    if-eqz v12, :cond_15

    .line 939
    iget-object v3, v1, Lcom/google/api/client/http/q;->h:Lcom/google/api/client/http/j;

    invoke-interface {v3}, Lcom/google/api/client/http/j;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_d

    .line 942
    new-instance v14, Lcom/google/api/client/a/v;

    sget-object v15, Lcom/google/api/client/http/w;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v16, v4

    iget v4, v1, Lcom/google/api/client/http/q;->f:I

    invoke-direct {v14, v12, v15, v5, v4}, Lcom/google/api/client/a/v;-><init>(Lcom/google/api/client/a/ad;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v12, v14

    goto :goto_8

    :cond_d
    move-object/from16 v16, v4

    .line 947
    :goto_8
    iget-object v4, v1, Lcom/google/api/client/http/q;->w:Lcom/google/api/client/http/k;

    if-nez v4, :cond_e

    .line 949
    iget-object v4, v1, Lcom/google/api/client/http/q;->h:Lcom/google/api/client/http/j;

    invoke-interface {v4}, Lcom/google/api/client/http/j;->getLength()J

    move-result-wide v4

    move-wide v14, v4

    const/4 v4, 0x0

    goto :goto_9

    .line 951
    :cond_e
    invoke-interface {v4}, Lcom/google/api/client/http/k;->a()Ljava/lang/String;

    move-result-object v4

    .line 952
    new-instance v5, Lcom/google/api/client/http/l;

    iget-object v14, v1, Lcom/google/api/client/http/q;->w:Lcom/google/api/client/http/k;

    invoke-direct {v5, v12, v14}, Lcom/google/api/client/http/l;-><init>(Lcom/google/api/client/a/ad;Lcom/google/api/client/http/k;)V

    move-object v12, v5

    const-wide/16 v14, -0x1

    :goto_9
    if-eqz v9, :cond_12

    const-string v5, " -H \'"

    if-eqz v3, :cond_f

    .line 957
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v6

    const-string v6, "Content-Type: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 958
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/api/client/a/ae;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_10

    .line 960
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_f
    move/from16 v17, v6

    :cond_10
    :goto_a
    if-eqz v4, :cond_11

    .line 964
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Content-Encoding: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 965
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/api/client/a/ae;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_11

    .line 967
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-wide/16 v5, 0x0

    cmp-long v1, v14, v5

    if-ltz v1, :cond_13

    .line 971
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Content-Length: "

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/api/client/a/ae;->a:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_12
    move/from16 v17, v6

    :cond_13
    :goto_b
    if-eqz v11, :cond_14

    const-string v1, " -d \'@-\'"

    .line 977
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    :cond_14
    invoke-virtual {v7, v3}, Lcom/google/api/client/http/z;->setContentType(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v7, v4}, Lcom/google/api/client/http/z;->setContentEncoding(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v7, v14, v15}, Lcom/google/api/client/http/z;->setContentLength(J)V

    .line 983
    invoke-virtual {v7, v12}, Lcom/google/api/client/http/z;->setStreamingContent(Lcom/google/api/client/a/ad;)V

    goto :goto_c

    :cond_15
    move-object/from16 v16, v4

    move/from16 v17, v6

    :goto_c
    if-eqz v9, :cond_17

    .line 987
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-eqz v11, :cond_17

    const-string v1, " -- \'"

    .line 989
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\"\'\"\'"

    .line 990
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_16

    const-string v0, " << $$$"

    .line 993
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    :cond_16
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_17
    if-eqz v13, :cond_18

    if-lez v17, :cond_18

    const/4 v2, 0x1

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    :goto_d
    move-object/from16 v1, p0

    .line 1004
    iget v0, v1, Lcom/google/api/client/http/q;->k:I

    iget v3, v1, Lcom/google/api/client/http/q;->l:I

    invoke-virtual {v7, v0, v3}, Lcom/google/api/client/http/z;->setTimeout(II)V

    .line 1005
    iget v0, v1, Lcom/google/api/client/http/q;->t:I

    invoke-virtual {v7, v0}, Lcom/google/api/client/http/z;->setWriteTimeout(I)V

    .line 1009
    invoke-static/range {v16 .. v16}, Lio/opencensus/trace/w;->a(Lio/opencensus/trace/o;)Lio/opencensus/common/b;

    move-result-object v3

    .line 1010
    invoke-virtual {v7}, Lcom/google/api/client/http/z;->getContentLength()J

    move-result-wide v4

    move-object/from16 v6, v16

    invoke-static {v6, v4, v5}, Lcom/google/api/client/http/ac;->a(Lio/opencensus/trace/o;J)V

    .line 1012
    :try_start_0
    invoke-virtual {v7}, Lcom/google/api/client/http/z;->execute()Lcom/google/api/client/http/aa;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 1014
    invoke-virtual {v4}, Lcom/google/api/client/http/aa;->getContentLength()J

    move-result-wide v10

    invoke-static {v6, v10, v11}, Lcom/google/api/client/http/ac;->b(Lio/opencensus/trace/o;J)V

    const-string v0, "http.status_code"

    .line 1017
    invoke-virtual {v4}, Lcom/google/api/client/http/aa;->getStatusCode()I

    move-result v5

    int-to-long v10, v5

    .line 6063
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 6197
    new-instance v7, Lio/opencensus/trace/b;

    const-string v10, "longValue"

    .line 6198
    invoke-static {v5, v10}, Lio/opencensus/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-direct {v7, v5}, Lio/opencensus/trace/b;-><init>(Ljava/lang/Long;)V

    .line 1015
    invoke-virtual {v6, v0, v7}, Lio/opencensus/trace/o;->a(Ljava/lang/String;Lio/opencensus/trace/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1022
    :cond_19
    :try_start_1
    new-instance v0, Lcom/google/api/client/http/t;

    invoke-direct {v0, v1, v4}, Lcom/google/api/client/http/t;-><init>(Lcom/google/api/client/http/q;Lcom/google/api/client/http/aa;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    invoke-interface {v3}, Lio/opencensus/common/b;->close()V

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_f

    :catchall_0
    move-exception v0

    .line 1026
    :try_start_2
    invoke-virtual {v4}, Lcom/google/api/client/http/aa;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 1028
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1031
    :cond_1a
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    .line 1033
    :try_start_3
    iget-boolean v4, v1, Lcom/google/api/client/http/q;->A:Z

    if-nez v4, :cond_1c

    iget-object v4, v1, Lcom/google/api/client/http/q;->u:Lcom/google/api/client/http/o;

    if-eqz v4, :cond_1b

    .line 1035
    invoke-interface {v4, v1, v2}, Lcom/google/api/client/http/o;->a(Lcom/google/api/client/http/q;Z)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v4, 0x0

    .line 1037
    invoke-static {v4}, Lcom/google/api/client/http/ac;->a(Ljava/lang/Integer;)Lio/opencensus/trace/l;

    move-result-object v2

    invoke-virtual {v6, v2}, Lio/opencensus/trace/o;->a(Lio/opencensus/trace/l;)V

    .line 1038
    throw v0

    :cond_1c
    :goto_e
    const/4 v4, 0x0

    if-eqz v9, :cond_1d

    .line 1043
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "exception thrown while executing request"

    invoke-virtual {v8, v5, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1046
    :cond_1d
    invoke-interface {v3}, Lio/opencensus/common/b;->close()V

    move-object v3, v4

    :goto_f
    if-eqz v3, :cond_22

    .line 6283
    :try_start_4
    iget v5, v3, Lcom/google/api/client/http/t;->c:I

    invoke-static {v5}, Lcom/google/api/client/http/v;->a(I)Z

    move-result v5

    if-nez v5, :cond_22

    .line 1055
    iget-object v5, v1, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/x;

    if-eqz v5, :cond_1e

    .line 1059
    invoke-interface {v5, v1, v3, v2}, Lcom/google/api/client/http/x;->a(Lcom/google/api/client/http/q;Lcom/google/api/client/http/t;Z)Z

    move-result v5

    goto :goto_10

    :cond_1e
    const/4 v5, 0x0

    :goto_10
    if-nez v5, :cond_20

    .line 6292
    iget v7, v3, Lcom/google/api/client/http/t;->c:I

    .line 7273
    iget-object v8, v3, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/q;

    .line 7519
    iget-object v8, v8, Lcom/google/api/client/http/q;->e:Lcom/google/api/client/http/n;

    .line 1062
    invoke-virtual {v1, v7, v8}, Lcom/google/api/client/http/q;->a(ILcom/google/api/client/http/n;)Z

    move-result v7

    if-eqz v7, :cond_1f

    :catch_1
    :goto_11
    const/4 v5, 0x1

    goto :goto_12

    :cond_1f
    if-eqz v2, :cond_20

    .line 1065
    iget-object v7, v1, Lcom/google/api/client/http/q;->x:Lcom/google/api/client/http/c;

    if-eqz v7, :cond_20

    .line 1067
    invoke-interface {v7}, Lcom/google/api/client/http/c;->a()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1070
    iget-object v7, v1, Lcom/google/api/client/http/q;->x:Lcom/google/api/client/http/c;

    invoke-interface {v7}, Lcom/google/api/client/http/c;->b()J

    move-result-wide v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_20

    .line 1073
    :try_start_5
    iget-object v5, v1, Lcom/google/api/client/http/q;->C:Lcom/google/api/client/a/ac;

    invoke-interface {v5, v7, v8}, Lcom/google/api/client/a/ac;->a(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_11

    :cond_20
    :goto_12
    and-int/2addr v2, v5

    if-eqz v2, :cond_24

    .line 1086
    :try_start_6
    invoke-virtual {v3}, Lcom/google/api/client/http/t;->i()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_14

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_21

    .line 1099
    invoke-virtual {v3}, Lcom/google/api/client/http/t;->j()V

    .line 1101
    :cond_21
    throw v0

    :cond_22
    if-nez v3, :cond_23

    const/4 v5, 0x1

    goto :goto_13

    :cond_23
    const/4 v5, 0x0

    :goto_13
    and-int/2addr v2, v5

    :cond_24
    :goto_14
    add-int/lit8 v5, v17, -0x1

    if-nez v2, :cond_2a

    if-nez v3, :cond_25

    move-object v5, v4

    goto :goto_15

    .line 9292
    :cond_25
    iget v2, v3, Lcom/google/api/client/http/t;->c:I

    .line 1103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_15
    invoke-static {v5}, Lcom/google/api/client/http/ac;->a(Ljava/lang/Integer;)Lio/opencensus/trace/l;

    move-result-object v2

    invoke-virtual {v6, v2}, Lio/opencensus/trace/o;->a(Lio/opencensus/trace/l;)V

    if-eqz v3, :cond_29

    .line 1110
    iget-object v0, v1, Lcom/google/api/client/http/q;->v:Lcom/google/api/client/http/u;

    if-eqz v0, :cond_26

    .line 1111
    invoke-interface {v0, v3}, Lcom/google/api/client/http/u;->a(Lcom/google/api/client/http/t;)V

    .line 1114
    :cond_26
    iget-boolean v0, v1, Lcom/google/api/client/http/q;->o:Z

    if-eqz v0, :cond_28

    .line 10283
    iget v0, v3, Lcom/google/api/client/http/t;->c:I

    invoke-static {v0}, Lcom/google/api/client/http/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_16

    .line 1116
    :cond_27
    :try_start_7
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, v3}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/t;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 1118
    invoke-virtual {v3}, Lcom/google/api/client/http/t;->j()V

    .line 1119
    throw v0

    :cond_28
    :goto_16
    return-object v3

    .line 1107
    :cond_29
    throw v0

    :cond_2a
    move-object v0, v3

    move-object v4, v6

    move v6, v5

    goto/16 :goto_1

    .line 1046
    :goto_17
    invoke-interface {v3}, Lio/opencensus/common/b;->close()V

    .line 1047
    throw v0
.end method
