.class public Lcom/google/android/mms/c/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/google/android/mms/c/p;

.field private static final e:Lcom/google/android/mms/e/d;

.field private static final f:[I

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/mms/c/p;->f:[I

    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const-string v4, "msg_box"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "thread_id"

    const/4 v6, 0x2

    aput-object v4, v1, v6

    const/4 v4, 0x3

    const-string v7, "retr_txt"

    aput-object v7, v1, v4

    const-string v8, "sub"

    aput-object v8, v1, v0

    const/4 v9, 0x5

    const-string v10, "ct_l"

    aput-object v10, v1, v9

    const/4 v11, 0x6

    const-string v12, "ct_t"

    aput-object v12, v1, v11

    const/4 v13, 0x7

    const-string v14, "m_cls"

    aput-object v14, v1, v13

    const/16 v15, 0x8

    const-string v13, "m_id"

    aput-object v13, v1, v15

    const/16 v15, 0x9

    const-string v11, "resp_txt"

    aput-object v11, v1, v15

    const/16 v16, 0xa

    const-string v9, "tr_id"

    aput-object v9, v1, v16

    const/16 v17, 0xb

    const-string v18, "ct_cls"

    aput-object v18, v1, v17

    const/16 v17, 0xc

    const-string v18, "d_rpt"

    aput-object v18, v1, v17

    const/16 v17, 0xd

    const-string v18, "m_type"

    aput-object v18, v1, v17

    const/16 v17, 0xe

    const-string v18, "v"

    aput-object v18, v1, v17

    const/16 v17, 0xf

    const-string v18, "pri"

    aput-object v18, v1, v17

    const/16 v17, 0x10

    const-string v18, "rr"

    aput-object v18, v1, v17

    const/16 v17, 0x11

    const-string v18, "read_status"

    aput-object v18, v1, v17

    const/16 v17, 0x12

    const-string v18, "rpt_a"

    aput-object v18, v1, v17

    const/16 v17, 0x13

    const-string v18, "retr_st"

    aput-object v18, v1, v17

    const/16 v17, 0x14

    const-string v18, "st"

    aput-object v18, v1, v17

    const/16 v17, 0x15

    const-string v18, "date"

    aput-object v18, v1, v17

    const/16 v17, 0x16

    const-string v18, "d_tm"

    aput-object v18, v1, v17

    const/16 v17, 0x17

    const-string v18, "exp"

    aput-object v18, v1, v17

    const/16 v17, 0x18

    const-string v18, "m_size"

    aput-object v18, v1, v17

    const/16 v17, 0x19

    const-string v18, "sub_cs"

    aput-object v18, v1, v17

    const/16 v17, 0x1a

    const-string v18, "retr_txt_cs"

    aput-object v18, v1, v17

    sput-object v1, Lcom/google/android/mms/c/p;->g:[Ljava/lang/String;

    new-array v1, v15, [Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "chset"

    aput-object v2, v1, v5

    const-string v2, "cd"

    aput-object v2, v1, v6

    const-string v2, "cid"

    aput-object v2, v1, v4

    const-string v2, "cl"

    aput-object v2, v1, v0

    const-string v2, "ct"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "fn"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "name"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "text"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sput-object v1, Lcom/google/android/mms/c/p;->h:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/c/p;->i:Ljava/util/HashMap;

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/c/p;->j:Ljava/util/HashMap;

    const/16 v2, 0x96

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x9a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/c/p;->o:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sub_cs"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "retr_txt_cs"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/c/p;->k:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/c/p;->p:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/c/p;->l:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/c/p;->q:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/c/p;->m:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/c/p;->r:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/c/p;->n:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/c/p;->s:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/mms/e/d;->e()Lcom/google/android/mms/e/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/c/p;->e:Lcom/google/android/mms/e/d;

    return-void

    nop

    :array_0
    .array-data 4
        0x81
        0x82
        0x89
        0x97
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/mms/c/p;->c:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v8, "_data"

    aput-object v8, v4, v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, p0

    goto :goto_2

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given Uri could not be found in media store"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given Uri scheme is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_2
    return-object v0
.end method

.method private static c(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    if-le v3, p1, :cond_1

    goto :goto_2

    :cond_1
    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    array-length v5, v4

    add-int/2addr v3, v5

    if-le v3, p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {p0, v2, v6}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v2

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/database/Cursor;I)[B
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/mms/c/p;->e(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "PduPersister"

    const-string v1, "ISO_8859_1 must be supported!"

    invoke-static {v0, v1, p0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private f(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static g(Lcom/google/android/mms/c/o;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/mms/c/o;->g()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/c/o;->g()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h(Landroid/content/Context;)Lcom/google/android/mms/c/p;
    .locals 1

    sget-object v0, Lcom/google/android/mms/c/p;->d:Lcom/google/android/mms/c/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/mms/c/p;

    invoke-direct {v0, p0}, Lcom/google/android/mms/c/p;-><init>(Landroid/content/Context;)V

    :goto_0
    sput-object v0, Lcom/google/android/mms/c/p;->d:Lcom/google/android/mms/c/p;

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/mms/c/p;->d:Lcom/google/android/mms/c/p;

    invoke-virtual {v0}, Lcom/google/android/mms/c/p;->s()V

    new-instance v0, Lcom/google/android/mms/c/p;

    invoke-direct {v0, p0}, Lcom/google/android/mms/c/p;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p0, Lcom/google/android/mms/c/p;->d:Lcom/google/android/mms/c/p;

    return-object p0
.end method

.method private k(JLcom/google/android/mms/c/m;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/addr"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 p1, 0x3

    new-array v3, p1, [Ljava/lang/String;

    const-string p1, "address"

    const/4 p2, 0x0

    aput-object p1, v3, p2

    const-string p1, "charset"

    const/4 v7, 0x1

    aput-object p1, v3, v7

    const-string p1, "type"

    const/4 v8, 0x2

    aput-object p1, v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/e/f;->e(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x81

    if-eq v1, v2, :cond_2

    const/16 v2, 0x82

    if-eq v1, v2, :cond_2

    const/16 v2, 0x89

    if-eq v1, v2, :cond_1

    const/16 v2, 0x97

    if-eq v1, v2, :cond_2

    const-string v0, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown address type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/d/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/mms/c/e;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v0}, Lcom/google/android/mms/c/p;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/c/e;-><init>(I[B)V

    invoke-virtual {p3, v2, v1}, Lcom/google/android/mms/c/m;->g(Lcom/google/android/mms/c/e;I)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/google/android/mms/c/e;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v0}, Lcom/google/android/mms/c/p;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/c/e;-><init>(I[B)V

    invoke-virtual {p3, v2, v1}, Lcom/google/android/mms/c/m;->a(Lcom/google/android/mms/c/e;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_4
    :goto_1
    return-void
.end method

.method private l(J)[Lcom/google/android/mms/c/o;
    .locals 11

    const-string v0, "Failed to close stream"

    const-string v1, "PduPersister"

    iget-object v2, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/part"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/google/android/mms/c/p;->h:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/e/f;->e(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/mms/c/o;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Lcom/google/android/mms/c/o;

    invoke-direct {v5}, Lcom/google/android/mms/c/o;-><init>()V

    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Lcom/google/android/mms/c/p;->f(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/mms/c/o;->m(I)V

    :cond_1
    const/4 v6, 0x2

    invoke-direct {p0, p1, v6}, Lcom/google/android/mms/c/p;->d(Landroid/database/Cursor;I)[B

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Lcom/google/android/mms/c/o;->n([B)V

    :cond_2
    const/4 v6, 0x3

    invoke-direct {p0, p1, v6}, Lcom/google/android/mms/c/p;->d(Landroid/database/Cursor;I)[B

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v6}, Lcom/google/android/mms/c/o;->o([B)V

    :cond_3
    const/4 v6, 0x4

    invoke-direct {p0, p1, v6}, Lcom/google/android/mms/c/p;->d(Landroid/database/Cursor;I)[B

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v6}, Lcom/google/android/mms/c/o;->p([B)V

    :cond_4
    const/4 v6, 0x5

    invoke-direct {p0, p1, v6}, Lcom/google/android/mms/c/p;->d(Landroid/database/Cursor;I)[B

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v5, v6}, Lcom/google/android/mms/c/o;->r([B)V

    const/4 v7, 0x6

    invoke-direct {p0, p1, v7}, Lcom/google/android/mms/c/p;->d(Landroid/database/Cursor;I)[B

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v5, v7}, Lcom/google/android/mms/c/o;->u([B)V

    :cond_5
    const/4 v7, 0x7

    invoke-direct {p0, p1, v7}, Lcom/google/android/mms/c/p;->d(Landroid/database/Cursor;I)[B

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v5, v7}, Lcom/google/android/mms/c/o;->v([B)V

    :cond_6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://mms/part/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/mms/c/o;->t(Landroid/net/Uri;)V

    invoke-static {v6}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {v6}, Lcom/google/android/mms/a;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {v6}, Lcom/google/android/mms/a;->c(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v9, "text/plain"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "application/smil"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "text/html"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    :try_start_1
    iget-object v6, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v7, 0x100

    :try_start_2
    new-array v7, v7, [B

    :goto_1
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ltz v9, :cond_8

    invoke-virtual {v8, v7, v3, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_c

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catch_0
    move-exception v6

    :try_start_4
    invoke-static {v1, v0, v6}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_7

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v6, p2

    move-object p2, v2

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v6, p2

    move-object p2, v2

    :goto_2
    :try_start_5
    const-string v2, "Failed to load part data"

    invoke-static {v1, v2, p2}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, p2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    if-eqz v6, :cond_9

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catch_3
    move-exception v2

    :try_start_7
    invoke-static {v1, v0, v2}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw p2

    :cond_a
    :goto_5
    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/mms/c/e;

    if-eqz v6, :cond_b

    goto :goto_6

    :cond_b
    const-string v6, ""

    :goto_6
    invoke-direct {v7, v6}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/google/android/mms/c/e;->g()[B

    move-result-object v6

    array-length v7, v6

    invoke-virtual {v8, v6, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_c
    :goto_7
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/mms/c/o;->s([B)V

    :cond_d
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v2, v4

    move v4, v6

    goto/16 :goto_0

    :cond_e
    new-instance p2, Lcom/google/android/mms/MmsException;

    const-string v0, "Content-Type must be set."

    invoke-direct {p2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_f
    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_10
    return-object v2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_11
    throw p2

    :cond_12
    :goto_8
    if-eqz p1, :cond_13

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_13
    return-object p2
.end method

.method private m(ILjava/util/HashSet;Ljava/util/HashMap;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/google/android/mms/c/e;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/google/android/mms/c/e;

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x97

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/google/android/mms/c/p;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    array-length p4, p3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p4, :cond_5

    aget-object v1, p3, v0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/android/mms/c/e;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-static {v1, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private p(JI[Lcom/google/android/mms/c/e;)V
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {v3}, Lcom/google/android/mms/c/e;->g()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/mms/c/e;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "charset"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/addr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    invoke-static {v4, v5, v3, v0}, Lcom/google/android/mms/e/f;->c(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q(Lcom/google/android/mms/c/o;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/c/o;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "text"

    const-string v5, "content://mms/resetFilePerm/"

    const-string v6, "IOException while closing: "

    const-string v7, "PduPersister"

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/c/o;->h()[B

    move-result-object v10

    const-string v11, "text/plain"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "application/smil"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "text/html"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/google/android/mms/e/b;->a(Ljava/lang/String;)Z

    move-result v11
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v11, :cond_4

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/android/mms/c/p;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-lez v0, :cond_2

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v12, v9

    :goto_0
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t get file info for: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/c/o;->j()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v12, v9

    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/google/android/mms/e/c;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/e/c;

    move-result-object v13
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    :try_start_4
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mimetype "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " can not be converted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v2, v9

    move-object v13, v2

    goto/16 :goto_f

    :catch_2
    move-exception v0

    move-object v2, v9

    move-object v13, v2

    goto/16 :goto_c

    :catch_3
    move-exception v0

    move-object v2, v9

    move-object v13, v2

    goto/16 :goto_d

    :cond_4
    move-object v12, v9

    move-object v13, v12

    :goto_2
    iget-object v0, v1, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v0, "Error converting drm data."

    if-nez v10, :cond_d

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/c/o;->j()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_a

    if-ne v10, v2, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    move-object v9, v2

    :cond_6
    if-nez v9, :cond_7

    iget-object v2, v1, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    invoke-virtual {v2, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v9, v2

    :cond_7
    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_3
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_f

    if-nez v11, :cond_8

    invoke-virtual {v3, v2, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :cond_8
    invoke-virtual {v13, v2, v4}, Lcom/google/android/mms/e/c;->b([BI)[B

    move-result-object v4

    if-eqz v4, :cond_9

    array-length v10, v4

    invoke-virtual {v3, v4, v8, v10}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_3

    :cond_9
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    :goto_4
    const-string v0, "Can\'t find data for this part."

    invoke-static {v7, v0}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_b

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v2}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    if-eqz v13, :cond_c

    invoke-virtual {v13, v12}, Lcom/google/android/mms/e/c;->a(Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v8}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v13, v1, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v14, v1, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_c
    return-void

    :catchall_1
    move-exception v0

    move-object v2, v9

    move-object v9, v3

    goto/16 :goto_e

    :catch_5
    move-exception v0

    move-object v2, v9

    move-object v9, v3

    goto/16 :goto_c

    :catch_6
    move-exception v0

    move-object v2, v9

    move-object v9, v3

    goto/16 :goto_d

    :cond_d
    if-nez v11, :cond_e

    :try_start_7
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    :cond_e
    array-length v2, v10

    invoke-virtual {v13, v10, v2}, Lcom/google/android/mms/e/c;->b([BI)[B

    move-result-object v2

    if-eqz v2, :cond_10

    array-length v0, v2

    invoke-virtual {v3, v2, v8, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_f
    :goto_6
    move-object v2, v9

    move-object v9, v3

    goto/16 :goto_9

    :cond_10
    new-instance v2, Lcom/google/android/mms/MmsException;

    invoke-direct {v2, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v2, v9

    goto/16 :goto_f

    :catch_7
    move-exception v0

    move-object v2, v9

    goto/16 :goto_c

    :catch_8
    move-exception v0

    move-object v2, v9

    goto/16 :goto_d

    :cond_11
    :goto_7
    :try_start_8
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    if-nez v10, :cond_12

    new-instance v4, Ljava/lang/String;

    const-string v10, ""

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v10, "utf-8"

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    :cond_12
    new-instance v4, Lcom/google/android/mms/c/e;

    invoke-direct {v4, v10}, Lcom/google/android/mms/c/e;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/c/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    invoke-virtual {v11, v2, v3, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v11, 0x1

    if-eq v3, v11, :cond_15

    array-length v3, v10
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-string v10, "unable to update "

    const v12, 0x4b000

    if-le v3, v12, :cond_14

    :try_start_9
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v4, v12}, Lcom/google/android/mms/c/p;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2, v3, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v11, :cond_13

    goto :goto_8

    :cond_13
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_15
    :goto_8
    move-object v2, v9

    move-object v12, v2

    move-object v13, v12

    :goto_9
    if-eqz v9, :cond_16

    :try_start_a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_16
    :goto_a
    if-eqz v2, :cond_17

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    move-object v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v3}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_b
    if-eqz v13, :cond_18

    invoke-virtual {v13, v12}, Lcom/google/android/mms/e/c;->a(Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v8}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v13, v1, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v14, v1, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_18
    return-void

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object v2, v9

    move-object v12, v2

    move-object v13, v12

    goto :goto_f

    :catch_b
    move-exception v0

    move-object v2, v9

    move-object v12, v2

    move-object v13, v12

    :goto_c
    :try_start_c
    const-string v3, "Failed to read/write data."

    invoke-static {v7, v3, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_c
    move-exception v0

    move-object v2, v9

    move-object v12, v2

    move-object v13, v12

    :goto_d
    const-string v3, "Failed to open Input/Output stream."

    invoke-static {v7, v3, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    :goto_e
    move-object v3, v0

    :goto_f
    if-eqz v9, :cond_19

    :try_start_d
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v4}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    :goto_10
    if-eqz v2, :cond_1a

    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_11

    :catch_e
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v4}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_11
    if-eqz v13, :cond_1b

    invoke-virtual {v13, v12}, Lcom/google/android/mms/e/c;->a(Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v8}, Landroid/content/ContentValues;-><init>(I)V

    iget-object v13, v1, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v14, v1, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1b
    goto :goto_13

    :goto_12
    throw v3

    :goto_13
    goto :goto_12
.end method

.method private t(Landroid/database/Cursor;ILcom/google/android/mms/c/m;I)V
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/google/android/mms/c/p;->j:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    new-instance v0, Lcom/google/android/mms/c/e;

    invoke-static {p2}, Lcom/google/android/mms/c/p;->e(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/mms/c/e;-><init>(I[B)V

    invoke-virtual {p3, v0, p4}, Lcom/google/android/mms/c/m;->g(Lcom/google/android/mms/c/e;I)V

    :cond_0
    return-void
.end method

.method private u(Landroid/database/Cursor;ILcom/google/android/mms/c/m;I)V
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-virtual {p3, p1, p2, p4}, Lcom/google/android/mms/c/m;->h(JI)V

    :cond_0
    return-void
.end method

.method private v(Landroid/database/Cursor;ILcom/google/android/mms/c/m;I)V
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p3, p1, p4}, Lcom/google/android/mms/c/m;->i(II)V

    :cond_0
    return-void
.end method

.method private w(Landroid/database/Cursor;ILcom/google/android/mms/c/m;I)V
    .locals 0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/mms/c/p;->e(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p1, p4}, Lcom/google/android/mms/c/m;->j([BI)V

    :cond_0
    return-void
.end method

.method public static x([B)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "PduPersister"

    const-string v1, "ISO_8859_1 must be supported!"

    invoke-static {v0, v1, p0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private y(JI[Lcom/google/android/mms/c/e;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/e/f;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/c/p;->p(JI[Lcom/google/android/mms/c/e;)V

    return-void
.end method


# virtual methods
.method public i(J)Landroid/database/Cursor;
    .locals 9

    invoke-direct {p0}, Lcom/google/android/mms/c/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "PduPersister"

    const-string p2, "No read sms permissions have been granted"

    invoke-static {p1, p2}, Le/d/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "protocol"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v1

    iget-object v2, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "err_type < ? AND due_time <= ?"

    const-string v8, "due_time"

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/e/f;->e(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public j(Landroid/net/Uri;)Lcom/google/android/mms/c/f;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/android/mms/c/p;->e:Lcom/google/android/mms/e/d;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v1, p1}, Lcom/google/android/mms/e/d;->f(Landroid/net/Uri;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "PduPersister"

    const-string v4, "load: "

    invoke-static {v3, v4, v2}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    sget-object v2, Lcom/google/android/mms/c/p;->e:Lcom/google/android/mms/e/d;

    invoke-virtual {v2, p1}, Lcom/google/android/mms/e/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/e/e;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/mms/e/e;->b()Lcom/google/android/mms/c/f;

    move-result-object v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-enter v2

    :try_start_4
    invoke-virtual {v2, p1, v0}, Lcom/google/android/mms/e/d;->o(Landroid/net/Uri;Z)V

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_0
    :try_start_5
    sget-object v2, Lcom/google/android/mms/c/p;->e:Lcom/google/android/mms/e/d;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/google/android/mms/e/d;->o(Landroid/net/Uri;Z)V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v4, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    sget-object v7, Lcom/google/android/mms/c/p;->g:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/e/f;->e(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Lcom/google/android/mms/c/m;

    invoke-direct {v2}, Lcom/google/android/mms/c/m;-><init>()V

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v1, :cond_9

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v6, v3, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v8, Lcom/google/android/mms/c/p;->k:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v1, v10, v2, v9}, Lcom/google/android/mms/c/p;->t(Landroid/database/Cursor;ILcom/google/android/mms/c/m;I)V

    goto :goto_1

    :cond_1
    sget-object v8, Lcom/google/android/mms/c/p;->l:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v1, v10, v2, v9}, Lcom/google/android/mms/c/p;->w(Landroid/database/Cursor;ILcom/google/android/mms/c/m;I)V

    goto :goto_2

    :cond_2
    sget-object v8, Lcom/google/android/mms/c/p;->m:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v1, v10, v2, v9}, Lcom/google/android/mms/c/p;->v(Landroid/database/Cursor;ILcom/google/android/mms/c/m;I)V

    goto :goto_3

    :cond_3
    sget-object v8, Lcom/google/android/mms/c/p;->n:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v1, v10, v2, v9}, Lcom/google/android/mms/c/p;->u(Landroid/database/Cursor;ILcom/google/android/mms/c/m;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    const-wide/16 v8, -0x1

    cmp-long v1, v4, v8

    if-eqz v1, :cond_8

    invoke-direct {p0, v4, v5, v2}, Lcom/google/android/mms/c/p;->k(JLcom/google/android/mms/c/m;)V

    const/16 v1, 0x8c

    invoke-virtual {v2, v1}, Lcom/google/android/mms/c/m;->e(I)I

    move-result v1

    new-instance v8, Lcom/google/android/mms/c/j;

    invoke-direct {v8}, Lcom/google/android/mms/c/j;-><init>()V

    const/16 v9, 0x84

    if-eq v1, v9, :cond_6

    const/16 v9, 0x80

    if-ne v1, v9, :cond_7

    :cond_6
    invoke-direct {p0, v4, v5}, Lcom/google/android/mms/c/p;->l(J)[Lcom/google/android/mms/c/o;

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v5, v4

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v5, :cond_7

    aget-object v10, v4, v9

    invoke-virtual {v8, v10}, Lcom/google/android/mms/c/j;->b(Lcom/google/android/mms/c/o;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    packed-switch v1, :pswitch_data_0

    new-instance v2, Lcom/google/android/mms/MmsException;

    goto :goto_7

    :pswitch_0
    new-instance v1, Lcom/google/android/mms/c/r;

    invoke-direct {v1, v2}, Lcom/google/android/mms/c/r;-><init>(Lcom/google/android/mms/c/m;)V

    goto :goto_6

    :pswitch_1
    new-instance v1, Lcom/google/android/mms/c/s;

    invoke-direct {v1, v2}, Lcom/google/android/mms/c/s;-><init>(Lcom/google/android/mms/c/m;)V

    goto :goto_6

    :pswitch_2
    new-instance v1, Lcom/google/android/mms/c/d;

    invoke-direct {v1, v2}, Lcom/google/android/mms/c/d;-><init>(Lcom/google/android/mms/c/m;)V

    goto :goto_6

    :pswitch_3
    new-instance v1, Lcom/google/android/mms/c/a;

    invoke-direct {v1, v2}, Lcom/google/android/mms/c/a;-><init>(Lcom/google/android/mms/c/m;)V

    goto :goto_6

    :pswitch_4
    new-instance v1, Lcom/google/android/mms/c/t;

    invoke-direct {v1, v2, v8}, Lcom/google/android/mms/c/t;-><init>(Lcom/google/android/mms/c/m;Lcom/google/android/mms/c/j;)V

    goto :goto_6

    :pswitch_5
    new-instance v1, Lcom/google/android/mms/c/i;

    invoke-direct {v1, v2}, Lcom/google/android/mms/c/i;-><init>(Lcom/google/android/mms/c/m;)V

    goto :goto_6

    :pswitch_6
    new-instance v1, Lcom/google/android/mms/c/h;

    invoke-direct {v1, v2}, Lcom/google/android/mms/c/h;-><init>(Lcom/google/android/mms/c/m;)V

    goto :goto_6

    :pswitch_7
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported PDU type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_8
    new-instance v1, Lcom/google/android/mms/c/v;

    invoke-direct {v1, v2, v8}, Lcom/google/android/mms/c/v;-><init>(Lcom/google/android/mms/c/m;Lcom/google/android/mms/c/j;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_6
    sget-object v2, Lcom/google/android/mms/c/p;->e:Lcom/google/android/mms/e/d;

    monitor-enter v2

    :try_start_9
    new-instance v4, Lcom/google/android/mms/e/e;

    invoke-direct {v4, v1, v3, v6, v7}, Lcom/google/android/mms/e/e;-><init>(Lcom/google/android/mms/c/f;IJ)V

    invoke-virtual {v2, p1, v4}, Lcom/google/android/mms/e/d;->l(Landroid/net/Uri;Lcom/google/android/mms/e/e;)Z

    invoke-virtual {v2, p1, v0}, Lcom/google/android/mms/e/d;->o(Landroid/net/Uri;Z)V

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-object v1

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p1

    :goto_7
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized PDU type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Error! ID of the message: -1."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_9
    :try_start_b
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_a

    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_3
    move-exception v2

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v1

    sget-object v2, Lcom/google/android/mms/c/p;->e:Lcom/google/android/mms/e/d;

    monitor-enter v2

    :try_start_f
    invoke-virtual {v2, p1, v0}, Lcom/google/android/mms/e/d;->o(Landroid/net/Uri;Z)V

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v1

    :catchall_5
    move-exception p1

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public n(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sget-object v2, Lcom/google/android/mms/c/p;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    const-string v3, "msg_box"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v3 .. v8}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/mms/MmsException;

    const-string p2, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {p1, p2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/mms/MmsException;

    const-string p2, "Error! ID of the message: -1."

    invoke-direct {p1, p2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Lcom/google/android/mms/c/f;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/c/f;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    if-eqz v8, :cond_1e

    const-wide/16 v3, -0x1

    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v9, v5

    goto :goto_0

    :catch_0
    move-wide v9, v3

    :goto_0
    const/4 v11, 0x1

    cmp-long v0, v9, v3

    if-eqz v0, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    if-nez v13, :cond_2

    sget-object v0, Lcom/google/android/mms/c/p;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    sget-object v5, Lcom/google/android/mms/c/p;->e:Lcom/google/android/mms/e/d;

    monitor-enter v5

    :try_start_1
    invoke-virtual {v5, v8}, Lcom/google/android/mms/e/d;->f(Landroid/net/Uri;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    :try_start_3
    const-string v0, "PduPersister"

    const-string v7, "persist1: "

    invoke-static {v0, v7, v6}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v0, Lcom/google/android/mms/c/p;->e:Lcom/google/android/mms/e/d;

    invoke-virtual {v0, v8}, Lcom/google/android/mms/e/d;->h(Landroid/net/Uri;)Lcom/google/android/mms/e/e;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/c/f;->b()Lcom/google/android/mms/c/m;

    move-result-object v0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v6, Lcom/google/android/mms/c/p;->p:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/google/android/mms/c/m;->b(I)Lcom/google/android/mms/c/e;

    move-result-object v15

    if-eqz v15, :cond_4

    sget-object v12, Lcom/google/android/mms/c/p;->o:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/c/e;->g()[B

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v7, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/google/android/mms/c/e;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    :cond_5
    sget-object v6, Lcom/google/android/mms/c/p;->q:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    sget-object v6, Lcom/google/android/mms/c/p;->r:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/google/android/mms/c/m;->e(I)I

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    :cond_9
    sget-object v6, Lcom/google/android/mms/c/p;->s:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Lcom/google/android/mms/c/m;->d(I)J

    move-result-wide v14

    cmp-long v12, v14, v3

    if-eqz v12, :cond_a

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7

    :cond_b
    new-instance v12, Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/mms/c/p;->f:[I

    array-length v4, v3

    invoke-direct {v12, v4}, Ljava/util/HashMap;-><init>(I)V

    array-length v4, v3

    const/4 v6, 0x0

    :goto_8
    const/16 v7, 0x89

    if-ge v6, v4, :cond_e

    aget v14, v3, v6

    const/4 v15, 0x0

    if-ne v14, v7, :cond_c

    invoke-virtual {v0, v14}, Lcom/google/android/mms/c/m;->b(I)Lcom/google/android/mms/c/e;

    move-result-object v7

    if-eqz v7, :cond_d

    new-array v15, v11, [Lcom/google/android/mms/c/e;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    goto :goto_9

    :cond_c
    invoke-virtual {v0, v14}, Lcom/google/android/mms/c/m;->c(I)[Lcom/google/android/mms/c/e;

    move-result-object v15

    :cond_d
    :goto_9
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/c/f;->a()I

    move-result v3

    const/16 v4, 0x84

    const/16 v6, 0x80

    const/16 v14, 0x82

    if-eq v3, v14, :cond_10

    if-eq v3, v4, :cond_10

    if-ne v3, v6, :cond_f

    goto :goto_a

    :cond_f
    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    :goto_a
    const/16 v15, 0x97

    if-eq v3, v6, :cond_12

    if-eq v3, v14, :cond_11

    if-eq v3, v4, :cond_11

    const/4 v6, 0x0

    goto :goto_b

    :cond_11
    const/4 v6, 0x0

    invoke-direct {v1, v7, v0, v12, v6}, Lcom/google/android/mms/c/p;->m(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    if-eqz p4, :cond_13

    invoke-direct {v1, v15, v0, v12, v11}, Lcom/google/android/mms/c/p;->m(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    invoke-direct {v1, v14, v0, v12, v11}, Lcom/google/android/mms/c/p;->m(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    invoke-direct {v1, v15, v0, v12, v6}, Lcom/google/android/mms/c/p;->m(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    :cond_13
    :goto_b
    const-wide v3, 0x7fffffffffffffffL

    if-eqz p3, :cond_14

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v3, v1, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v3

    :cond_14
    const-string v0, "thread_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    instance-of v0, v2, Lcom/google/android/mms/c/g;

    if-eqz v0, :cond_16

    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/c/g;

    invoke-virtual {v0}, Lcom/google/android/mms/c/g;->g()Lcom/google/android/mms/c/j;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/mms/c/j;->d()I

    move-result v2

    const/4 v3, 0x2

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_d
    if-ge v3, v2, :cond_17

    invoke-virtual {v0, v3}, Lcom/google/android/mms/c/j;->c(I)Lcom/google/android/mms/c/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/mms/c/o;->i()I

    move-result v7

    add-int v16, v16, v7

    move-object/from16 v7, p5

    invoke-virtual {v1, v4, v14, v15, v7}, Lcom/google/android/mms/c/p;->r(Lcom/google/android/mms/c/o;JLjava/util/HashMap;)Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/android/mms/c/p;->g(Lcom/google/android/mms/c/o;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    const-string v6, "application/smil"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "text/plain"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :cond_15
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    goto :goto_d

    :cond_16
    const/16 v16, 0x0

    :cond_17
    const-string v0, "m_size"

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "m_size"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_18
    if-eqz v13, :cond_19

    iget-object v2, v1, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p2

    const/16 v16, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, v8

    goto :goto_e

    :cond_19
    const/16 v16, 0x0

    iget-object v0, v1, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    invoke-static {v0, v2, v8, v5}, Lcom/google/android/mms/e/f;->c(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    :goto_e
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v11}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "mid"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, v1, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/part"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-nez v13, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1a
    sget-object v2, Lcom/google/android/mms/c/p;->f:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_1c

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/mms/c/e;

    if-eqz v6, :cond_1b

    invoke-direct {v1, v9, v10, v5, v6}, Lcom/google/android/mms/c/p;->p(JI[Lcom/google/android/mms/c/e;)V

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1c
    return-object v0

    :cond_1d
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "persist() failed: return null."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1e
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Uri may not be null."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10
.end method

.method public r(Lcom/google/android/mms/c/o;JLjava/util/HashMap;)Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/c/o;",
            "J",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/part"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Landroid/content/ContentValues;

    const/16 v0, 0x8

    invoke-direct {p3, v0}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->b()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "chset"

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-static {p1}, Lcom/google/android/mms/c/p;->g(Lcom/google/android/mms/c/o;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "image/jpg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "image/jpeg"

    :cond_1
    const-string v1, "ct"

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "application/smil"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "seq"

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->k()[B

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->k()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "fn"

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->l()[B

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->l()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "name"

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->c()[B

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->c()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cd"

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->d()[B

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->d()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->e()[B

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/mms/c/o;->e()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cl"

    invoke-virtual {p3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    invoke-static {v1, v2, p2, p3}, Lcom/google/android/mms/e/f;->c(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/mms/c/p;->q(Lcom/google/android/mms/c/o;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {p1, p2}, Lcom/google/android/mms/c/o;->t(Landroid/net/Uri;)V

    return-object p2

    :cond_8
    new-instance p1, Lcom/google/android/mms/MmsException;

    const-string p2, "Failed to persist part, return null."

    invoke-direct {p1, p2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lcom/google/android/mms/MmsException;

    const-string p2, "MIME type of the part must be set."

    invoke-direct {p1, p2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s()V
    .locals 4

    const-string v0, "content://mms/9223372036854775807/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lcom/google/android/mms/e/f;->b(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public z(Landroid/net/Uri;Lcom/google/android/mms/c/v;)V
    .locals 10

    sget-object v0, Lcom/google/android/mms/c/p;->e:Lcom/google/android/mms/e/d;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/mms/e/d;->f(Landroid/net/Uri;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "PduPersister"

    const-string v3, "updateHeaders: "

    invoke-static {v2, v3, v1}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/google/android/mms/c/p;->e:Lcom/google/android/mms/e/d;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/e/d;->h(Landroid/net/Uri;)Lcom/google/android/mms/e/e;

    new-instance v4, Landroid/content/ContentValues;

    const/16 v0, 0xa

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p2}, Lcom/google/android/mms/c/v;->p()[B

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "ct_t"

    invoke-static {v0}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/mms/c/g;->h()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    const-string v5, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/mms/c/v;->q()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "d_rpt"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/mms/c/v;->r()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_4

    const-string v2, "exp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/mms/c/v;->s()[B

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "m_cls"

    invoke-static {v0}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/mms/c/g;->i()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v1, "pri"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/mms/c/v;->u()I

    move-result v0

    if-eqz v0, :cond_7

    const-string v1, "rr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    invoke-virtual {p2}, Lcom/google/android/mms/c/v;->v()[B

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "tr_id"

    invoke-static {v0}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p2}, Lcom/google/android/mms/c/g;->j()Lcom/google/android/mms/c/e;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "sub"

    invoke-virtual {v0}, Lcom/google/android/mms/c/e;->g()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/c/p;->x([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sub_cs"

    invoke-virtual {v0}, Lcom/google/android/mms/c/e;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_9
    const-string v0, "sub"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/google/android/mms/c/v;->t()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_a

    const-string v2, "m_size"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_a
    invoke-virtual {p2}, Lcom/google/android/mms/c/f;->b()Lcom/google/android/mms/c/m;

    move-result-object p2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/google/android/mms/c/p;->f:[I

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_f

    aget v6, v1, v5

    const/4 v7, 0x0

    const/16 v8, 0x89

    if-ne v6, v8, :cond_b

    invoke-virtual {p2, v6}, Lcom/google/android/mms/c/m;->b(I)Lcom/google/android/mms/c/e;

    move-result-object v8

    if-eqz v8, :cond_c

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/google/android/mms/c/e;

    aput-object v8, v7, v3

    goto :goto_3

    :cond_b
    invoke-virtual {p2, v6}, Lcom/google/android/mms/c/m;->c(I)[Lcom/google/android/mms/c/e;

    move-result-object v7

    :cond_c
    :goto_3
    if-eqz v7, :cond_e

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9, v6, v7}, Lcom/google/android/mms/c/p;->y(JI[Lcom/google/android/mms/c/e;)V

    const/16 v8, 0x97

    if-ne v6, v8, :cond_e

    array-length v6, v7

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_e

    aget-object v9, v7, v8

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Lcom/google/android/mms/c/e;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_f
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    const-string p2, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_10
    iget-object v1, p0, Lcom/google/android/mms/c/p;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/c/p;->b:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/mms/e/f;->f(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method
