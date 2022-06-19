.class public final enum Lta1;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lta1$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lta1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lta1;

.field public static final enum B:Lta1;

.field public static final enum C:Lta1;

.field public static final enum D:Lta1;

.field public static final enum E:Lta1;

.field public static final enum F:Lta1;

.field public static final enum G:Lta1;

.field public static final enum H:Lta1;

.field public static final enum I:Lta1;

.field public static final enum J:Lta1;

.field public static final enum K:Lta1;

.field public static final enum L:Lta1;

.field public static final synthetic M:[Lta1;

.field public static final enum g:Lta1;

.field public static final enum h:Lta1;

.field public static final enum j:Lta1;

.field public static final enum k:Lta1;

.field public static final enum l:Lta1;

.field public static final enum m:Lta1;

.field public static final enum n:Lta1;

.field public static final enum o:Lta1;

.field public static final enum p:Lta1;

.field public static final enum q:Lta1;

.field public static final enum r:Lta1;

.field public static final enum s:Lta1;

.field public static final enum t:Lta1;

.field public static final enum u:Lta1;

.field public static final enum v:Lta1;

.field public static final enum w:Lta1;

.field public static final enum x:Lta1;

.field public static final enum y:Lta1;

.field public static final enum z:Lta1;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Lta1;

.field public c:Lva1;

.field public d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/ref/WeakReference<",
            "Lta1$e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 38

    new-instance v0, Lta1;

    const-string v1, "READ_SMS"

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_SMS"

    invoke-direct {v0, v1, v2, v3}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lta1;->g:Lta1;

    new-instance v1, Lta1;

    const-string v3, "SEND_SMS"

    const/4 v4, 0x1

    const-string v5, "android.permission.SEND_SMS"

    invoke-direct {v1, v3, v4, v5}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lta1;->h:Lta1;

    new-instance v3, Lta1;

    const-string v5, "BLUETOOTH"

    const/4 v6, 0x2

    const-string v7, "android.permission.BLUETOOTH"

    invoke-direct {v3, v5, v6, v7}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lta1;->j:Lta1;

    new-instance v5, Lta1;

    const-string v7, "BLUETOOTH_ADMIN"

    const/4 v8, 0x3

    const-string v9, "android.permission.BLUETOOTH_ADMIN"

    invoke-direct {v5, v7, v8, v9}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lta1;->k:Lta1;

    new-instance v7, Lta1;

    const-string v9, "ACCESS_COARSE_LOCATION"

    const/4 v10, 0x4

    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {v7, v9, v10, v11}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lta1;->l:Lta1;

    new-instance v9, Lta1;

    const-string v11, "ACCESS_FINE_LOCATION"

    const/4 v12, 0x5

    const-string v13, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {v9, v11, v12, v13}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lta1;->m:Lta1;

    new-instance v11, Lta1;

    const-string v13, "CHANGE_WIFI_STATE"

    const/4 v14, 0x6

    const-string v15, "android.permission.CHANGE_WIFI_STATE"

    invoke-direct {v11, v13, v14, v15}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lta1;->n:Lta1;

    new-instance v13, Lta1;

    const-string v15, "ACCESS_WIFI_STATE"

    const/4 v14, 0x7

    const-string v10, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {v13, v15, v14, v10}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lta1;->o:Lta1;

    new-instance v10, Lta1;

    const-string v15, "WIFI_MULTICAST"

    const/16 v14, 0x8

    const-string v8, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    invoke-direct {v10, v15, v14, v8}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lta1;->p:Lta1;

    new-instance v8, Lta1;

    const-string v15, "RECEIVE_MMS"

    const/16 v14, 0x9

    const-string v6, "android.permission.RECEIVE_MMS"

    invoke-direct {v8, v15, v14, v6}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lta1;->q:Lta1;

    new-instance v6, Lta1;

    const-string v15, "RECEIVE_SMS"

    const/16 v14, 0xa

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-direct {v6, v15, v14, v4}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lta1;->r:Lta1;

    new-instance v4, Lta1;

    const-string v15, "CALL_PHONE"

    const/16 v14, 0xb

    const-string v2, "android.permission.CALL_PHONE"

    invoke-direct {v4, v15, v14, v2}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lta1;->s:Lta1;

    new-instance v2, Lta1;

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-ge v15, v14, :cond_0

    const-string v15, ""

    goto :goto_0

    :cond_0
    const-string v15, "android.permission.ANSWER_PHONE_CALLS"

    :goto_0
    new-instance v14, Lta1$a;

    invoke-direct {v14}, Lta1$a;-><init>()V

    const-string v12, "ANSWER_PHONE_CALLS"

    move-object/from16 v20, v5

    const/16 v5, 0xc

    invoke-direct {v2, v12, v5, v15, v14}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;Lva1;)V

    sput-object v2, Lta1;->t:Lta1;

    new-instance v12, Lta1;

    const-string v14, "READ_PHONE_STATE"

    const/16 v15, 0xd

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-direct {v12, v14, v15, v5}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lta1;->u:Lta1;

    new-instance v5, Lta1;

    const-string v14, "WRITE_CALL_LOG"

    const/16 v15, 0xe

    move-object/from16 v21, v3

    const-string v3, "android.permission.WRITE_CALL_LOG"

    invoke-direct {v5, v14, v15, v3}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lta1;->v:Lta1;

    new-instance v3, Lta1;

    const-string v14, "PROCESS_OUTGOING_CALLS"

    const/16 v15, 0xf

    move-object/from16 v22, v2

    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-direct {v3, v14, v15, v2}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lta1;->w:Lta1;

    new-instance v2, Lta1;

    const-string v14, "READ_CALL_LOG"

    const/16 v15, 0x10

    move-object/from16 v23, v3

    const-string v3, "android.permission.READ_CALL_LOG"

    invoke-direct {v2, v14, v15, v3}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lta1;->x:Lta1;

    new-instance v3, Lta1;

    const-string v14, "READ_CONTACTS"

    const/16 v15, 0x11

    move-object/from16 v24, v2

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-direct {v3, v14, v15, v2}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lta1;->y:Lta1;

    new-instance v2, Lta1;

    const-string v14, "WRITE_CONTACTS"

    const/16 v15, 0x12

    move-object/from16 v25, v3

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-direct {v2, v14, v15, v3}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lta1;->z:Lta1;

    new-instance v3, Lta1;

    const-string v14, "READ_EXTERNAL_STORAGE"

    const/16 v15, 0x13

    move-object/from16 v26, v2

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {v3, v14, v15, v2}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lta1;->A:Lta1;

    new-instance v2, Lta1;

    const-string v14, "WRITE_EXTERNAL_STORAGE"

    const/16 v15, 0x14

    move-object/from16 v27, v3

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v2, v14, v15, v3}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lta1;->B:Lta1;

    new-instance v3, Lta1;

    const/16 v14, 0x15

    const-string v15, "CHANGE_NETWORK_STATE"

    move-object/from16 v28, v2

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    invoke-direct {v3, v15, v14, v2}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lta1;->C:Lta1;

    new-instance v2, Lta1;

    const/16 v14, 0x16

    new-instance v15, Lta1$b;

    invoke-direct {v15}, Lta1$b;-><init>()V

    move-object/from16 v29, v3

    const-string v3, "WRITE_SETTINGS"

    move-object/from16 v30, v5

    const-string v5, "android.permission.WRITE_SETTINGS"

    invoke-direct {v2, v3, v14, v5, v15}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;Lva1;)V

    sput-object v2, Lta1;->D:Lta1;

    new-instance v3, Lta1;

    const/16 v5, 0x17

    new-instance v14, Lta1$c;

    invoke-direct {v14}, Lta1$c;-><init>()V

    const-string v15, "SYSTEM_ALERT_WINDOW"

    move-object/from16 v31, v2

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-direct {v3, v15, v5, v2, v14}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;Lva1;)V

    sput-object v3, Lta1;->E:Lta1;

    new-instance v2, Lta1;

    const/16 v5, 0x18

    const/4 v14, 0x5

    new-array v15, v14, [Lta1;

    const/4 v14, 0x0

    aput-object v7, v15, v14

    const/16 v18, 0x1

    aput-object v9, v15, v18

    const/4 v14, 0x2

    aput-object v11, v15, v14

    const/16 v17, 0x3

    aput-object v13, v15, v17

    const/4 v14, 0x4

    aput-object v10, v15, v14

    const-string v14, "GROUP_WIFI"

    invoke-direct {v2, v14, v5, v15}, Lta1;-><init>(Ljava/lang/String;I[Lta1;)V

    sput-object v2, Lta1;->F:Lta1;

    new-instance v5, Lta1;

    const/4 v15, 0x4

    new-array v14, v15, [Lta1;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    aput-object v1, v14, v18

    const/4 v15, 0x2

    aput-object v8, v14, v15

    aput-object v6, v14, v17

    const-string v15, "GROUP_SMS"

    move-object/from16 v33, v2

    const/16 v2, 0x19

    invoke-direct {v5, v15, v2, v14}, Lta1;-><init>(Ljava/lang/String;I[Lta1;)V

    sput-object v5, Lta1;->G:Lta1;

    new-instance v2, Lta1;

    const/4 v14, 0x5

    new-array v15, v14, [Lta1;

    const/4 v14, 0x0

    aput-object v4, v15, v14

    aput-object v12, v15, v18

    const/4 v14, 0x2

    aput-object v30, v15, v14

    aput-object v24, v15, v17

    const/16 v16, 0x4

    aput-object v22, v15, v16

    const-string v14, "GROUP_PHONE"

    move-object/from16 v32, v5

    const/16 v5, 0x1a

    invoke-direct {v2, v14, v5, v15}, Lta1;-><init>(Ljava/lang/String;I[Lta1;)V

    sput-object v2, Lta1;->H:Lta1;

    new-instance v5, Lta1;

    const/4 v15, 0x2

    new-array v14, v15, [Lta1;

    const/16 v19, 0x0

    aput-object v27, v14, v19

    aput-object v28, v14, v18

    const-string v15, "GROUP_STORAGE"

    move-object/from16 v34, v3

    const/16 v3, 0x1b

    invoke-direct {v5, v15, v3, v14}, Lta1;-><init>(Ljava/lang/String;I[Lta1;)V

    sput-object v5, Lta1;->I:Lta1;

    new-instance v3, Lta1;

    const/4 v15, 0x2

    new-array v14, v15, [Lta1;

    aput-object v25, v14, v19

    aput-object v26, v14, v18

    const-string v15, "GROUP_CONTACTS"

    move-object/from16 v35, v5

    const/16 v5, 0x1c

    invoke-direct {v3, v15, v5, v14}, Lta1;-><init>(Ljava/lang/String;I[Lta1;)V

    sput-object v3, Lta1;->J:Lta1;

    new-instance v5, Lta1;

    const/4 v15, 0x3

    new-array v14, v15, [Lta1;

    aput-object v21, v14, v19

    aput-object v20, v14, v18

    const/4 v15, 0x2

    aput-object v7, v14, v15

    const-string v15, "GROUP_BLUETOOTH"

    move-object/from16 v36, v12

    const/16 v12, 0x1d

    invoke-direct {v5, v15, v12, v14}, Lta1;-><init>(Ljava/lang/String;I[Lta1;)V

    sput-object v5, Lta1;->K:Lta1;

    new-instance v12, Lta1;

    const/4 v15, 0x2

    new-array v14, v15, [Lta1;

    aput-object v2, v14, v19

    aput-object v3, v14, v18

    const-string v15, "GROUP_CRITICAL"

    move-object/from16 v37, v5

    const/16 v5, 0x1e

    invoke-direct {v12, v15, v5, v14}, Lta1;-><init>(Ljava/lang/String;I[Lta1;)V

    sput-object v12, Lta1;->L:Lta1;

    const/16 v5, 0x1f

    new-array v5, v5, [Lta1;

    aput-object v0, v5, v19

    aput-object v1, v5, v18

    const/4 v0, 0x2

    aput-object v21, v5, v0

    const/4 v0, 0x3

    aput-object v20, v5, v0

    const/4 v0, 0x4

    aput-object v7, v5, v0

    const/4 v0, 0x5

    aput-object v9, v5, v0

    const/4 v0, 0x6

    aput-object v11, v5, v0

    const/4 v0, 0x7

    aput-object v13, v5, v0

    const/16 v0, 0x8

    aput-object v10, v5, v0

    const/16 v0, 0x9

    aput-object v8, v5, v0

    const/16 v0, 0xa

    aput-object v6, v5, v0

    const/16 v0, 0xb

    aput-object v4, v5, v0

    const/16 v0, 0xc

    aput-object v22, v5, v0

    const/16 v0, 0xd

    aput-object v36, v5, v0

    const/16 v0, 0xe

    aput-object v30, v5, v0

    const/16 v0, 0xf

    aput-object v23, v5, v0

    const/16 v0, 0x10

    aput-object v24, v5, v0

    const/16 v0, 0x11

    aput-object v25, v5, v0

    const/16 v0, 0x12

    aput-object v26, v5, v0

    const/16 v0, 0x13

    aput-object v27, v5, v0

    const/16 v0, 0x14

    aput-object v28, v5, v0

    const/16 v0, 0x15

    aput-object v29, v5, v0

    const/16 v0, 0x16

    aput-object v31, v5, v0

    const/16 v0, 0x17

    aput-object v34, v5, v0

    const/16 v0, 0x18

    aput-object v33, v5, v0

    const/16 v0, 0x19

    aput-object v32, v5, v0

    const/16 v0, 0x1a

    aput-object v2, v5, v0

    const/16 v0, 0x1b

    aput-object v35, v5, v0

    const/16 v0, 0x1c

    aput-object v3, v5, v0

    const/16 v0, 0x1d

    aput-object v37, v5, v0

    const/16 v0, 0x1e

    aput-object v12, v5, v0

    sput-object v5, Lta1;->M:[Lta1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lta1;->a:Ljava/lang/String;

    iput-object p1, p0, Lta1;->b:[Lta1;

    new-instance p2, Lta1$d;

    invoke-direct {p2, p0}, Lta1$d;-><init>(Lta1;)V

    iput-object p2, p0, Lta1;->c:Lva1;

    iput-object p1, p0, Lta1;->d:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lta1;->f:Ljava/util/HashSet;

    iput-object p3, p0, Lta1;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lva1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lva1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lta1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object p4, p0, Lta1;->c:Lva1;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;I[Lta1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lta1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lta1;->a:Ljava/lang/String;

    iput-object p1, p0, Lta1;->b:[Lta1;

    new-instance p2, Lta1$d;

    invoke-direct {p2, p0}, Lta1$d;-><init>(Lta1;)V

    iput-object p2, p0, Lta1;->c:Lva1;

    iput-object p1, p0, Lta1;->d:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lta1;->f:Ljava/util/HashSet;

    iput-object p3, p0, Lta1;->b:[Lta1;

    return-void
.end method

.method public static b(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/String;

    new-array p1, p1, [I

    invoke-static {p0, p2, p1}, Lta1;->c(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public static c(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {}, Lta1;->values()[Lta1;

    move-result-object p1

    add-int/lit8 p0, p0, -0x64

    if-ltz p0, :cond_9

    array-length p2, p1

    if-lt p0, p2, :cond_0

    goto :goto_1

    :cond_0
    aget-object p0, p1, p0

    invoke-virtual {p0}, Lta1;->e()V

    iget-object p1, p0, Lta1;->d:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p0, Lta1;->d:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_9

    instance-of p2, p1, Lua1;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lta1;->d()Z

    move-result p2

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lua1;

    invoke-interface {p2, p0}, Lua1;->f(Lta1;)Z

    move-result p2

    goto :goto_0

    :cond_3
    move-object p2, p1

    check-cast p2, Lua1;

    invoke-interface {p2, p0}, Lua1;->h(Lta1;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_4

    return-void

    :cond_4
    instance-of p2, p1, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_5

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    :cond_5
    instance-of p2, p1, Lyd;

    if-eqz p2, :cond_6

    check-cast p1, Lyd;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    :cond_6
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_9

    instance-of p2, p1, Lua1;

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lta1;->d()Z

    move-result p2

    check-cast p1, Lua1;

    if-eqz p2, :cond_8

    invoke-interface {p1, p0}, Lua1;->f(Lta1;)Z

    goto :goto_1

    :cond_8
    invoke-interface {p1, p0}, Lua1;->h(Lta1;)Z

    :cond_9
    :goto_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lta1;
    .locals 1

    const-class v0, Lta1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lta1;

    return-object p0
.end method

.method public static values()[Lta1;
    .locals 1

    sget-object v0, Lta1;->M:[Lta1;

    invoke-virtual {v0}, [Lta1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lta1;

    return-object v0
.end method


# virtual methods
.method public a(Lta1$e;)V
    .locals 2

    iget-object v0, p0, Lta1;->f:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lta1;->f:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lta1;->f:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lta1;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lta1;->c:Lva1;

    invoke-virtual {v0, p0}, Lva1;->a(Lta1;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lta1;->b:[Lta1;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lta1;->d()Z

    move-result v4

    and-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lta1;->f:Ljava/util/HashSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lta1;->f:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lta1$e;

    invoke-interface {v2, p0}, Lta1$e;->a(Lta1;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lta1;->f:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public f(Landroid/app/Activity;)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lta1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lta1;->c:Lva1;

    const/4 v2, 0x1

    new-array v2, v2, [Lta1;

    aput-object p0, v2, v1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v2, p1, v1}, Lva1;->b([Lta1;Landroid/app/Activity;I)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lta1;->b:[Lta1;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lta1;->d()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lta1;->k()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lta1;->c:Lva1;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lta1;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lta1;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v0, p1, v2}, Lva1;->b([Lta1;Landroid/app/Activity;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public declared-synchronized g(Landroid/app/Activity;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lta1;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lta1;->f(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized h(Landroidx/fragment/app/Fragment;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lta1;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lta1;->f(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized i(Landroid/app/Activity;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lta1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lta1;->g(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized j(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lta1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lta1;->h(Landroidx/fragment/app/Fragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lta1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lta1;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lta1;

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lta1;->b:[Lta1;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lta1;->k()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
