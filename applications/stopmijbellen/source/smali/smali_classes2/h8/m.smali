.class public final Lh8/m;
.super Lb9/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb9/d<",
        "Lh8/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final B:[Lx8/a;

.field public static final g:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lx8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/c<",
            "Ljava/lang/Long;",
            "Ljava/sql/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final o:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final s:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final t:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final z:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:Ls8/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 47

    .line 1
    const-class v0, Lh8/l;

    new-instance v1, Lx8/b;

    const-string v2, "id"

    invoke-direct {v1, v0, v2}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lh8/m;->g:Lx8/b;

    .line 2
    new-instance v2, Lx8/b;

    const-string v3, "number"

    invoke-direct {v2, v0, v3}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lh8/m;->h:Lx8/b;

    .line 3
    new-instance v3, Lx8/b;

    const-string v4, "receiver_result"

    invoke-direct {v3, v0, v4}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lh8/m;->i:Lx8/b;

    .line 4
    new-instance v4, Lx8/c;

    new-instance v5, Lh8/m$a;

    invoke-direct {v5}, Lh8/m$a;-><init>()V

    const-string v6, "receiver_date"

    const/4 v7, 0x1

    invoke-direct {v4, v0, v6, v7, v5}, Lx8/c;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLx8/c$a;)V

    sput-object v4, Lh8/m;->j:Lx8/c;

    .line 5
    new-instance v5, Lx8/b;

    const-string v6, "receiver_simno"

    invoke-direct {v5, v0, v6}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    new-instance v6, Lx8/b;

    const-string v8, "call_log_id"

    invoke-direct {v6, v0, v8}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v6, Lh8/m;->k:Lx8/b;

    .line 7
    new-instance v8, Lx8/b;

    const-string v9, "call_log_name"

    invoke-direct {v8, v0, v9}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lh8/m;->l:Lx8/b;

    .line 8
    new-instance v9, Lx8/c;

    new-instance v10, Lh8/m$b;

    invoke-direct {v10}, Lh8/m$b;-><init>()V

    const-string v11, "call_log_date"

    invoke-direct {v9, v0, v11, v7, v10}, Lx8/c;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLx8/c$a;)V

    .line 9
    new-instance v10, Lx8/b;

    const-string v11, "call_log_type"

    invoke-direct {v10, v0, v11}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 10
    new-instance v11, Lx8/b;

    const-string v12, "call_log_duration"

    invoke-direct {v11, v0, v12}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 11
    new-instance v12, Lx8/b;

    const-string v13, "call_log_country_iso"

    invoke-direct {v12, v0, v13}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 12
    new-instance v13, Lx8/b;

    const-string v14, "set_need_delete"

    invoke-direct {v13, v0, v14}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    new-instance v14, Lx8/b;

    const-string v15, "set_use_db"

    invoke-direct {v14, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 14
    new-instance v15, Lx8/b;

    const-string v7, "set_use_bl"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 15
    new-instance v7, Lx8/b;

    move-object/from16 v16, v15

    const-string v15, "set_use_wl"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 16
    new-instance v15, Lx8/b;

    move-object/from16 v17, v7

    const-string v7, "set_use_foreign"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 17
    new-instance v7, Lx8/b;

    move-object/from16 v18, v15

    const-string v15, "set_use_contacts"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 18
    new-instance v15, Lx8/b;

    move-object/from16 v19, v7

    const-string v7, "set_use_hidden"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 19
    new-instance v7, Lx8/b;

    move-object/from16 v20, v15

    const-string v15, "set_foreground_service"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 20
    new-instance v15, Lx8/b;

    move-object/from16 v21, v7

    const-string v7, "set_pick_up"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 21
    new-instance v7, Lx8/b;

    move-object/from16 v22, v15

    const-string v15, "image_uri"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lh8/m;->m:Lx8/b;

    .line 22
    new-instance v15, Lx8/b;

    move-object/from16 v23, v7

    const-string v7, "call_check_time"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 23
    new-instance v7, Lx8/b;

    move-object/from16 v24, v15

    const-string v15, "call_memory_check"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    new-instance v15, Lx8/b;

    move-object/from16 v25, v7

    const-string v7, "debug"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 25
    new-instance v7, Lx8/b;

    move-object/from16 v26, v15

    const-string v15, "last_db_check"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 26
    new-instance v15, Lx8/b;

    move-object/from16 v27, v7

    const-string v7, "invisible"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v15, Lh8/m;->n:Lx8/b;

    .line 27
    new-instance v7, Lx8/b;

    move-object/from16 v28, v15

    const-string v15, "set_block_all_except_contacts"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lh8/m;->o:Lx8/b;

    .line 28
    new-instance v15, Lx8/b;

    move-object/from16 v29, v7

    const-string v7, "set_silence_ringer"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v15, Lh8/m;->p:Lx8/b;

    .line 29
    new-instance v7, Lx8/b;

    move-object/from16 v30, v15

    const-string v15, "endcall_result"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 30
    new-instance v15, Lx8/b;

    move-object/from16 v31, v7

    const-string v7, "appvc"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 31
    new-instance v7, Lx8/b;

    move-object/from16 v32, v15

    const-string v15, "set_block_all_except_whitelist"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lh8/m;->q:Lx8/b;

    .line 32
    new-instance v15, Lx8/b;

    move-object/from16 v33, v7

    const-string v7, "preset"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v15, Lh8/m;->r:Lx8/b;

    .line 33
    new-instance v7, Lx8/b;

    move-object/from16 v34, v15

    const-string v15, "set_use_calendar"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lh8/m;->s:Lx8/b;

    .line 34
    new-instance v15, Lx8/b;

    move-object/from16 v35, v7

    const-string v7, "calendar"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 35
    new-instance v7, Lx8/b;

    move-object/from16 v36, v15

    const-string v15, "set_use_sim1"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lh8/m;->t:Lx8/b;

    .line 36
    new-instance v15, Lx8/b;

    move-object/from16 v37, v7

    const-string v7, "set_use_sim2"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v15, Lh8/m;->u:Lx8/b;

    .line 37
    new-instance v7, Lx8/b;

    move-object/from16 v38, v15

    const-string v15, "blockmethod"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lh8/m;->v:Lx8/b;

    .line 38
    new-instance v15, Lx8/b;

    move-object/from16 v39, v7

    const-string v7, "dnd"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v15, Lh8/m;->w:Lx8/b;

    .line 39
    new-instance v7, Lx8/b;

    move-object/from16 v40, v15

    const-string v15, "system_vibrate"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lh8/m;->x:Lx8/b;

    .line 40
    new-instance v15, Lx8/b;

    move-object/from16 v41, v7

    const-string v7, "set_second_call"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v15, Lh8/m;->y:Lx8/b;

    .line 41
    new-instance v7, Lx8/b;

    move-object/from16 v42, v15

    const-string v15, "feedbackName"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lh8/m;->z:Lx8/b;

    .line 42
    new-instance v15, Lx8/b;

    move-object/from16 v43, v7

    const-string v7, "realCallLogName"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 43
    new-instance v7, Lx8/b;

    move-object/from16 v44, v15

    const-string v15, "isDefaultPhoneApp"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 44
    new-instance v15, Lx8/b;

    move-object/from16 v45, v7

    const-string v7, "defaultPhoneAppOption"

    invoke-direct {v15, v0, v7}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 45
    new-instance v7, Lx8/b;

    move-object/from16 v46, v15

    const-string v15, "feedbackChecked"

    invoke-direct {v7, v0, v15}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lh8/m;->A:Lx8/b;

    const/16 v0, 0x2d

    new-array v0, v0, [Lx8/a;

    const/4 v15, 0x0

    aput-object v1, v0, v15

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v8, v0, v1

    const/4 v1, 0x7

    aput-object v9, v0, v1

    const/16 v1, 0x8

    aput-object v10, v0, v1

    const/16 v1, 0x9

    aput-object v11, v0, v1

    const/16 v1, 0xa

    aput-object v12, v0, v1

    const/16 v1, 0xb

    aput-object v13, v0, v1

    const/16 v1, 0xc

    aput-object v14, v0, v1

    const/16 v1, 0xd

    aput-object v16, v0, v1

    const/16 v1, 0xe

    aput-object v17, v0, v1

    const/16 v1, 0xf

    aput-object v18, v0, v1

    const/16 v1, 0x10

    aput-object v19, v0, v1

    const/16 v1, 0x11

    aput-object v20, v0, v1

    const/16 v1, 0x12

    aput-object v21, v0, v1

    const/16 v1, 0x13

    aput-object v22, v0, v1

    const/16 v1, 0x14

    aput-object v23, v0, v1

    const/16 v1, 0x15

    aput-object v24, v0, v1

    const/16 v1, 0x16

    aput-object v25, v0, v1

    const/16 v1, 0x17

    aput-object v26, v0, v1

    const/16 v1, 0x18

    aput-object v27, v0, v1

    const/16 v1, 0x19

    aput-object v28, v0, v1

    const/16 v1, 0x1a

    aput-object v29, v0, v1

    const/16 v1, 0x1b

    aput-object v30, v0, v1

    const/16 v1, 0x1c

    aput-object v31, v0, v1

    const/16 v1, 0x1d

    aput-object v32, v0, v1

    const/16 v1, 0x1e

    aput-object v33, v0, v1

    const/16 v1, 0x1f

    aput-object v34, v0, v1

    const/16 v1, 0x20

    aput-object v35, v0, v1

    const/16 v1, 0x21

    aput-object v36, v0, v1

    const/16 v1, 0x22

    aput-object v37, v0, v1

    const/16 v1, 0x23

    aput-object v38, v0, v1

    const/16 v1, 0x24

    aput-object v39, v0, v1

    const/16 v1, 0x25

    aput-object v40, v0, v1

    const/16 v1, 0x26

    aput-object v41, v0, v1

    const/16 v1, 0x27

    aput-object v42, v0, v1

    const/16 v1, 0x28

    aput-object v43, v0, v1

    const/16 v1, 0x29

    aput-object v44, v0, v1

    const/16 v1, 0x2a

    aput-object v45, v0, v1

    const/16 v1, 0x2b

    aput-object v46, v0, v1

    const/16 v1, 0x2c

    aput-object v7, v0, v1

    .line 46
    sput-object v0, Lh8/m;->B:[Lx8/a;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/d;Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lb9/d;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    .line 2
    const-class p2, Ljava/sql/Date;

    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/config/d;->getTypeConverterForClass(Ljava/lang/Class;)Ls8/g;

    move-result-object p1

    check-cast p1, Ls8/f;

    iput-object p1, p0, Lh8/m;->f:Ls8/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lc9/f;)Z
    .locals 5

    .line 1
    check-cast p1, Lh8/l;

    .line 2
    iget v0, p1, Lh8/l;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    new-array v0, v2, [Lx8/a;

    .line 3
    invoke-static {v0}, Li4/d;->F([Lx8/a;)Lw8/o;

    move-result-object v0

    const-class v3, Lh8/l;

    .line 4
    new-instance v4, Lw8/g;

    invoke-direct {v4, v0, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v0, v1, [Lw8/n;

    .line 5
    invoke-virtual {p0, p1}, Lh8/m;->u(Lh8/l;)Lw8/l;

    move-result-object p1

    aput-object p1, v0, v2

    .line 6
    new-instance p1, Lw8/r;

    invoke-direct {p1, v4, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 7
    invoke-virtual {p1, p2}, Lw8/d;->g(Lc9/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lh8/l;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lh8/l;

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lw8/l;
    .locals 0

    .line 1
    check-cast p1, Lh8/l;

    invoke-virtual {p0, p1}, Lh8/m;->u(Lh8/l;)Lw8/l;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc9/g;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Lh8/l;

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lh8/l;->b:I

    const-string v0, "number"

    .line 3
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/l;->c:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "receiver_result"

    .line 4
    invoke-virtual {p1, v1, v0}, Lc9/g;->l(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p2, Lh8/l;->d:Ljava/lang/Integer;

    const-string v1, "receiver_date"

    .line 5
    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    iget-object v3, p0, Lh8/m;->f:Ls8/f;

    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ls8/f;->c(Ljava/lang/Long;)Ljava/sql/Date;

    move-result-object v1

    iput-object v1, p2, Lh8/l;->e:Ljava/sql/Date;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lh8/m;->f:Ls8/f;

    invoke-virtual {v1, v0}, Ls8/f;->c(Ljava/lang/Long;)Ljava/sql/Date;

    move-result-object v1

    iput-object v1, p2, Lh8/l;->e:Ljava/sql/Date;

    :goto_0
    const-string v1, "receiver_simno"

    .line 9
    invoke-virtual {p1, v1, v0}, Lc9/g;->l(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p2, Lh8/l;->f:Ljava/lang/Integer;

    const-string v1, "call_log_id"

    .line 10
    invoke-virtual {p1, v1, v0}, Lc9/g;->l(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p2, Lh8/l;->g:Ljava/lang/Integer;

    const-string v1, "call_log_name"

    .line 11
    invoke-virtual {p1, v1}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lh8/l;->h:Ljava/lang/String;

    const-string v1, "call_log_date"

    .line 12
    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 13
    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 14
    iget-object v3, p0, Lh8/m;->f:Ls8/f;

    invoke-virtual {p1, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ls8/f;->c(Ljava/lang/Long;)Ljava/sql/Date;

    move-result-object v1

    iput-object v1, p2, Lh8/l;->i:Ljava/sql/Date;

    goto :goto_1

    .line 15
    :cond_1
    iget-object v1, p0, Lh8/m;->f:Ls8/f;

    invoke-virtual {v1, v0}, Ls8/f;->c(Ljava/lang/Long;)Ljava/sql/Date;

    move-result-object v1

    iput-object v1, p2, Lh8/l;->i:Ljava/sql/Date;

    :goto_1
    const-string v1, "call_log_type"

    .line 16
    invoke-virtual {p1, v1, v0}, Lc9/g;->l(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p2, Lh8/l;->j:Ljava/lang/Integer;

    const-string v1, "call_log_duration"

    .line 17
    invoke-virtual {p1, v1, v0}, Lc9/g;->l(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lh8/l;->k:Ljava/lang/Integer;

    const-string v0, "call_log_country_iso"

    .line 18
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/l;->l:Ljava/lang/String;

    const-string v0, "set_need_delete"

    .line 19
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_2

    .line 20
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 21
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->m:Z

    goto :goto_2

    .line 22
    :cond_2
    iput-boolean v1, p2, Lh8/l;->m:Z

    :goto_2
    const-string v0, "set_use_db"

    .line 23
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 24
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 25
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->n:Z

    goto :goto_3

    .line 26
    :cond_3
    iput-boolean v1, p2, Lh8/l;->n:Z

    :goto_3
    const-string v0, "set_use_bl"

    .line 27
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 28
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 29
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->o:Z

    goto :goto_4

    .line 30
    :cond_4
    iput-boolean v1, p2, Lh8/l;->o:Z

    :goto_4
    const-string v0, "set_use_wl"

    .line 31
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 32
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 33
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->p:Z

    goto :goto_5

    .line 34
    :cond_5
    iput-boolean v1, p2, Lh8/l;->p:Z

    :goto_5
    const-string v0, "set_use_foreign"

    .line 35
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_6

    .line 36
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 37
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->q:Z

    goto :goto_6

    .line 38
    :cond_6
    iput-boolean v1, p2, Lh8/l;->q:Z

    :goto_6
    const-string v0, "set_use_contacts"

    .line 39
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 40
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 41
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->r:Z

    goto :goto_7

    .line 42
    :cond_7
    iput-boolean v1, p2, Lh8/l;->r:Z

    :goto_7
    const-string v0, "set_use_hidden"

    .line 43
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_8

    .line 44
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 45
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->s:Z

    goto :goto_8

    .line 46
    :cond_8
    iput-boolean v1, p2, Lh8/l;->s:Z

    :goto_8
    const-string v0, "set_foreground_service"

    .line 47
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_9

    .line 48
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 49
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->t:Z

    goto :goto_9

    .line 50
    :cond_9
    iput-boolean v1, p2, Lh8/l;->t:Z

    :goto_9
    const-string v0, "set_pick_up"

    .line 51
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_a

    .line 52
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 53
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->u:Z

    goto :goto_a

    .line 54
    :cond_a
    iput-boolean v1, p2, Lh8/l;->u:Z

    :goto_a
    const-string v0, "image_uri"

    .line 55
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/l;->v:Ljava/lang/String;

    const-string v0, "call_check_time"

    .line 56
    invoke-virtual {p1, v0}, Lc9/g;->o(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p2, Lh8/l;->w:J

    const-string v0, "call_memory_check"

    .line 57
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_b

    .line 58
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 59
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->x:Z

    goto :goto_b

    .line 60
    :cond_b
    iput-boolean v1, p2, Lh8/l;->x:Z

    :goto_b
    const-string v0, "debug"

    .line 61
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/l;->y:Ljava/lang/String;

    const-string v0, "last_db_check"

    .line 62
    invoke-virtual {p1, v0}, Lc9/g;->o(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p2, Lh8/l;->z:J

    const-string v0, "invisible"

    .line 63
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lh8/l;->A:I

    const-string v0, "set_block_all_except_contacts"

    .line 64
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_c

    .line 65
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 66
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->B:Z

    goto :goto_c

    .line 67
    :cond_c
    iput-boolean v1, p2, Lh8/l;->B:Z

    :goto_c
    const-string v0, "set_silence_ringer"

    .line 68
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_d

    .line 69
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 70
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->C:Z

    goto :goto_d

    .line 71
    :cond_d
    iput-boolean v1, p2, Lh8/l;->C:Z

    :goto_d
    const-string v0, "endcall_result"

    .line 72
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/l;->D:Ljava/lang/String;

    const-string v0, "appvc"

    .line 73
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lh8/l;->E:I

    const-string v0, "set_block_all_except_whitelist"

    .line 74
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_e

    .line 75
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 76
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->F:Z

    goto :goto_e

    .line 77
    :cond_e
    iput-boolean v1, p2, Lh8/l;->F:Z

    :goto_e
    const-string v0, "preset"

    .line 78
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lh8/l;->G:I

    const-string v0, "set_use_calendar"

    .line 79
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_f

    .line 80
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 81
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->H:Z

    goto :goto_f

    .line 82
    :cond_f
    iput-boolean v1, p2, Lh8/l;->H:Z

    :goto_f
    const-string v0, "calendar"

    .line 83
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/l;->I:Ljava/lang/String;

    const-string v0, "set_use_sim1"

    .line 84
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_10

    .line 85
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_10

    .line 86
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->J:Z

    goto :goto_10

    .line 87
    :cond_10
    iput-boolean v1, p2, Lh8/l;->J:Z

    :goto_10
    const-string v0, "set_use_sim2"

    .line 88
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_11

    .line 89
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 90
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->K:Z

    goto :goto_11

    .line 91
    :cond_11
    iput-boolean v1, p2, Lh8/l;->K:Z

    :goto_11
    const-string v0, "blockmethod"

    .line 92
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lh8/l;->L:I

    const-string v0, "dnd"

    .line 93
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_12

    .line 94
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_12

    .line 95
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->M:Z

    goto :goto_12

    .line 96
    :cond_12
    iput-boolean v1, p2, Lh8/l;->M:Z

    :goto_12
    const-string v0, "system_vibrate"

    .line 97
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_13

    .line 98
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 99
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->N:Z

    goto :goto_13

    .line 100
    :cond_13
    iput-boolean v1, p2, Lh8/l;->N:Z

    :goto_13
    const-string v0, "set_second_call"

    .line 101
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_14

    .line 102
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 103
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->O:Z

    goto :goto_14

    .line 104
    :cond_14
    iput-boolean v1, p2, Lh8/l;->O:Z

    :goto_14
    const-string v0, "feedbackName"

    .line 105
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/l;->P:Ljava/lang/String;

    const-string v0, "realCallLogName"

    .line 106
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/l;->Q:Ljava/lang/String;

    const-string v0, "isDefaultPhoneApp"

    .line 107
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_15

    .line 108
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 109
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->R:Z

    goto :goto_15

    .line 110
    :cond_15
    iput-boolean v1, p2, Lh8/l;->R:Z

    :goto_15
    const-string v0, "defaultPhoneAppOption"

    .line 111
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_16

    .line 112
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 113
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result v0

    iput-boolean v0, p2, Lh8/l;->S:Z

    goto :goto_16

    .line 114
    :cond_16
    iput-boolean v1, p2, Lh8/l;->S:Z

    :goto_16
    const-string v0, "feedbackChecked"

    .line 115
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_17

    .line 116
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 117
    invoke-virtual {p1, v0}, Lc9/g;->d(I)Z

    move-result p1

    iput-boolean p1, p2, Lh8/l;->T:Z

    goto :goto_17

    .line 118
    :cond_17
    iput-boolean v1, p2, Lh8/l;->T:Z

    :goto_17
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lh8/l;

    invoke-direct {v0}, Lh8/l;-><init>()V

    return-object v0
.end method

.method public bridge synthetic f(Landroid/support/v4/media/a;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lh8/l;

    invoke-virtual {p0, p1, p2, p3}, Lh8/m;->t(Landroid/support/v4/media/a;Lh8/l;I)V

    return-void
.end method

.method public g(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lh8/l;

    .line 2
    iget v0, p2, Lh8/l;->b:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 3
    invoke-virtual {p0, p1, p2, v2}, Lh8/m;->t(Landroid/support/v4/media/a;Lh8/l;I)V

    return-void
.end method

.method public h(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p2, Lh8/l;

    .line 2
    iget v0, p2, Lh8/l;->b:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 3
    iget-object v0, p2, Lh8/l;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 4
    iget-object v0, p2, Lh8/l;->d:Ljava/lang/Integer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    .line 5
    iget-object v0, p2, Lh8/l;->e:Ljava/sql/Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lh8/m;->f:Ls8/f;

    invoke-virtual {v2, v0}, Ls8/f;->b(Ljava/sql/Date;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x4

    .line 6
    invoke-virtual {p1, v2, v0}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    const/4 v0, 0x5

    .line 7
    iget-object v2, p2, Lh8/l;->f:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    const/4 v0, 0x6

    .line 8
    iget-object v2, p2, Lh8/l;->g:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    const/4 v0, 0x7

    .line 9
    iget-object v2, p2, Lh8/l;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 10
    iget-object v0, p2, Lh8/l;->i:Ljava/sql/Date;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lh8/m;->f:Ls8/f;

    invoke-virtual {v1, v0}, Ls8/f;->b(Ljava/sql/Date;)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    const/16 v0, 0x8

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    const/16 v0, 0x9

    .line 12
    iget-object v1, p2, Lh8/l;->j:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    const/16 v0, 0xa

    .line 13
    iget-object v1, p2, Lh8/l;->k:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    const/16 v0, 0xb

    .line 14
    iget-object v1, p2, Lh8/l;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0xc

    .line 15
    iget-boolean v1, p2, Lh8/l;->m:Z

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_2

    move-wide v6, v2

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0xd

    .line 16
    iget-boolean v1, p2, Lh8/l;->n:Z

    if-eqz v1, :cond_3

    move-wide v6, v2

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0xe

    .line 17
    iget-boolean v1, p2, Lh8/l;->o:Z

    if-eqz v1, :cond_4

    move-wide v6, v2

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0xf

    .line 18
    iget-boolean v1, p2, Lh8/l;->p:Z

    if-eqz v1, :cond_5

    move-wide v6, v2

    goto :goto_4

    :cond_5
    move-wide v6, v4

    :goto_4
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x10

    .line 19
    iget-boolean v1, p2, Lh8/l;->q:Z

    if-eqz v1, :cond_6

    move-wide v6, v2

    goto :goto_5

    :cond_6
    move-wide v6, v4

    :goto_5
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x11

    .line 20
    iget-boolean v1, p2, Lh8/l;->r:Z

    if-eqz v1, :cond_7

    move-wide v6, v2

    goto :goto_6

    :cond_7
    move-wide v6, v4

    :goto_6
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x12

    .line 21
    iget-boolean v1, p2, Lh8/l;->s:Z

    if-eqz v1, :cond_8

    move-wide v6, v2

    goto :goto_7

    :cond_8
    move-wide v6, v4

    :goto_7
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x13

    .line 22
    iget-boolean v1, p2, Lh8/l;->t:Z

    if-eqz v1, :cond_9

    move-wide v6, v2

    goto :goto_8

    :cond_9
    move-wide v6, v4

    :goto_8
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x14

    .line 23
    iget-boolean v1, p2, Lh8/l;->u:Z

    if-eqz v1, :cond_a

    move-wide v6, v2

    goto :goto_9

    :cond_a
    move-wide v6, v4

    :goto_9
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x15

    .line 24
    iget-object v1, p2, Lh8/l;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x16

    .line 25
    iget-wide v6, p2, Lh8/l;->w:J

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x17

    .line 26
    iget-boolean v1, p2, Lh8/l;->x:Z

    if-eqz v1, :cond_b

    move-wide v6, v2

    goto :goto_a

    :cond_b
    move-wide v6, v4

    :goto_a
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x18

    .line 27
    iget-object v1, p2, Lh8/l;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x19

    .line 28
    iget-wide v6, p2, Lh8/l;->z:J

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x1a

    .line 29
    iget v1, p2, Lh8/l;->A:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x1b

    .line 30
    iget-boolean v1, p2, Lh8/l;->B:Z

    if-eqz v1, :cond_c

    move-wide v6, v2

    goto :goto_b

    :cond_c
    move-wide v6, v4

    :goto_b
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x1c

    .line 31
    iget-boolean v1, p2, Lh8/l;->C:Z

    if-eqz v1, :cond_d

    move-wide v6, v2

    goto :goto_c

    :cond_d
    move-wide v6, v4

    :goto_c
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x1d

    .line 32
    iget-object v1, p2, Lh8/l;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x1e

    .line 33
    iget v1, p2, Lh8/l;->E:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x1f

    .line 34
    iget-boolean v1, p2, Lh8/l;->F:Z

    if-eqz v1, :cond_e

    move-wide v6, v2

    goto :goto_d

    :cond_e
    move-wide v6, v4

    :goto_d
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x20

    .line 35
    iget v1, p2, Lh8/l;->G:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x21

    .line 36
    iget-boolean v1, p2, Lh8/l;->H:Z

    if-eqz v1, :cond_f

    move-wide v6, v2

    goto :goto_e

    :cond_f
    move-wide v6, v4

    :goto_e
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x22

    .line 37
    iget-object v1, p2, Lh8/l;->I:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x23

    .line 38
    iget-boolean v1, p2, Lh8/l;->J:Z

    if-eqz v1, :cond_10

    move-wide v6, v2

    goto :goto_f

    :cond_10
    move-wide v6, v4

    :goto_f
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x24

    .line 39
    iget-boolean v1, p2, Lh8/l;->K:Z

    if-eqz v1, :cond_11

    move-wide v6, v2

    goto :goto_10

    :cond_11
    move-wide v6, v4

    :goto_10
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x25

    .line 40
    iget v1, p2, Lh8/l;->L:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x26

    .line 41
    iget-boolean v1, p2, Lh8/l;->M:Z

    if-eqz v1, :cond_12

    move-wide v6, v2

    goto :goto_11

    :cond_12
    move-wide v6, v4

    :goto_11
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x27

    .line 42
    iget-boolean v1, p2, Lh8/l;->N:Z

    if-eqz v1, :cond_13

    move-wide v6, v2

    goto :goto_12

    :cond_13
    move-wide v6, v4

    :goto_12
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x28

    .line 43
    iget-boolean v1, p2, Lh8/l;->O:Z

    if-eqz v1, :cond_14

    move-wide v6, v2

    goto :goto_13

    :cond_14
    move-wide v6, v4

    :goto_13
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x29

    .line 44
    iget-object v1, p2, Lh8/l;->P:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x2a

    .line 45
    iget-object v1, p2, Lh8/l;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    const/16 v0, 0x2b

    .line 46
    iget-boolean v1, p2, Lh8/l;->R:Z

    if-eqz v1, :cond_15

    move-wide v6, v2

    goto :goto_14

    :cond_15
    move-wide v6, v4

    :goto_14
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x2c

    .line 47
    iget-boolean v1, p2, Lh8/l;->S:Z

    if-eqz v1, :cond_16

    move-wide v6, v2

    goto :goto_15

    :cond_16
    move-wide v6, v4

    :goto_15
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x2d

    .line 48
    iget-boolean v1, p2, Lh8/l;->T:Z

    if-eqz v1, :cond_17

    goto :goto_16

    :cond_17
    move-wide v2, v4

    :goto_16
    invoke-virtual {p1, v0, v2, v3}, Landroid/support/v4/media/a;->g(IJ)V

    const/16 v0, 0x2e

    .line 49
    iget p2, p2, Lh8/l;->b:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/media/a;->g(IJ)V

    return-void
.end method

.method public final i()La9/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La9/b<",
            "Lh8/l;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, La9/a;

    invoke-direct {v0}, La9/a;-><init>()V

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 0

    .line 1
    check-cast p1, Lh8/l;

    .line 2
    iget p1, p1, Lh8/l;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `Logs`(`id`,`number`,`receiver_result`,`receiver_date`,`receiver_simno`,`call_log_id`,`call_log_name`,`call_log_date`,`call_log_type`,`call_log_duration`,`call_log_country_iso`,`set_need_delete`,`set_use_db`,`set_use_bl`,`set_use_wl`,`set_use_foreign`,`set_use_contacts`,`set_use_hidden`,`set_foreground_service`,`set_pick_up`,`image_uri`,`call_check_time`,`call_memory_check`,`debug`,`last_db_check`,`invisible`,`set_block_all_except_contacts`,`set_silence_ringer`,`endcall_result`,`appvc`,`set_block_all_except_whitelist`,`preset`,`set_use_calendar`,`calendar`,`set_use_sim1`,`set_use_sim2`,`blockmethod`,`dnd`,`system_vibrate`,`set_second_call`,`feedbackName`,`realCallLogName`,`isDefaultPhoneApp`,`defaultPhoneAppOption`,`feedbackChecked`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Logs`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `number` TEXT, `receiver_result` INTEGER, `receiver_date` INTEGER, `receiver_simno` INTEGER, `call_log_id` INTEGER, `call_log_name` TEXT, `call_log_date` INTEGER, `call_log_type` INTEGER, `call_log_duration` INTEGER, `call_log_country_iso` TEXT, `set_need_delete` INTEGER, `set_use_db` INTEGER, `set_use_bl` INTEGER, `set_use_wl` INTEGER, `set_use_foreign` INTEGER, `set_use_contacts` INTEGER, `set_use_hidden` INTEGER, `set_foreground_service` INTEGER, `set_pick_up` INTEGER, `image_uri` TEXT, `call_check_time` INTEGER, `call_memory_check` INTEGER, `debug` TEXT, `last_db_check` INTEGER, `invisible` INTEGER, `set_block_all_except_contacts` INTEGER, `set_silence_ringer` INTEGER, `endcall_result` TEXT, `appvc` INTEGER, `set_block_all_except_whitelist` INTEGER, `preset` INTEGER, `set_use_calendar` INTEGER, `calendar` TEXT, `set_use_sim1` INTEGER, `set_use_sim2` INTEGER, `blockmethod` INTEGER, `dnd` INTEGER, `system_vibrate` INTEGER, `set_second_call` INTEGER, `feedbackName` TEXT, `realCallLogName` TEXT, `isDefaultPhoneApp` INTEGER, `defaultPhoneAppOption` INTEGER, `feedbackChecked` INTEGER)"

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `Logs`(`number`,`receiver_result`,`receiver_date`,`receiver_simno`,`call_log_id`,`call_log_name`,`call_log_date`,`call_log_type`,`call_log_duration`,`call_log_country_iso`,`set_need_delete`,`set_use_db`,`set_use_bl`,`set_use_wl`,`set_use_foreign`,`set_use_contacts`,`set_use_hidden`,`set_foreground_service`,`set_pick_up`,`image_uri`,`call_check_time`,`call_memory_check`,`debug`,`last_db_check`,`invisible`,`set_block_all_except_contacts`,`set_silence_ringer`,`endcall_result`,`appvc`,`set_block_all_except_whitelist`,`preset`,`set_use_calendar`,`calendar`,`set_use_sim1`,`set_use_sim2`,`blockmethod`,`dnd`,`system_vibrate`,`set_second_call`,`feedbackName`,`realCallLogName`,`isDefaultPhoneApp`,`defaultPhoneAppOption`,`feedbackChecked`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    const-string v0, "`Logs`"

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `Logs` SET `id`=?,`number`=?,`receiver_result`=?,`receiver_date`=?,`receiver_simno`=?,`call_log_id`=?,`call_log_name`=?,`call_log_date`=?,`call_log_type`=?,`call_log_duration`=?,`call_log_country_iso`=?,`set_need_delete`=?,`set_use_db`=?,`set_use_bl`=?,`set_use_wl`=?,`set_use_foreign`=?,`set_use_contacts`=?,`set_use_hidden`=?,`set_foreground_service`=?,`set_pick_up`=?,`image_uri`=?,`call_check_time`=?,`call_memory_check`=?,`debug`=?,`last_db_check`=?,`invisible`=?,`set_block_all_except_contacts`=?,`set_silence_ringer`=?,`endcall_result`=?,`appvc`=?,`set_block_all_except_whitelist`=?,`preset`=?,`set_use_calendar`=?,`calendar`=?,`set_use_sim1`=?,`set_use_sim2`=?,`blockmethod`=?,`dnd`=?,`system_vibrate`=?,`set_second_call`=?,`feedbackName`=?,`realCallLogName`=?,`isDefaultPhoneApp`=?,`defaultPhoneAppOption`=?,`feedbackChecked`=? WHERE `id`=?"

    return-object v0
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 0

    .line 1
    check-cast p1, Lh8/l;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iput p2, p1, Lh8/l;->b:I

    return-void
.end method

.method public final t(Landroid/support/v4/media/a;Lh8/l;I)V
    .locals 8

    add-int/lit8 v0, p3, 0x1

    .line 1
    iget-object v1, p2, Lh8/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 2
    iget-object v1, p2, Lh8/l;->d:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    .line 3
    iget-object v0, p2, Lh8/l;->e:Ljava/sql/Date;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lh8/m;->f:Ls8/f;

    invoke-virtual {v2, v0}, Ls8/f;->b(Ljava/sql/Date;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    add-int/lit8 v2, p3, 0x3

    .line 4
    invoke-virtual {p1, v2, v0}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    add-int/lit8 v0, p3, 0x4

    .line 5
    iget-object v2, p2, Lh8/l;->f:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    add-int/lit8 v0, p3, 0x5

    .line 6
    iget-object v2, p2, Lh8/l;->g:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    add-int/lit8 v0, p3, 0x6

    .line 7
    iget-object v2, p2, Lh8/l;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 8
    iget-object v0, p2, Lh8/l;->i:Ljava/sql/Date;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lh8/m;->f:Ls8/f;

    invoke-virtual {v1, v0}, Ls8/f;->b(Ljava/sql/Date;)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    add-int/lit8 v0, p3, 0x7

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    add-int/lit8 v0, p3, 0x8

    .line 10
    iget-object v1, p2, Lh8/l;->j:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    add-int/lit8 v0, p3, 0x9

    .line 11
    iget-object v1, p2, Lh8/l;->k:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    add-int/lit8 v0, p3, 0xa

    .line 12
    iget-object v1, p2, Lh8/l;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    .line 13
    iget-boolean v1, p2, Lh8/l;->m:Z

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_2

    move-wide v6, v2

    goto :goto_1

    :cond_2
    move-wide v6, v4

    :goto_1
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0xc

    .line 14
    iget-boolean v1, p2, Lh8/l;->n:Z

    if-eqz v1, :cond_3

    move-wide v6, v2

    goto :goto_2

    :cond_3
    move-wide v6, v4

    :goto_2
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0xd

    .line 15
    iget-boolean v1, p2, Lh8/l;->o:Z

    if-eqz v1, :cond_4

    move-wide v6, v2

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0xe

    .line 16
    iget-boolean v1, p2, Lh8/l;->p:Z

    if-eqz v1, :cond_5

    move-wide v6, v2

    goto :goto_4

    :cond_5
    move-wide v6, v4

    :goto_4
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0xf

    .line 17
    iget-boolean v1, p2, Lh8/l;->q:Z

    if-eqz v1, :cond_6

    move-wide v6, v2

    goto :goto_5

    :cond_6
    move-wide v6, v4

    :goto_5
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x10

    .line 18
    iget-boolean v1, p2, Lh8/l;->r:Z

    if-eqz v1, :cond_7

    move-wide v6, v2

    goto :goto_6

    :cond_7
    move-wide v6, v4

    :goto_6
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x11

    .line 19
    iget-boolean v1, p2, Lh8/l;->s:Z

    if-eqz v1, :cond_8

    move-wide v6, v2

    goto :goto_7

    :cond_8
    move-wide v6, v4

    :goto_7
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x12

    .line 20
    iget-boolean v1, p2, Lh8/l;->t:Z

    if-eqz v1, :cond_9

    move-wide v6, v2

    goto :goto_8

    :cond_9
    move-wide v6, v4

    :goto_8
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x13

    .line 21
    iget-boolean v1, p2, Lh8/l;->u:Z

    if-eqz v1, :cond_a

    move-wide v6, v2

    goto :goto_9

    :cond_a
    move-wide v6, v4

    :goto_9
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x14

    .line 22
    iget-object v1, p2, Lh8/l;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x15

    .line 23
    iget-wide v6, p2, Lh8/l;->w:J

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x16

    .line 24
    iget-boolean v1, p2, Lh8/l;->x:Z

    if-eqz v1, :cond_b

    move-wide v6, v2

    goto :goto_a

    :cond_b
    move-wide v6, v4

    :goto_a
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x17

    .line 25
    iget-object v1, p2, Lh8/l;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x18

    .line 26
    iget-wide v6, p2, Lh8/l;->z:J

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x19

    .line 27
    iget v1, p2, Lh8/l;->A:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x1a

    .line 28
    iget-boolean v1, p2, Lh8/l;->B:Z

    if-eqz v1, :cond_c

    move-wide v6, v2

    goto :goto_b

    :cond_c
    move-wide v6, v4

    :goto_b
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x1b

    .line 29
    iget-boolean v1, p2, Lh8/l;->C:Z

    if-eqz v1, :cond_d

    move-wide v6, v2

    goto :goto_c

    :cond_d
    move-wide v6, v4

    :goto_c
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x1c

    .line 30
    iget-object v1, p2, Lh8/l;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x1d

    .line 31
    iget v1, p2, Lh8/l;->E:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x1e

    .line 32
    iget-boolean v1, p2, Lh8/l;->F:Z

    if-eqz v1, :cond_e

    move-wide v6, v2

    goto :goto_d

    :cond_e
    move-wide v6, v4

    :goto_d
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x1f

    .line 33
    iget v1, p2, Lh8/l;->G:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x20

    .line 34
    iget-boolean v1, p2, Lh8/l;->H:Z

    if-eqz v1, :cond_f

    move-wide v6, v2

    goto :goto_e

    :cond_f
    move-wide v6, v4

    :goto_e
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x21

    .line 35
    iget-object v1, p2, Lh8/l;->I:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x22

    .line 36
    iget-boolean v1, p2, Lh8/l;->J:Z

    if-eqz v1, :cond_10

    move-wide v6, v2

    goto :goto_f

    :cond_10
    move-wide v6, v4

    :goto_f
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x23

    .line 37
    iget-boolean v1, p2, Lh8/l;->K:Z

    if-eqz v1, :cond_11

    move-wide v6, v2

    goto :goto_10

    :cond_11
    move-wide v6, v4

    :goto_10
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x24

    .line 38
    iget v1, p2, Lh8/l;->L:I

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x25

    .line 39
    iget-boolean v1, p2, Lh8/l;->M:Z

    if-eqz v1, :cond_12

    move-wide v6, v2

    goto :goto_11

    :cond_12
    move-wide v6, v4

    :goto_11
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x26

    .line 40
    iget-boolean v1, p2, Lh8/l;->N:Z

    if-eqz v1, :cond_13

    move-wide v6, v2

    goto :goto_12

    :cond_13
    move-wide v6, v4

    :goto_12
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x27

    .line 41
    iget-boolean v1, p2, Lh8/l;->O:Z

    if-eqz v1, :cond_14

    move-wide v6, v2

    goto :goto_13

    :cond_14
    move-wide v6, v4

    :goto_13
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x28

    .line 42
    iget-object v1, p2, Lh8/l;->P:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x29

    .line 43
    iget-object v1, p2, Lh8/l;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2a

    .line 44
    iget-boolean v1, p2, Lh8/l;->R:Z

    if-eqz v1, :cond_15

    move-wide v6, v2

    goto :goto_14

    :cond_15
    move-wide v6, v4

    :goto_14
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 v0, p3, 0x2b

    .line 45
    iget-boolean v1, p2, Lh8/l;->S:Z

    if-eqz v1, :cond_16

    move-wide v6, v2

    goto :goto_15

    :cond_16
    move-wide v6, v4

    :goto_15
    invoke-virtual {p1, v0, v6, v7}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 p3, p3, 0x2c

    .line 46
    iget-boolean p2, p2, Lh8/l;->T:Z

    if-eqz p2, :cond_17

    goto :goto_16

    :cond_17
    move-wide v2, v4

    :goto_16
    invoke-virtual {p1, p3, v2, v3}, Landroid/support/v4/media/a;->g(IJ)V

    return-void
.end method

.method public final u(Lh8/l;)Lw8/l;
    .locals 2

    .line 1
    new-instance v0, Lw8/l;

    invoke-direct {v0}, Lw8/l;-><init>()V

    .line 2
    sget-object v1, Lh8/m;->g:Lx8/b;

    iget p1, p1, Lh8/l;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    const-string v1, "AND"

    .line 3
    invoke-virtual {v0, v1, p1}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    return-object v0
.end method
