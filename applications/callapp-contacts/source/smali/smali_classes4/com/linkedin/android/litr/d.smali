.class Lcom/linkedin/android/litr/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final g:Ljava/lang/String; = "d"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/g/c;",
            ">;"
        }
    .end annotation
.end field

.field b:F

.field c:I

.field d:Lcom/linkedin/android/litr/g/d;

.field e:Lcom/linkedin/android/litr/h/b;

.field f:Lcom/linkedin/android/litr/a/b;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/c;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Lcom/linkedin/android/litr/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;ILcom/linkedin/android/litr/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkedin/android/litr/c;",
            ">;I",
            "Lcom/linkedin/android/litr/a;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/linkedin/android/litr/d;->i:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/linkedin/android/litr/d;->h:Ljava/util/List;

    .line 64
    iput p3, p0, Lcom/linkedin/android/litr/d;->c:I

    .line 65
    iput-object p4, p0, Lcom/linkedin/android/litr/d;->j:Lcom/linkedin/android/litr/a;

    const/4 p1, 0x0

    .line 67
    iput p1, p0, Lcom/linkedin/android/litr/d;->b:F

    .line 69
    new-instance p1, Lcom/linkedin/android/litr/g/d;

    invoke-direct {p1}, Lcom/linkedin/android/litr/g/d;-><init>()V

    iput-object p1, p0, Lcom/linkedin/android/litr/d;->d:Lcom/linkedin/android/litr/g/d;

    .line 70
    new-instance p1, Lcom/linkedin/android/litr/h/b;

    invoke-direct {p1}, Lcom/linkedin/android/litr/h/b;-><init>()V

    iput-object p1, p0, Lcom/linkedin/android/litr/d;->e:Lcom/linkedin/android/litr/h/b;

    .line 71
    new-instance p1, Lcom/linkedin/android/litr/a/b;

    invoke-direct {p1}, Lcom/linkedin/android/litr/a/b;-><init>()V

    iput-object p1, p0, Lcom/linkedin/android/litr/d;->f:Lcom/linkedin/android/litr/a/b;

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, v0}, Lcom/linkedin/android/litr/d;->a(Z)V

    .line 123
    iget-object v0, p0, Lcom/linkedin/android/litr/d;->j:Lcom/linkedin/android/litr/a;

    iget-object v1, p0, Lcom/linkedin/android/litr/d;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/linkedin/android/litr/d;->f:Lcom/linkedin/android/litr/a/b;

    .line 8028
    iget-object v2, v2, Lcom/linkedin/android/litr/a/b;->a:Ljava/util/List;

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/linkedin/android/litr/a;->b(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, v0}, Lcom/linkedin/android/litr/d;->a(Z)V

    .line 129
    iget-object v0, p0, Lcom/linkedin/android/litr/d;->j:Lcom/linkedin/android/litr/a;

    iget-object v1, p0, Lcom/linkedin/android/litr/d;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/linkedin/android/litr/d;->f:Lcom/linkedin/android/litr/a/b;

    .line 9028
    iget-object v2, v2, Lcom/linkedin/android/litr/a/b;->a:Ljava/util/List;

    .line 129
    invoke-virtual {v0, v1, p1, v2}, Lcom/linkedin/android/litr/a;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/List;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/linkedin/android/litr/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/linkedin/android/litr/d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkedin/android/litr/g/c;

    .line 236
    invoke-virtual {v1}, Lcom/linkedin/android/litr/g/c;->c()V

    .line 237
    iget-object v2, p0, Lcom/linkedin/android/litr/d;->f:Lcom/linkedin/android/litr/a/b;

    invoke-virtual {v1}, Lcom/linkedin/android/litr/g/c;->g()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/linkedin/android/litr/a/b;->a(ILandroid/media/MediaFormat;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 241
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 243
    iget-object v2, p0, Lcom/linkedin/android/litr/d;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/linkedin/android/litr/c;

    .line 13057
    iget-object v4, v3, Lcom/linkedin/android/litr/c;->a:Lcom/linkedin/android/litr/d/d;

    .line 244
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13093
    iget-object v3, v3, Lcom/linkedin/android/litr/c;->e:Lcom/linkedin/android/litr/d/e;

    .line 245
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkedin/android/litr/d/d;

    .line 248
    invoke-interface {v2}, Lcom/linkedin/android/litr/d/d;->f()V

    goto :goto_2

    .line 250
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkedin/android/litr/d/e;

    .line 251
    invoke-interface {v1}, Lcom/linkedin/android/litr/d/e;->a()V

    if-nez p1, :cond_3

    .line 253
    invoke-interface {v1}, Lcom/linkedin/android/litr/d/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/linkedin/android/litr/d;->a(Ljava/lang/String;)Z

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    .line 258
    iget-object p1, p0, Lcom/linkedin/android/litr/d;->j:Lcom/linkedin/android/litr/a;

    iget-object v0, p0, Lcom/linkedin/android/litr/d;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/linkedin/android/litr/d;->f:Lcom/linkedin/android/litr/a/b;

    .line 14028
    iget-object v1, v1, Lcom/linkedin/android/litr/a/b;->a:Ljava/util/List;

    .line 258
    invoke-virtual {p1, v0, v1}, Lcom/linkedin/android/litr/a;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 264
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 268
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method private b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/linkedin/android/litr/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkedin/android/litr/g/c;

    .line 191
    invoke-virtual {v1}, Lcom/linkedin/android/litr/g/c;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/linkedin/android/litr/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkedin/android/litr/c;

    .line 9057
    iget-object v2, v1, Lcom/linkedin/android/litr/c;->a:Lcom/linkedin/android/litr/d/d;

    .line 10057
    iget-object v1, v1, Lcom/linkedin/android/litr/c;->a:Lcom/linkedin/android/litr/d/d;

    .line 198
    invoke-interface {v1}, Lcom/linkedin/android/litr/d/d;->h()Lcom/linkedin/android/litr/d/c;

    move-result-object v1

    .line 11033
    iget-wide v3, v1, Lcom/linkedin/android/litr/d/c;->a:J

    .line 197
    invoke-interface {v2, v3, v4}, Lcom/linkedin/android/litr/d/d;->a(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 207
    :goto_0
    iget-object v4, p0, Lcom/linkedin/android/litr/d;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ge v2, v4, :cond_1

    .line 208
    iget-object v4, p0, Lcom/linkedin/android/litr/d;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/linkedin/android/litr/g/c;

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 211
    invoke-virtual {v4}, Lcom/linkedin/android/litr/g/c;->b()I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v4

    .line 214
    iget-object v4, p0, Lcom/linkedin/android/litr/d;->f:Lcom/linkedin/android/litr/a/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 11049
    iget-object v4, v4, Lcom/linkedin/android/litr/a/b;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/linkedin/android/litr/a/a;

    .line 12047
    iget-wide v5, v4, Lcom/linkedin/android/litr/a/a;->e:J

    add-long/2addr v5, v8

    .line 12067
    iput-wide v5, v4, Lcom/linkedin/android/litr/a/a;->e:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 218
    iget-object v1, p0, Lcom/linkedin/android/litr/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkedin/android/litr/g/c;

    .line 219
    invoke-virtual {v2}, Lcom/linkedin/android/litr/g/c;->f()F

    move-result v2

    add-float/2addr v0, v2

    goto :goto_2

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/linkedin/android/litr/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 223
    iget v1, p0, Lcom/linkedin/android/litr/d;->c:I

    if-nez v1, :cond_3

    iget v2, p0, Lcom/linkedin/android/litr/d;->b:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    iget v2, p0, Lcom/linkedin/android/litr/d;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v1, v1

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_6

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/linkedin/android/litr/d;->j:Lcom/linkedin/android/litr/a;

    iget-object v2, p0, Lcom/linkedin/android/litr/d;->i:Ljava/lang/String;

    .line 12114
    iget-object v4, v1, Lcom/linkedin/android/litr/a;->c:Lcom/linkedin/android/litr/a$a;

    if-nez v4, :cond_5

    .line 12115
    iget-object v1, v1, Lcom/linkedin/android/litr/a;->a:Lcom/linkedin/android/litr/e;

    invoke-interface {v1, v2, v0}, Lcom/linkedin/android/litr/e;->a(Ljava/lang/String;F)V

    goto :goto_3

    .line 12117
    :cond_5
    iget-object v4, v1, Lcom/linkedin/android/litr/a;->c:Lcom/linkedin/android/litr/a$a;

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x0

    .line 12118
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12119
    iget-object v5, v1, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    const-string v6, "jobId"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12120
    iget-object v2, v1, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    const-string v5, "progress"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 12121
    iget-object v1, v1, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 12122
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 226
    :goto_3
    iput v0, p0, Lcom/linkedin/android/litr/d;->b:F

    :cond_6
    return v3
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "Transformation job error"

    .line 1135
    :try_start_0
    iget-object v1, p0, Lcom/linkedin/android/litr/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/linkedin/android/litr/c;

    .line 1136
    iget-object v3, p0, Lcom/linkedin/android/litr/d;->f:Lcom/linkedin/android/litr/a/b;

    .line 2057
    iget-object v4, v2, Lcom/linkedin/android/litr/c;->a:Lcom/linkedin/android/litr/d/d;

    .line 2110
    iget v2, v2, Lcom/linkedin/android/litr/c;->g:I

    .line 1136
    invoke-interface {v4, v2}, Lcom/linkedin/android/litr/d/d;->a(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 3032
    new-instance v4, Lcom/linkedin/android/litr/a/a;

    invoke-direct {v4}, Lcom/linkedin/android/litr/a/a;-><init>()V

    .line 3051
    iput-object v2, v4, Lcom/linkedin/android/litr/a/a;->a:Landroid/media/MediaFormat;

    .line 3035
    iget-object v2, v3, Lcom/linkedin/android/litr/a/b;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3150
    :cond_0
    iget-object v1, p0, Lcom/linkedin/android/litr/d;->h:Ljava/util/List;

    .line 3151
    invoke-static {v1}, Lcom/linkedin/android/litr/h/c;->a(Ljava/util/List;)J

    move-result-wide v1

    long-to-float v3, v1

    const v4, 0x3f8ccccd    # 1.1f

    mul-float v3, v3, v4

    float-to-long v3, v3

    .line 3155
    invoke-static {}, Lcom/linkedin/android/litr/h/b;->a()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    cmp-long v7, v5, v3

    if-ltz v7, :cond_1

    goto :goto_1

    .line 3159
    :cond_1
    new-instance v3, Lcom/linkedin/android/litr/exception/InsufficientDiskSpaceException;

    invoke-direct {v3, v1, v2, v5, v6}, Lcom/linkedin/android/litr/exception/InsufficientDiskSpaceException;-><init>(JJ)V

    throw v3

    .line 3165
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/linkedin/android/litr/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 3166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/linkedin/android/litr/d;->a:Ljava/util/List;

    if-lez v1, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 3173
    iget-object v4, p0, Lcom/linkedin/android/litr/d;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/linkedin/android/litr/c;

    .line 4110
    iget v5, v4, Lcom/linkedin/android/litr/c;->g:I

    .line 4118
    iget v6, v4, Lcom/linkedin/android/litr/c;->h:I

    .line 5057
    iget-object v7, v4, Lcom/linkedin/android/litr/c;->a:Lcom/linkedin/android/litr/d/d;

    .line 5066
    iget-object v8, v4, Lcom/linkedin/android/litr/c;->b:Lcom/linkedin/android/litr/b/a;

    .line 5075
    iget-object v9, v4, Lcom/linkedin/android/litr/c;->c:Lcom/linkedin/android/litr/e/d;

    .line 5084
    iget-object v10, v4, Lcom/linkedin/android/litr/c;->d:Lcom/linkedin/android/litr/b/b;

    .line 5093
    iget-object v11, v4, Lcom/linkedin/android/litr/c;->e:Lcom/linkedin/android/litr/d/e;

    .line 5102
    iget-object v12, v4, Lcom/linkedin/android/litr/c;->f:Landroid/media/MediaFormat;

    .line 3175
    invoke-static/range {v5 .. v12}, Lcom/linkedin/android/litr/g/d;->a(IILcom/linkedin/android/litr/d/d;Lcom/linkedin/android/litr/b/a;Lcom/linkedin/android/litr/e/d;Lcom/linkedin/android/litr/b/b;Lcom/linkedin/android/litr/d/e;Landroid/media/MediaFormat;)Lcom/linkedin/android/litr/g/c;

    move-result-object v4

    .line 3183
    iget-object v5, p0, Lcom/linkedin/android/litr/d;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3184
    iget-object v5, p0, Lcom/linkedin/android/litr/d;->f:Lcom/linkedin/android/litr/a/b;

    invoke-virtual {v4}, Lcom/linkedin/android/litr/g/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/linkedin/android/litr/g/c;->d()Ljava/lang/String;

    move-result-object v4

    .line 6039
    iget-object v5, v5, Lcom/linkedin/android/litr/a/b;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/linkedin/android/litr/a/a;

    .line 6059
    iput-object v6, v5, Lcom/linkedin/android/litr/a/a;->c:Ljava/lang/String;

    .line 6063
    iput-object v4, v5, Lcom/linkedin/android/litr/a/a;->d:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1098
    :cond_3
    invoke-direct {p0}, Lcom/linkedin/android/litr/d;->b()V

    .line 1099
    invoke-direct {p0}, Lcom/linkedin/android/litr/d;->c()V

    .line 1103
    iget-object v1, p0, Lcom/linkedin/android/litr/d;->j:Lcom/linkedin/android/litr/a;

    iget-object v3, p0, Lcom/linkedin/android/litr/d;->i:Ljava/lang/String;

    .line 7054
    iget-object v4, v1, Lcom/linkedin/android/litr/a;->c:Lcom/linkedin/android/litr/a$a;

    if-nez v4, :cond_4

    .line 7055
    iget-object v1, v1, Lcom/linkedin/android/litr/a;->a:Lcom/linkedin/android/litr/e;

    invoke-interface {v1, v3}, Lcom/linkedin/android/litr/e;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 7057
    :cond_4
    iget-object v4, v1, Lcom/linkedin/android/litr/a;->c:Lcom/linkedin/android/litr/a$a;

    invoke-static {v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x0

    .line 7058
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7059
    iget-object v5, v1, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    const-string v6, "jobId"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7060
    iget-object v1, v1, Lcom/linkedin/android/litr/a;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7061
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    const/4 v1, 0x0

    .line 1104
    iput v1, p0, Lcom/linkedin/android/litr/d;->b:F

    .line 1108
    :cond_5
    invoke-direct {p0}, Lcom/linkedin/android/litr/d;->d()Z

    move-result v1

    .line 1110
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1112
    invoke-direct {p0}, Lcom/linkedin/android/litr/d;->a()V

    goto :goto_4

    :cond_6
    if-eqz v1, :cond_5

    move v2, v1

    .line 1117
    :goto_4
    invoke-direct {p0, v2}, Lcom/linkedin/android/litr/d;->a(Z)V

    return-void

    .line 3169
    :cond_7
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->NO_TRACKS_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v1, v2}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/linkedin/android/litr/exception/MediaTransformationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 87
    sget-object v2, Lcom/linkedin/android/litr/d;->g:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    iget-object v0, p0, Lcom/linkedin/android/litr/d;->i:Ljava/lang/String;

    .line 8022
    iput-object v0, v1, Lcom/linkedin/android/litr/exception/MediaTransformationException;->a:Ljava/lang/String;

    .line 89
    invoke-direct {p0, v1}, Lcom/linkedin/android/litr/d;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v1

    .line 79
    sget-object v2, Lcom/linkedin/android/litr/d;->g:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 81
    instance-of v0, v0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_8

    .line 82
    invoke-direct {p0}, Lcom/linkedin/android/litr/d;->a()V

    return-void

    .line 84
    :cond_8
    invoke-direct {p0, v1}, Lcom/linkedin/android/litr/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method
