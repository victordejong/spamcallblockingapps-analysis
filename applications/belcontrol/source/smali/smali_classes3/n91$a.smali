.class public final enum Ln91$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln91$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Ln91$a;

.field public static final synthetic B:[Ln91$a;

.field public static final enum b:Ln91$a;

.field public static final enum c:Ln91$a;

.field public static final enum d:Ln91$a;

.field public static final enum f:Ln91$a;

.field public static final enum g:Ln91$a;

.field public static final enum h:Ln91$a;

.field public static final enum j:Ln91$a;

.field public static final enum k:Ln91$a;

.field public static final enum l:Ln91$a;

.field public static final enum m:Ln91$a;

.field public static final enum n:Ln91$a;

.field public static final enum o:Ln91$a;

.field public static final enum p:Ln91$a;

.field public static final enum q:Ln91$a;

.field public static final enum r:Ln91$a;

.field public static final enum s:Ln91$a;

.field public static final enum t:Ln91$a;

.field public static final enum u:Ln91$a;

.field public static final enum v:Ln91$a;

.field public static final enum w:Ln91$a;

.field public static final enum x:Ln91$a;

.field public static final enum y:Ln91$a;

.field public static final enum z:Ln91$a;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 27

    new-instance v0, Ln91$a;

    sget v1, Li61;->phone_filter_none:I

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ln91$a;->b:Ln91$a;

    new-instance v1, Ln91$a;

    sget v2, Li61;->phone_filter_black:I

    const-string v4, "BLACK_LIST"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ln91$a;->c:Ln91$a;

    new-instance v4, Ln91$a;

    const-string v6, "BLACK_LIST_MASK"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v2}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ln91$a;->d:Ln91$a;

    new-instance v2, Ln91$a;

    sget v6, Li61;->phone_filter_white:I

    const-string v8, "WHITE_LIST"

    const/4 v9, 0x3

    invoke-direct {v2, v8, v9, v6}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ln91$a;->f:Ln91$a;

    new-instance v6, Ln91$a;

    sget v8, Li61;->phone_filter_private:I

    const-string v10, "PRIVATE_CALL"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ln91$a;->g:Ln91$a;

    new-instance v8, Ln91$a;

    sget v10, Li61;->phone_filter_unknown:I

    const-string v12, "UNKNOWN_CALL"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Ln91$a;->h:Ln91$a;

    new-instance v10, Ln91$a;

    sget v12, Li61;->phone_filter_fake:I

    const-string v14, "FAKE_CALLER"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v10, Ln91$a;->j:Ln91$a;

    new-instance v12, Ln91$a;

    sget v14, Li61;->phone_filter_non_numeric:I

    const-string v15, "NON_NUMERIC_CALLER"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Ln91$a;->k:Ln91$a;

    new-instance v14, Ln91$a;

    sget v15, Li61;->phone_filter_international:I

    const-string v13, "INTERNATIONAL_CALL"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v14, Ln91$a;->l:Ln91$a;

    new-instance v13, Ln91$a;

    sget v15, Li61;->phone_filter_emailed:I

    const-string v11, "EMAILED_TEXT_MESSAGE"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Ln91$a;->m:Ln91$a;

    new-instance v11, Ln91$a;

    sget v15, Li61;->phone_filter_toll_free:I

    const-string v9, "TOLL_FREE_NUMBER"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Ln91$a;->n:Ln91$a;

    new-instance v9, Ln91$a;

    sget v15, Li61;->phone_filter_contact:I

    const-string v7, "CONTACT"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Ln91$a;->o:Ln91$a;

    new-instance v7, Ln91$a;

    sget v15, Li61;->phone_filter_community:I

    const-string v5, "COMMUNITY_BLACKLIST"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ln91$a;->p:Ln91$a;

    new-instance v5, Ln91$a;

    sget v15, Li61;->phone_filter_dnd:I

    const-string v3, "DND"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ln91$a;->q:Ln91$a;

    new-instance v3, Ln91$a;

    sget v15, Li61;->phone_filter_repeated_call:I

    const-string v7, "REPEATED_CALL"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ln91$a;->r:Ln91$a;

    new-instance v7, Ln91$a;

    sget v15, Li61;->phone_filter_voicemailed:I

    const-string v5, "VOICE_MAILED_ANDROID"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ln91$a;->s:Ln91$a;

    new-instance v5, Ln91$a;

    sget v15, Li61;->phone_filter_emergency_number:I

    const-string v3, "EMERGENCY_NUMBER"

    move-object/from16 v19, v7

    const/16 v7, 0x10

    invoke-direct {v5, v3, v7, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ln91$a;->t:Ln91$a;

    new-instance v3, Ln91$a;

    sget v15, Li61;->phone_filter_similar_number:I

    const-string v7, "SPOOFED_SIMILAR_NUMBER"

    move-object/from16 v20, v5

    const/16 v5, 0x11

    invoke-direct {v3, v7, v5, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ln91$a;->u:Ln91$a;

    new-instance v7, Ln91$a;

    sget v15, Li61;->phone_filter_reason_not_in_allowed:I

    const-string v5, "NOT_IN_ALLOWED"

    move-object/from16 v21, v3

    const/16 v3, 0x12

    invoke-direct {v7, v5, v3, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ln91$a;->v:Ln91$a;

    new-instance v5, Ln91$a;

    sget v15, Li61;->phone_filter_reason_similar_number:I

    const-string v3, "CCH_SIMILAR_NUMBER"

    move-object/from16 v22, v7

    const/16 v7, 0x13

    invoke-direct {v5, v3, v7, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ln91$a;->w:Ln91$a;

    new-instance v3, Ln91$a;

    sget v15, Li61;->phone_filter_reason_carrier_marked:I

    const-string v7, "CCH_CARRIER_MARKED_CALL"

    move-object/from16 v23, v5

    const/16 v5, 0x14

    invoke-direct {v3, v7, v5, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ln91$a;->x:Ln91$a;

    new-instance v7, Ln91$a;

    sget v15, Li61;->phone_filter_reason_attorney:I

    const-string v5, "ATTORNEY"

    move-object/from16 v24, v3

    const/16 v3, 0x15

    invoke-direct {v7, v5, v3, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Ln91$a;->y:Ln91$a;

    new-instance v5, Ln91$a;

    sget v15, Li61;->phone_filter_suspected_spam:I

    const-string v3, "SUSPECTED_SPAM"

    move-object/from16 v25, v7

    const/16 v7, 0x16

    invoke-direct {v5, v3, v7, v15}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ln91$a;->z:Ln91$a;

    new-instance v3, Ln91$a;

    sget v7, Li61;->phone_filter_carrier_name:I

    const-string v15, "CARRIER_NAME"

    move-object/from16 v26, v5

    const/16 v5, 0x17

    invoke-direct {v3, v15, v5, v7}, Ln91$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ln91$a;->A:Ln91$a;

    const/16 v5, 0x18

    new-array v5, v5, [Ln91$a;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    const/16 v0, 0x11

    aput-object v21, v5, v0

    const/16 v0, 0x12

    aput-object v22, v5, v0

    const/16 v0, 0x13

    aput-object v23, v5, v0

    const/16 v0, 0x14

    aput-object v24, v5, v0

    const/16 v0, 0x15

    aput-object v25, v5, v0

    const/16 v0, 0x16

    aput-object v26, v5, v0

    const/16 v0, 0x17

    aput-object v3, v5, v0

    sput-object v5, Ln91$a;->B:[Ln91$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ln91$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln91$a;
    .locals 1

    const-class v0, Ln91$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln91$a;

    return-object p0
.end method

.method public static values()[Ln91$a;
    .locals 1

    sget-object v0, Ln91$a;->B:[Ln91$a;

    invoke-virtual {v0}, [Ln91$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln91$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ln91$a;->a:I

    return v0
.end method
