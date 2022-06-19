.class public Lcom/bytedance/sdk/openadsdk/core/h/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h/b;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;

.field private static final m:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:I

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:I

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private final W:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile X:Z

.field private final Y:Lcom/bytedance/sdk/openadsdk/utils/z;

.field private Z:I

.field private aa:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/h/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/h/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:I

.field private x:J

.field private y:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->m()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 277
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->k:Ljava/lang/String;

    .line 278
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->l:Ljava/lang/String;

    .line 279
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->m:Ljava/lang/String;

    .line 346
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->a:Ljava/lang/String;

    const-string v0, "IABTCF_TCString"

    .line 348
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/util/Map;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->d:Ljava/util/Map;

    .line 241
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->f:Ljava/util/Set;

    .line 243
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->h:Ljava/util/Set;

    .line 273
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    const v0, 0x7fffffff

    .line 292
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->o:I

    .line 293
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->p:I

    .line 306
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->u:I

    .line 307
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->v:I

    .line 308
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->w:I

    const-wide/16 v1, 0x0

    .line 309
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->x:J

    .line 310
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->y:Ljava/util/Set;

    .line 311
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->z:Ljava/util/Set;

    .line 312
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->A:I

    .line 313
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->B:I

    const-wide/32 v1, 0x7fffffff

    .line 315
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->C:J

    .line 316
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->D:I

    .line 318
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->E:I

    .line 319
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->F:I

    .line 326
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->I:I

    .line 328
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    const/4 v1, 0x0

    .line 330
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    .line 331
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->N:Ljava/lang/String;

    const/4 v1, 0x0

    .line 333
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->O:Z

    .line 334
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    .line 336
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Q:I

    .line 339
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    .line 340
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    .line 341
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->T:I

    .line 342
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->U:I

    .line 343
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    .line 344
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    .line 350
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->X:Z

    .line 355
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Z:I

    .line 357
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->aa:I

    .line 360
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_sdk_settings"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    return-void
.end method

.method private B()V
    .locals 3

    const/4 v0, 0x0

    .line 914
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->q:Ljava/lang/String;

    .line 915
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "ab_test_param"

    const-string v2, "ab_test_version"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 916
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    return p1

    :cond_0
    const/4 p1, 0x5

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1044
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    const-string v3, "app_log_url"

    const-string v4, "ads_url"

    const-string v5, "scheme_list_data"

    const-string v6, "hit_app_list_data"

    const-string v7, "hit_app_list_time"

    const-string v8, "fetch_tpl_timeout_ctrl"

    const-string v9, "max_tpl_cnts"

    const-string v10, "app_list_control"

    const-string v11, "support_tnc"

    const-string v12, "if_both_open"

    const-string v13, "splash_check_type"

    const-string v14, "splash_load_type"

    const-string v15, "playableLoadH5Url"

    const-string v1, "pyload_h5"

    move-object/from16 p2, v3

    const-string v3, "fetch_template"

    move-object/from16 v16, v4

    const-string v4, "download_config_dl_size"

    move-object/from16 v17, v5

    const-string v5, "download_config_dl_network"

    move-object/from16 v18, v6

    const-string v6, "max"

    move-object/from16 v19, v7

    const-string v7, "duration"

    move-object/from16 v20, v8

    const-string v8, "xpath"

    move-object/from16 v21, v9

    const-string v9, "privacy_fields_allowed"

    if-eqz v2, :cond_7

    .line 1046
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->n:Ljava/lang/String;

    move-object/from16 v22, v9

    const-string v9, "tt_sdk_settings"

    invoke-static {v9, v8, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v1

    .line 1047
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->C:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9, v7, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1048
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v6, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v5, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1056
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v4, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1065
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vbtt"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1066
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1067
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v14, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1068
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v13, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1069
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v12, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->B:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v11, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1071
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->s:Ljava/lang/String;

    move-object/from16 v2, v23

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->t:Ljava/lang/String;

    invoke-static {v9, v15, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9, v10, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1074
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1075
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->x:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, v19

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1077
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->y:Ljava/util/Set;

    move-object/from16 v2, v18

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1078
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->z:Ljava/util/Set;

    move-object/from16 v2, v17

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1079
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    move-object/from16 v2, v16

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->I:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "coppa"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->J:Ljava/lang/String;

    const-string v2, "policy_url"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->L:Ljava/lang/String;

    const-string v2, "consent_url"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    const-string v2, "dyn_draw_engine_url"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->N:Ljava/lang/String;

    const-string v2, "dc"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isGdprUser"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1089
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->q:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "ab_test_version"

    .line 1090
    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :cond_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->r:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "ab_test_param"

    .line 1093
    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ad_slot_conf"

    move-object/from16 v2, p1

    .line 1096
    invoke-static {v9, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_2
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1099
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->g:Ljava/lang/String;

    const-string v2, "template_ids"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1102
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->e:Ljava/lang/String;

    const-string v2, "tpl_infos"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_4
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_ad_enable"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1107
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_personalized_ad"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1108
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->T:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_sladar_enable"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1109
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->U:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_app_log_enable"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "privacy_sec_enable"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1112
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    const-string v2, "gecko_hosts"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 1115
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 1117
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1118
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1119
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1121
    :cond_5
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object/from16 v2, v22

    const-string v1, ""

    .line 1123
    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :goto_1
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_video_from_cache"

    invoke-static {v9, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_7
    move-object/from16 v24, v9

    move-object/from16 v2, v21

    move-object v9, v1

    .line 1132
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->n:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    move-object v8, v10

    move-object v2, v11

    iget-wide v10, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->C:J

    invoke-virtual {v1, v7, v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;J)V

    .line 1134
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v7, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->D:I

    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1141
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v6, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->o:I

    invoke-virtual {v1, v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1142
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->p:I

    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1151
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v4, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->F:I

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1152
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->s:Ljava/lang/String;

    invoke-virtual {v1, v9, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->t:Ljava/lang/String;

    invoke-virtual {v1, v15, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->u:I

    invoke-virtual {v1, v14, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1155
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->v:I

    invoke-virtual {v1, v13, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1156
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->A:I

    invoke-virtual {v1, v12, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1157
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->B:I

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1158
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->w:I

    invoke-virtual {v1, v8, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1159
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Q:I

    move-object/from16 v3, v21

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1160
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    move-object/from16 v3, v20

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1162
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->x:J

    move-object/from16 v4, v19

    invoke-virtual {v1, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;J)V

    .line 1163
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->y:Ljava/util/Set;

    move-object/from16 v3, v18

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 1164
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->z:Ljava/util/Set;

    move-object/from16 v3, v17

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 1165
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    move-object/from16 v3, v16

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->I:I

    const-string v3, "coppa"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1168
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->J:Ljava/lang/String;

    const-string v3, "policy_url"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->L:Ljava/lang/String;

    const-string v3, "consent_url"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    const-string v3, "dyn_draw_engine_url"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->N:Ljava/lang/String;

    const-string v3, "dc"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    const-string v3, "isGdprUser"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1175
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->q:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1176
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v3, "ab_test_version"

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    :cond_8
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->r:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1179
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v3, "ab_test_param"

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    :cond_9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->E:I

    const-string v3, "vbtt"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1184
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1185
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v2, "ad_slot_conf"

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :cond_a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1189
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->g:Ljava/lang/String;

    const-string v3, "template_ids"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    :cond_b
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1193
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->e:Ljava/lang/String;

    const-string v3, "tpl_infos"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_c
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    const-string v3, "privacy_ad_enable"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1199
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    const-string v3, "privacy_personalized_ad"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1200
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->T:I

    const-string v3, "privacy_sladar_enable"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1201
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->U:I

    const-string v3, "privacy_app_log_enable"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1202
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    const-string v3, "privacy_sec_enable"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 1204
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    const-string v3, "gecko_hosts"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 1207
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 1209
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1210
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1211
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 1213
    :cond_d
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v24

    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    move-object/from16 v3, v24

    .line 1215
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v2, ""

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :goto_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Z:I

    const-string v3, "read_video_from_cache"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 28

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "code_id"

    .line 620
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto_play"

    const/4 v3, 0x1

    .line 621
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "voice_control"

    .line 622
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "rv_preload"

    const/4 v7, 0x2

    .line 623
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "nv_preload"

    .line 624
    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const/16 v9, 0x64

    const-string v10, "proportion_watching"

    .line 626
    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "skip_time_displayed"

    const/4 v11, 0x0

    .line 627
    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v12, "video_skip_result"

    .line 628
    invoke-virtual {v0, v12, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "reg_creative_control"

    .line 629
    invoke-virtual {v0, v13, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x3

    const-string v15, "play_bar_show_time"

    .line 630
    invoke-virtual {v0, v15, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "rv_skip_time"

    const/4 v11, -0x1

    .line 631
    invoke-virtual {v0, v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const-string v3, "endcard_close_time"

    .line 632
    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "playable_endcard_close_time"

    .line 633
    invoke-virtual {v0, v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 634
    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v11, "if_show_win"

    const/4 v7, 0x1

    .line 635
    invoke-virtual {v0, v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v7, "sp_preload"

    move/from16 v19, v11

    const/4 v11, 0x0

    .line 636
    invoke-virtual {v0, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v11, 0x5dc

    move/from16 v20, v7

    const-string v7, "stop_time"

    .line 637
    invoke-virtual {v0, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v11, "native_playable_delay"

    move/from16 v21, v7

    const/4 v7, 0x2

    .line 638
    invoke-virtual {v0, v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v7, "time_out_control"

    move/from16 v22, v11

    const/4 v11, -0x1

    .line 639
    invoke-virtual {v0, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/16 v11, 0x14

    move/from16 v23, v7

    const-string v7, "playable_duration_time"

    .line 640
    invoke-virtual {v0, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v11, "playable_close_time"

    move/from16 v24, v7

    const/4 v7, -0x1

    .line 641
    invoke-virtual {v0, v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v11, "playable_reward_type"

    move/from16 v18, v7

    const/4 v7, 0x0

    .line 642
    invoke-virtual {v0, v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    move/from16 v16, v11

    const-string v11, "reward_is_callback"

    .line 643
    invoke-virtual {v0, v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v11, 0x5

    move/from16 v25, v7

    const-string v7, "iv_skip_time"

    .line 644
    invoke-virtual {v0, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v11, "parent_tpl_ids"

    .line 645
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    move-object/from16 v26, v11

    const-string v11, "slot_type"

    move/from16 v27, v7

    const/4 v7, 0x2

    .line 646
    invoke-virtual {v0, v11, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 648
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/h/e;->f(I)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v5, 0x1

    .line 651
    :cond_1
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/h/e;->f(I)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v4, 0x1

    .line 655
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a()Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v7

    .line 656
    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 657
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->n(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 658
    invoke-virtual {v1, v5}, Lcom/bytedance/sdk/openadsdk/core/h/a;->o(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 659
    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/core/h/a;->p(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 660
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/h/a;->q(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 662
    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/core/h/a;->r(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 663
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/core/h/a;->s(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 664
    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/core/h/a;->t(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 665
    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/core/h/a;->u(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 666
    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/core/h/a;->m(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 667
    invoke-virtual {v1, v15}, Lcom/bytedance/sdk/openadsdk/core/h/a;->l(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    move/from16 v2, v17

    .line 668
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->j(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 669
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/h/a;->i(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 670
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/h/a;->k(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    move/from16 v2, v19

    .line 671
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->v(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    move/from16 v2, v20

    .line 672
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->f(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    move/from16 v2, v21

    .line 673
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->g(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    move/from16 v2, v22

    .line 674
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->h(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    move/from16 v2, v23

    .line 675
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->e(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    move/from16 v2, v18

    .line 676
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    move/from16 v2, v24

    .line 677
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->d(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    move/from16 v2, v16

    .line 678
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->b(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    move/from16 v2, v25

    .line 679
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->c(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v1

    .line 680
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->w(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    move/from16 v1, v27

    .line 681
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->x(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    move-object/from16 v1, v26

    .line 682
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 929
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "dyn_draw_engine_url"

    if-eqz v0, :cond_1

    .line 930
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->i:Ljava/lang/String;

    const-string v2, "tt_sdk_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    :goto_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/e;->i:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    .line 936
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "settinng---TTDynamic.init().....oldDynDrawEngineUrl="

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "TemplateManager"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "settinng---TTDynamic.init().....newmDynDrawEngineUrl="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u91cd\u65b0\u521d\u59cb\u5316\u6a21\u677fTTDynamic.init()....."

    .line 939
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    .line 941
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 943
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 946
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->c()V

    .line 947
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a(Z)V

    .line 949
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->g()V

    .line 950
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b(Z)V

    .line 952
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->b()V

    .line 954
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/d;->b()V

    .line 955
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->a()Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/b;->b()V

    :cond_2
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "is_gdpr_user"

    const/4 v1, -0x1

    .line 968
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 970
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    :cond_0
    return-void
.end method

.method private e(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "splash_load_type"

    const/4 v1, 0x1

    .line 975
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->u:I

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    return p1
.end method

.method private f(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "splash_check_type"

    const/4 v1, 0x1

    .line 988
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->v:I

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    return v1

    :cond_0
    return p1
.end method

.method private static f(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private t(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 3

    .line 1972
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1976
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a()Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v2

    .line 1977
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1978
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->n(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1979
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->o(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/4 v0, 0x2

    .line 1980
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->p(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1981
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->q(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/16 v2, 0x64

    .line 1983
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->r(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/4 v2, 0x0

    .line 1984
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->s(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1985
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->u(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/4 v2, 0x3

    .line 1986
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->m(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/4 v2, -0x1

    .line 1987
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->l(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1988
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->j(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1989
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->i(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1990
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->k(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1991
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->v(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1992
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->e(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1993
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/16 v1, 0x14

    .line 1994
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->d(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1995
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->w(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/4 v0, 0x5

    .line 1996
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->x(I)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    const/4 v0, 0x0

    .line 1997
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public A()Z
    .locals 3

    .line 2267
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Z:I

    const/4 v1, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 2268
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "read_video_from_cache"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 2269
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Z:I

    goto :goto_0

    .line 2271
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Z:I

    .line 2274
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Z:I

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 963
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 964
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    return p1
.end method

.method public a(Ljava/lang/String;Z)I
    .locals 2

    if-nez p1, :cond_0

    .line 1724
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Z)I

    move-result p1

    return p1

    .line 1725
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1726
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->u:I

    return p1

    :cond_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Z)I

    move-result p1

    return p1
.end method

.method public a(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2235
    :try_start_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 2237
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2238
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2239
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2240
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-object v0

    .line 2245
    :catchall_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1
.end method

.method public declared-synchronized a()V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v2, 0x1

    .line 365
    :try_start_0
    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->X:Z

    .line 366
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/16 v7, 0x64

    const/16 v8, 0xbb8

    const/4 v9, 0x5

    const/16 v10, 0xe10

    const/16 v11, 0x1e

    const/16 v12, 0x32

    const-wide/16 v13, 0x2710

    const/4 v15, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    const-string v0, "tt_sdk_settings"

    const-string v4, "xpath"

    const-string v5, ""

    .line 368
    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->n:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "duration"

    .line 369
    invoke-static {v0, v4, v13, v14}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->C:J

    const-string v0, "tt_sdk_settings"

    const-string v4, "max"

    .line 370
    invoke-static {v0, v4, v12}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->D:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "download_config_dl_network"

    .line 377
    invoke-static {v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->o:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "download_config_dl_size"

    .line 378
    invoke-static {v0, v4, v11}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->p:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "vbtt"

    .line 387
    invoke-static {v0, v4, v9}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->E:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "fetch_template"

    .line 388
    invoke-static {v0, v4, v10}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->F:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "template_ids"

    .line 389
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->g:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "ab_test_version"

    .line 390
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->q:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "ab_test_param"

    .line 391
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->r:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "pyload_h5"

    .line 392
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->s:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "playableLoadH5Url"

    .line 393
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->t:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "splash_load_type"

    .line 394
    invoke-static {v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->u:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "splash_check_type"

    .line 395
    invoke-static {v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->v:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "if_both_open"

    .line 396
    invoke-static {v0, v4, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->A:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "support_tnc"

    .line 397
    invoke-static {v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->B:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "fetch_tpl_timeout_ctrl"

    .line 398
    invoke-static {v0, v4, v8}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "max_tpl_cnts"

    .line 399
    invoke-static {v0, v4, v7}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Q:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "tpl_infos"

    .line 401
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->e:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "app_list_control"

    .line 402
    invoke-static {v0, v4, v15}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->w:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "hit_app_list_time"

    const-wide/16 v5, 0x0

    .line 403
    invoke-static {v0, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->x:J

    const-string v0, "tt_sdk_settings"

    const-string v4, "ads_url"

    .line 406
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/h/e;->l:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "app_log_url"

    .line 407
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/h/e;->k:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "coppa"

    const/16 v5, -0x63

    .line 408
    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->I:I

    .line 409
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->I:I

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/g;->c(I)V

    const-string v0, "tt_sdk_settings"

    const-string v4, "policy_url"

    .line 410
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/h/e;->m:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->J:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "consent_url"

    const-string v5, "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html"

    .line 411
    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->L:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "isGdprUser"

    const/4 v5, -0x1

    .line 412
    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "dyn_draw_engine_url"

    .line 413
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/h/e;->i:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "dc"

    .line 414
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->N:Ljava/lang/String;

    const-string v0, "tt_sdk_settings"

    const-string v4, "privacy_ad_enable"

    const v5, 0x7fffffff

    .line 417
    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "privacy_personalized_ad"

    .line 418
    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "privacy_sladar_enable"

    .line 419
    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->T:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "privacy_app_log_enable"

    .line 420
    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->U:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "privacy_sec_enable"

    .line 421
    invoke-static {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    const-string v0, "tt_sdk_settings"

    const-string v4, "privacy_fields_allowed"

    .line 422
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    if-eqz v4, :cond_0

    .line 425
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :cond_0
    const-string v4, "tt_sdk_settings"

    const-string v5, "gecko_hosts"

    .line 427
    invoke-static {v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    .line 428
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    const-string v4, "tt_sdk_settings"

    const-string v5, "global_rate"

    .line 430
    invoke-static {v4, v5, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->aa:I

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 435
    :try_start_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 437
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 439
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 442
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 447
    :cond_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->y:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v0, "tt_sdk_settings"

    const-string v4, "hit_app_list_data"

    .line 448
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 449
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 450
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 451
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->y:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 454
    :cond_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->z:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v0, "tt_sdk_settings"

    const-string v4, "scheme_list_data"

    .line 455
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 456
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 457
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 458
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->z:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string v0, "tt_sdk_settings"

    const-string v4, "ad_slot_conf"

    .line 463
    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_5

    .line 466
    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 469
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :goto_3
    if-ge v15, v0, :cond_5

    .line 471
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 472
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/h/e;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 474
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/util/Map;

    iget-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :catch_1
    :cond_5
    :try_start_4
    const-string v0, "tt_sdk_settings"

    const-string v3, "read_video_from_cache"

    .line 483
    invoke-static {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Z:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    .line 488
    :cond_6
    :try_start_5
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "xpath"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->n:Ljava/lang/String;

    .line 489
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "duration"

    invoke-virtual {v0, v4, v13, v14}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->C:J

    .line 490
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "max"

    invoke-virtual {v0, v4, v12}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->D:I

    .line 497
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "download_config_dl_network"

    invoke-virtual {v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->o:I

    .line 498
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "download_config_dl_size"

    invoke-virtual {v0, v4, v11}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->p:I

    .line 507
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "fetch_template"

    invoke-virtual {v0, v4, v10}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->F:I

    .line 508
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "ab_test_version"

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->q:Ljava/lang/String;

    .line 509
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "ab_test_param"

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->r:Ljava/lang/String;

    .line 511
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "vbtt"

    invoke-virtual {v0, v4, v9}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->E:I

    .line 512
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "template_ids"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->g:Ljava/lang/String;

    .line 513
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "pyload_h5"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->s:Ljava/lang/String;

    .line 514
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "playableLoadH5Url"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->t:Ljava/lang/String;

    .line 515
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "splash_load_type"

    invoke-virtual {v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->u:I

    .line 516
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "splash_check_type"

    invoke-virtual {v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->v:I

    .line 517
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "if_both_open"

    invoke-virtual {v0, v4, v15}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->A:I

    .line 518
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "support_tnc"

    invoke-virtual {v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->B:I

    .line 519
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "tpl_infos"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->e:Ljava/lang/String;

    .line 520
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "app_list_control"

    invoke-virtual {v0, v4, v15}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->w:I

    .line 521
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "fetch_tpl_timeout_ctrl"

    invoke-virtual {v0, v4, v8}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    .line 522
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "max_tpl_cnts"

    invoke-virtual {v0, v4, v7}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Q:I

    .line 524
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "hit_app_list_time"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->x:J

    .line 526
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "ads_url"

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    .line 527
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "app_log_url"

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    .line 528
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "coppa"

    const/16 v5, -0x63

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->I:I

    .line 529
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->I:I

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/g;->c(I)V

    .line 530
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "policy_url"

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/h/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->J:Ljava/lang/String;

    .line 531
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "consent_url"

    const-string v5, "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html"

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->L:Ljava/lang/String;

    .line 532
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "dyn_draw_engine_url"

    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/h/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    .line 533
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "dc"

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->N:Ljava/lang/String;

    .line 534
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "isGdprUser"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    .line 537
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "privacy_ad_enable"

    const v5, 0x7fffffff

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    .line 538
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "privacy_personalized_ad"

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    .line 539
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "privacy_sladar_enable"

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->T:I

    .line 540
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "privacy_app_log_enable"

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->U:I

    .line 541
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "privacy_sec_enable"

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    .line 544
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    if-eqz v0, :cond_7

    .line 545
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 547
    :cond_7
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "gecko_hosts"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    .line 548
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    .line 550
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "global_rate"

    invoke-virtual {v0, v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->aa:I

    .line 553
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "privacy_fields_allowed"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v4, :cond_8

    .line 557
    :try_start_6
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 559
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v0, :cond_8

    .line 561
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    .line 564
    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 568
    :cond_8
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->y:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 569
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "hit_app_list_data"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 570
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 571
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 572
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->y:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 575
    :cond_9
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->z:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 576
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "scheme_list_data"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 577
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 578
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 579
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->z:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 584
    :cond_a
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v4, "ad_slot_conf"

    invoke-virtual {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v3, :cond_c

    .line 587
    :try_start_8
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 590
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :goto_7
    if-ge v15, v0, :cond_c

    .line 592
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 593
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/h/e;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 595
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/util/Map;

    iget-object v6, v4, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 604
    :catch_3
    :cond_c
    :try_start_9
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    const-string v3, "read_video_from_cache"

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/h/e;->Z:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 10

    const-string v0, "xpath"

    .line 704
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->n:Ljava/lang/String;

    const-string v0, "feq_policy"

    .line 706
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "duration"

    .line 708
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->C:J

    const-string v1, "max"

    .line 709
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->D:I

    :cond_0
    const/4 v0, 0x5

    const-string v1, "vbtt"

    .line 712
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->E:I

    const/16 v0, 0xe10

    const-string v1, "fetch_tpl_interval"

    .line 713
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->F:I

    const-string v0, "abtest"

    .line 717
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "version"

    .line 721
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->q:Ljava/lang/String;

    const-string v1, "param"

    .line 722
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->r:Ljava/lang/String;

    goto :goto_0

    .line 725
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->B()V

    :goto_0
    const-string v0, "log_rate_conf"

    .line 728
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v2, "global_rate"

    .line 730
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->aa:I

    :cond_2
    const-string v0, "pyload_h5"

    .line 733
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->s:Ljava/lang/String;

    const-string v0, "pure_pyload_h5"

    .line 734
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->t:Ljava/lang/String;

    const-string v0, "ads_url"

    .line 736
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    const-string v0, "app_log_url"

    .line 737
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    const/16 v0, -0x63

    const-string v2, "coppa"

    .line 738
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->I:I

    .line 739
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->I:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/g;->c(I)V

    .line 740
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->m:Ljava/lang/String;

    const-string v2, "privacy_url"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->J:Ljava/lang/String;

    const-string v0, "consent_url"

    const-string v2, "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html"

    .line 741
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->L:Ljava/lang/String;

    const-string v0, "dc"

    .line 742
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->N:Ljava/lang/String;

    .line 743
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->c(Lorg/json/JSONObject;)V

    .line 744
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->d(Lorg/json/JSONObject;)V

    .line 747
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->e(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->u:I

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setting-\u300bmSplashLoadType="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->u:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "splashLoad"

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->f(Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->v:I

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setting-\u300bmSplashCheckType="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->v:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "if_both_open"

    const/4 v2, 0x0

    .line 752
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->A:I

    const-string v0, "support_tnc"

    .line 753
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->B:I

    const-string v0, "al"

    .line 755
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->w:I

    const/16 v0, 0x64

    const-string v3, "max_tpl_cnts"

    .line 757
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Q:I

    const-string v0, "app_common_config"

    .line 759
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v3, 0xbb8

    const-string v4, "fetch_tpl_timeout_ctrl"

    .line 761
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    .line 765
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    const-string v3, "gecko_hosts"

    .line 766
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 767
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 768
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 769
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 774
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GeckoLog: settings json error "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;)V

    .line 779
    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->x:J

    .line 780
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->y:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v0, "spam_app_list"

    .line 781
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 783
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_6

    .line 785
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 786
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 787
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->y:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 792
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->z:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v0, "scheme_check_list"

    .line 793
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 795
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_8

    .line 797
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 798
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 799
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->z:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    const-string v0, "download_config"

    .line 804
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v3, "dl_network"

    .line 812
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->o:I

    const/16 v3, 0x1e

    const-string v4, "dl_size"

    .line 813
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->p:I

    :cond_9
    const-string v0, "read_video_from_cache"

    .line 830
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Z:I

    const-string v0, "ad_slot_conf_list"

    .line 837
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 839
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 840
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_c

    .line 842
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_c

    .line 844
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 845
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/h/e;->b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 847
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/util/Map;

    iget-object v9, v7, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_b
    move-object v4, v3

    :cond_c
    const-string v0, "privacy"

    .line 872
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const v0, 0x7fffffff

    if-eqz p1, :cond_e

    const-string v5, "ad_enable"

    .line 874
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    const-string v5, "personalized_ad"

    .line 875
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    const-string v5, "sladar_enable"

    .line 876
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->T:I

    const-string v5, "app_log_enable"

    .line 877
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->U:I

    const-string v5, "sec_enable"

    .line 878
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    const-string v0, "fields_allowed"

    const-string v5, ""

    .line 879
    invoke-virtual {p1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 882
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 884
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 885
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    .line 886
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    :goto_6
    if-ge v2, p1, :cond_f

    .line 888
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 891
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 894
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto :goto_7

    .line 898
    :cond_e
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    .line 899
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    .line 900
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->T:I

    .line 901
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->U:I

    .line 902
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    .line 903
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 906
    :cond_f
    :goto_7
    invoke-direct {p0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->O:Z

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 1539
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1540
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 3

    .line 691
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Q:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 692
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/16 v1, 0x64

    const-string v2, "max_tpl_cnts"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 693
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Q:I

    goto :goto_0

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Q:I

    .line 698
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Q:I

    return v0
.end method

.method public b(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1774
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1775
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->n:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 1550
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1552
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->e:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return v2

    .line 1557
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    .line 1554
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public c(I)I
    .locals 0

    .line 1939
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1940
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->b:I

    return p1
.end method

.method public c()Z
    .locals 3

    .line 1234
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->A:I

    const/4 v1, 0x0

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 1235
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "if_both_open"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1236
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->A:I

    goto :goto_0

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->A:I

    .line 1244
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->A:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 1579
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1580
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->g:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)I
    .locals 0

    .line 1944
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1945
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->i:I

    return p1
.end method

.method public d(Ljava/lang/String;)I
    .locals 0

    .line 1590
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1591
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->s:I

    return p1
.end method

.method public d()Z
    .locals 3

    .line 1249
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->B:I

    const/4 v1, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 1250
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "support_tnc"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1251
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->B:I

    goto :goto_0

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->B:I

    .line 1256
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->B:I

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)I
    .locals 0

    .line 1961
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1962
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->w:I

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1285
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "ab_test_version"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "tt_sdk_settings"

    .line 1287
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->q:Ljava/lang/String;

    goto :goto_0

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->q:Ljava/lang/String;

    .line 1292
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1596
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1597
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->o:I

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x5dc

    return p1

    .line 1621
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1622
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->q:I

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1296
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "ab_test_param"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "tt_sdk_settings"

    .line 1298
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->r:Ljava/lang/String;

    goto :goto_0

    .line 1300
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->r:Ljava/lang/String;

    .line 1303
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->r:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)I
    .locals 1

    .line 1632
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1633
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->k:I

    return p1
.end method

.method public g()J
    .locals 5

    .line 1319
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->C:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1320
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-wide/16 v1, 0x2710

    const-string v3, "duration"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1321
    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->C:J

    goto :goto_0

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->C:J

    .line 1326
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->C:J

    return-wide v0
.end method

.method public h()I
    .locals 3

    .line 1331
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->D:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1332
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/16 v1, 0x32

    const-string v2, "max"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1333
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->D:I

    goto :goto_0

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->D:I

    .line 1338
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->D:I

    return v0
.end method

.method public h(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6

    const/4 v0, 0x0

    .line 1638
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1639
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1642
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1643
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1644
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/m;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1646
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "id"

    .line 1647
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "md5"

    .line 1648
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1649
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1366
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "pyload_h5"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1368
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->s:Ljava/lang/String;

    goto :goto_0

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->s:Ljava/lang/String;

    .line 1373
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->s:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    .line 1661
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1662
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1378
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1379
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "playableLoadH5Url"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1380
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->t:Ljava/lang/String;

    goto :goto_0

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->t:Ljava/lang/String;

    .line 1385
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->t:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    .line 1673
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1674
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->z:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public k()I
    .locals 3

    .line 1392
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    const/16 v1, 0xbb8

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 1393
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "fetch_tpl_timeout_ctrl"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1394
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    goto :goto_0

    .line 1396
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    .line 1400
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    if-gtz v0, :cond_2

    .line 1401
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    .line 1405
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->P:I

    return v0
.end method

.method public k(Ljava/lang/String;)I
    .locals 0

    .line 1694
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1695
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->h:I

    return p1
.end method

.method public l(Ljava/lang/String;)I
    .locals 0

    .line 1705
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1706
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->j:I

    return p1
.end method

.method public l()Z
    .locals 1

    .line 1684
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->O:Z

    return v0
.end method

.method public m(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1718
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1719
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->l:I

    return p1
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1820
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1821
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "ads_url"

    if-eqz v0, :cond_0

    .line 1823
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->l:Ljava/lang/String;

    const-string v2, "tt_sdk_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    goto :goto_0

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/e;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    .line 1827
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1828
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    .line 1832
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->G:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    .line 1837
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1838
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "app_log_url"

    if-eqz v0, :cond_0

    .line 1840
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->k:Ljava/lang/String;

    const-string v2, "tt_sdk_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    goto :goto_0

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    .line 1844
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1845
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    .line 1848
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->H:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Z
    .locals 0

    .line 1742
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->x:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public o(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/16 p1, 0x14

    return p1

    .line 1747
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1748
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->t:I

    return p1
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .line 1863
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->J:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1864
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "policy_url"

    if-eqz v0, :cond_0

    .line 1865
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->m:Ljava/lang/String;

    const-string v2, "tt_sdk_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->J:Ljava/lang/String;

    goto :goto_0

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/e;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->J:Ljava/lang/String;

    .line 1870
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->J:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1768
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    .line 1769
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/h/a;->m:I

    return p1
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .line 1874
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->L:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1875
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "https://lf-hs-sg.ibytedtos.com/obj/union-platform-i18n/union_platform_gdpr_607_en.html"

    const-string v2, "consent_url"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1876
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->L:Ljava/lang/String;

    goto :goto_0

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->L:Ljava/lang/String;

    .line 1881
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->L:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .locals 1

    .line 1966
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/h/a;

    if-nez v0, :cond_0

    .line 1967
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->t(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    .line 1886
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1887
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "dyn_draw_engine_url"

    if-eqz v0, :cond_0

    .line 1888
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/h/e;->i:Ljava/lang/String;

    const-string v2, "tt_sdk_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    goto :goto_0

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/h/e;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    .line 1893
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->M:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 3

    .line 1898
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1899
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "dc"

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "tt_sdk_settings"

    .line 1900
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->N:Ljava/lang/String;

    goto :goto_0

    .line 1902
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->N:Ljava/lang/String;

    .line 1905
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->N:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    .line 2002
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s()I
    .locals 3

    .line 1909
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1910
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "isGdprUser"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1911
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    goto :goto_0

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    .line 1916
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->K:I

    return v0
.end method

.method public s(Ljava/lang/String;)Z
    .locals 6

    .line 2181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 2183
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->o()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    const-string v3, "mnc"

    const-string v4, "mcc"

    const/4 v5, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v5

    .line 2196
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v5

    :cond_2
    :goto_0
    return v1

    .line 2188
    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v5

    :cond_5
    :goto_1
    return v1

    .line 2205
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->W:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public t()I
    .locals 3

    .line 1950
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->E:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 1951
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, 0x5

    const-string v2, "vbtt"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 1952
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->E:I

    goto :goto_0

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->E:I

    .line 1957
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->E:I

    return v0
.end method

.method public u()Z
    .locals 4

    .line 2007
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 2008
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "privacy_ad_enable"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 2009
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    goto :goto_0

    .line 2011
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    .line 2016
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->R:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    if-nez v0, :cond_3

    return v2

    .line 2022
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->o()I

    move-result v0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public v()I
    .locals 3

    .line 2042
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 2043
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "privacy_personalized_ad"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 2044
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    goto :goto_0

    .line 2046
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    .line 2050
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->S:I

    if-eq v0, v1, :cond_2

    return v0

    .line 2054
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->o()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public w()Z
    .locals 5

    .line 2139
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 2140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "privacy_sec_enable"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 2141
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    goto :goto_0

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    .line 2147
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->o()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 2151
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->V:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    return v3

    :cond_3
    if-nez v0, :cond_4

    return v1

    .line 2157
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->o()I

    move-result v0

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method public x()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 2213
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2215
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "gecko_hosts"

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "tt_sdk_settings"

    .line 2216
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    goto :goto_0

    .line 2218
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    .line 2220
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    if-eqz v1, :cond_3

    .line 2221
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 2225
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->j:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public y()Z
    .locals 1

    .line 2250
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->X:Z

    return v0
.end method

.method public z()Z
    .locals 3

    .line 2255
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->aa:I

    const/4 v1, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 2256
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v2, "global_rate"

    if-eqz v0, :cond_0

    const-string v0, "tt_sdk_settings"

    .line 2257
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->aa:I

    goto :goto_0

    .line 2259
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->Y:Lcom/bytedance/sdk/openadsdk/utils/z;

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->aa:I

    .line 2262
    :cond_1
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/e;->aa:I

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
