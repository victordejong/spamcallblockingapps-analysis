.class public final enum Ljt0;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljt0;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final enum d:Ljt0;

.field public static final enum f:Ljt0;

.field public static final enum g:Ljt0;

.field public static final enum h:Ljt0;

.field public static final enum j:Ljt0;

.field public static final enum k:Ljt0;

.field public static final enum l:Ljt0;

.field public static final enum m:Ljt0;

.field public static final enum n:Ljt0;

.field public static final enum o:Ljt0;

.field public static final enum p:Ljt0;

.field public static final enum q:Ljt0;

.field public static final enum r:Ljt0;

.field public static final synthetic s:[Ljt0;


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Ljt0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljt0;

    const-string v1, "SEND_SMS"

    const/4 v2, 0x0

    const v3, 0x7f110047

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljt0;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Ljt0;->d:Ljt0;

    new-instance v1, Ljt0;

    const-string v3, "CALL"

    const v5, 0x7f110042

    invoke-direct {v1, v3, v4, v5, v4}, Ljt0;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Ljt0;->f:Ljt0;

    new-instance v3, Ljt0;

    const-string v5, "PURCHASE"

    const/4 v6, 0x2

    const v7, 0x7f110063

    invoke-direct {v3, v5, v6, v7, v4}, Ljt0;-><init>(Ljava/lang/String;IIZ)V

    sput-object v3, Ljt0;->g:Ljt0;

    new-instance v5, Ljt0;

    const-string v7, "BLOCK"

    const/4 v8, 0x3

    const v9, 0x7f11003e

    invoke-direct {v5, v7, v8, v9}, Ljt0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ljt0;->h:Ljt0;

    new-instance v7, Ljt0;

    const-string v9, "ALLOW"

    const/4 v10, 0x4

    const v11, 0x7f11003d

    invoke-direct {v7, v9, v10, v11}, Ljt0;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ljt0;->j:Ljt0;

    new-instance v9, Ljt0;

    const-string v11, "REPORT"

    const/4 v12, 0x5

    const v13, 0x7f110045

    invoke-direct {v9, v11, v12, v13}, Ljt0;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ljt0;->k:Ljt0;

    new-instance v11, Ljt0;

    const-string v13, "SAVE_TO_CONTACTS"

    const/4 v14, 0x6

    const v15, 0x7f110046

    invoke-direct {v11, v13, v14, v15, v4}, Ljt0;-><init>(Ljava/lang/String;IIZ)V

    sput-object v11, Ljt0;->l:Ljt0;

    new-instance v13, Ljt0;

    const-string v15, "BLOCK_UNKNOWN"

    const/4 v14, 0x7

    const v12, 0x7f110041

    invoke-direct {v13, v15, v14, v12}, Ljt0;-><init>(Ljava/lang/String;II)V

    sput-object v13, Ljt0;->m:Ljt0;

    new-instance v12, Ljt0;

    const-string v15, "UNBLOCK_UNKNOWN"

    const/16 v14, 0x8

    const v10, 0x7f11004a

    invoke-direct {v12, v15, v14, v10}, Ljt0;-><init>(Ljava/lang/String;II)V

    sput-object v12, Ljt0;->n:Ljt0;

    new-instance v10, Ljt0;

    const-string v15, "BLOCK_PRIVATE"

    const/16 v14, 0x9

    const v8, 0x7f110040

    invoke-direct {v10, v15, v14, v8}, Ljt0;-><init>(Ljava/lang/String;II)V

    sput-object v10, Ljt0;->o:Ljt0;

    new-instance v8, Ljt0;

    const-string v15, "UNBLOCK_PRIVATE"

    const/16 v14, 0xa

    const v6, 0x7f110049

    invoke-direct {v8, v15, v14, v6}, Ljt0;-><init>(Ljava/lang/String;II)V

    sput-object v8, Ljt0;->p:Ljt0;

    new-instance v6, Ljt0;

    const-string v15, "BLOCK_ALPHANUMERIC"

    const/16 v14, 0xb

    const v4, 0x7f11003f

    invoke-direct {v6, v15, v14, v4}, Ljt0;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ljt0;->q:Ljt0;

    new-instance v4, Ljt0;

    const-string v15, "UNBLOCK_ALPHANUMERIC"

    const/16 v14, 0xc

    const v2, 0x7f110048

    invoke-direct {v4, v15, v14, v2}, Ljt0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ljt0;->r:Ljt0;

    const/16 v2, 0xd

    new-array v2, v2, [Ljt0;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    aput-object v4, v2, v14

    sput-object v2, Ljt0;->s:[Ljt0;

    invoke-static {v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v5, Ljt0;->c:Ljava/util/EnumSet;

    invoke-static {v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v7, Ljt0;->c:Ljava/util/EnumSet;

    invoke-static {v12}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v13, Ljt0;->c:Ljava/util/EnumSet;

    invoke-static {v13}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v12, Ljt0;->c:Ljava/util/EnumSet;

    invoke-static {v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v10, Ljt0;->c:Ljava/util/EnumSet;

    invoke-static {v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v8, Ljt0;->c:Ljava/util/EnumSet;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v6, Ljt0;->c:Ljava/util/EnumSet;

    invoke-static {v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, v4, Ljt0;->c:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljt0;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljt0;->a:I

    iput-boolean p4, p0, Ljt0;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, Ljt0;->c:Ljava/util/EnumSet;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljt0;
    .locals 1

    const-class v0, Ljt0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljt0;

    return-object p0
.end method

.method public static values()[Ljt0;
    .locals 1

    sget-object v0, Ljt0;->s:[Ljt0;

    invoke-virtual {v0}, [Ljt0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljt0;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;)V
    .locals 2

    iget-object v0, p0, Ljt0;->c:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k:Ljava/util/EnumSet;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Actions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->k:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ljt0;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity;->M()V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ljt0;->a:I

    return v0
.end method
