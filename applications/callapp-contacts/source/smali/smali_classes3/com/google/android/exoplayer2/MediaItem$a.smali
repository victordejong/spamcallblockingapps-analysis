.class public final Lcom/google/android/exoplayer2/MediaItem$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:Ljava/lang/Object;

.field private B:Lcom/google/android/exoplayer2/t;

.field public a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public c:Ljava/lang/String;

.field public d:Landroid/net/Uri;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/UUID;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem$d;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/lang/Object;

.field public o:J

.field public p:J

.field public q:J

.field public r:F

.field public s:F

.field private t:J

.field private u:J

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:[B

.field private z:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 91
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->u:J

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->j:Ljava/util/List;

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->e:Ljava/util/Map;

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->k:Ljava/util/List;

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->m:Ljava/util/List;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 96
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->o:J

    .line 97
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->p:J

    .line 98
    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->q:J

    const v0, -0x800001

    .line 99
    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->r:F

    .line 100
    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->s:F

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$a;-><init>()V

    .line 105
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$b;->b:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->u:J

    .line 106
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaItem$b;->c:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->v:Z

    .line 107
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaItem$b;->d:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->w:Z

    .line 108
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$b;->a:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->t:J

    .line 109
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->e:Lcom/google/android/exoplayer2/MediaItem$b;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/MediaItem$b;->e:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->x:Z

    .line 110
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->a:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->d:Lcom/google/android/exoplayer2/t;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->B:Lcom/google/android/exoplayer2/t;

    .line 112
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->o:J

    .line 113
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->p:J

    .line 114
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->q:J

    .line 115
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->r:F

    .line 116
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->c:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget v0, v0, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->s:F

    .line 117
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    if-eqz p1, :cond_1

    .line 119
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->l:Ljava/lang/String;

    .line 120
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->c:Ljava/lang/String;

    .line 121
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$c;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->b:Landroid/net/Uri;

    .line 122
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$c;->e:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->k:Ljava/util/List;

    .line 123
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$c;->g:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->m:Ljava/util/List;

    .line 124
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$c;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->n:Ljava/lang/Object;

    .line 125
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$c;->c:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$a;->d:Landroid/net/Uri;

    .line 128
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->requestHeaders:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$a;->e:Ljava/util/Map;

    .line 129
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$a;->g:Z

    .line 130
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$a;->i:Z

    .line 131
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/MediaItem$a;->h:Z

    .line 132
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->sessionForClearTypes:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$a;->j:Ljava/util/List;

    .line 133
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->uuid:Ljava/util/UUID;

    iput-object v1, p0, Lcom/google/android/exoplayer2/MediaItem$a;->f:Ljava/util/UUID;

    .line 134
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->y:[B

    .line 136
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$c;->d:Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    if-eqz p1, :cond_1

    .line 138
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$a;->z:Landroid/net/Uri;

    .line 139
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$a;->A:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$a;-><init>(Lcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lcom/google/android/exoplayer2/MediaItem$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 370
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$a;->y:[B

    return-object p0
.end method

.method public final a()Lcom/google/android/exoplayer2/MediaItem;
    .locals 31

    move-object/from16 v0, p0

    .line 561
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$a;->d:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$a;->f:Ljava/util/UUID;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 563
    iget-object v1, v0, Lcom/google/android/exoplayer2/MediaItem$a;->b:Landroid/net/Uri;

    const/4 v12, 0x0

    if-eqz v1, :cond_5

    .line 565
    new-instance v13, Lcom/google/android/exoplayer2/MediaItem$c;

    iget-object v4, v0, Lcom/google/android/exoplayer2/MediaItem$a;->c:Ljava/lang/String;

    .line 569
    iget-object v15, v0, Lcom/google/android/exoplayer2/MediaItem$a;->f:Ljava/util/UUID;

    if-eqz v15, :cond_2

    .line 570
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    iget-object v3, v0, Lcom/google/android/exoplayer2/MediaItem$a;->d:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/exoplayer2/MediaItem$a;->e:Ljava/util/Map;

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/MediaItem$a;->g:Z

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/MediaItem$a;->i:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/MediaItem$a;->h:Z

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaItem$a;->j:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaItem$a;->y:[B

    const/16 v23, 0x0

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    invoke-direct/range {v14 .. v23}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Ljava/util/UUID;Landroid/net/Uri;Ljava/util/Map;ZZZLjava/util/List;[BLcom/google/android/exoplayer2/MediaItem$1;)V

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v12

    .line 580
    :goto_2
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$a;->z:Landroid/net/Uri;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;

    iget-object v6, v0, Lcom/google/android/exoplayer2/MediaItem$a;->A:Ljava/lang/Object;

    invoke-direct {v3, v2, v6, v12}, Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    move-object v6, v3

    goto :goto_3

    :cond_3
    move-object v6, v12

    :goto_3
    iget-object v7, v0, Lcom/google/android/exoplayer2/MediaItem$a;->k:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/exoplayer2/MediaItem$a;->l:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplayer2/MediaItem$a;->m:Ljava/util/List;

    iget-object v10, v0, Lcom/google/android/exoplayer2/MediaItem$a;->n:Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v2, v13

    move-object v3, v1

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplayer2/MediaItem$c;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem$1;)V

    .line 585
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$a;->a:Ljava/lang/String;

    move-object v6, v13

    goto :goto_5

    :cond_5
    move-object v6, v12

    .line 587
    :goto_5
    new-instance v1, Lcom/google/android/exoplayer2/MediaItem;

    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$a;->a:Ljava/lang/String;

    .line 588
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/exoplayer2/MediaItem$b;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/MediaItem$a;->t:J

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaItem$a;->u:J

    iget-boolean v7, v0, Lcom/google/android/exoplayer2/MediaItem$a;->v:Z

    iget-boolean v8, v0, Lcom/google/android/exoplayer2/MediaItem$a;->w:Z

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/MediaItem$a;->x:Z

    const/16 v21, 0x0

    move-object v13, v5

    move-wide/from16 v16, v2

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v13 .. v21}, Lcom/google/android/exoplayer2/MediaItem$b;-><init>(JJZZZLcom/google/android/exoplayer2/MediaItem$1;)V

    new-instance v7, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/MediaItem$a;->o:J

    iget-wide v8, v0, Lcom/google/android/exoplayer2/MediaItem$a;->p:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/MediaItem$a;->q:J

    iget v13, v0, Lcom/google/android/exoplayer2/MediaItem$a;->r:F

    iget v14, v0, Lcom/google/android/exoplayer2/MediaItem$a;->s:F

    move-object/from16 v22, v7

    move-wide/from16 v23, v2

    move-wide/from16 v25, v8

    move-wide/from16 v27, v10

    move/from16 v29, v13

    move/from16 v30, v14

    invoke-direct/range {v22 .. v30}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    .line 602
    iget-object v2, v0, Lcom/google/android/exoplayer2/MediaItem$a;->B:Lcom/google/android/exoplayer2/t;

    if-eqz v2, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    new-instance v2, Lcom/google/android/exoplayer2/t$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/t$a;-><init>()V

    .line 1037
    new-instance v3, Lcom/google/android/exoplayer2/t;

    iget-object v2, v2, Lcom/google/android/exoplayer2/t$a;->a:Ljava/lang/String;

    invoke-direct {v3, v2, v12}, Lcom/google/android/exoplayer2/t;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/t$1;)V

    move-object v8, v3

    :goto_6
    const/4 v9, 0x0

    move-object v3, v1

    .line 602
    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/MediaItem$b;Lcom/google/android/exoplayer2/MediaItem$c;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;Lcom/google/android/exoplayer2/t;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v1
.end method
