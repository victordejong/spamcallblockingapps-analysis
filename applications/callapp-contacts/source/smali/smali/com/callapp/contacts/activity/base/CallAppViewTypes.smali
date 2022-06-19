.class public final enum Lcom/callapp/contacts/activity/base/CallAppViewTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/base/CallAppViewTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CALLAPP_PLUS_LAYOUT:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_BIRTHDAY:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_CALL_LOG:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_CALL_RECORD:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_CHOOSE_SOCIAL_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_CONTACT_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_CONTACT_PLUS:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_CONTACT_SEARCH_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_NOTE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_PLACES_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_REMINDER:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_SINGLE_ROW:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_TWO_ROWS:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum CENTER_USER_PHOTO_MEDIA:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum LEFT_CHECKBOX:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum LEFT_LARGE_IMAGE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum LEFT_SOCIAL_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum RIGHT_BUTTONS:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum RIGHT_CALL_BUTTON:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum RIGHT_CHECKBOX:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum RIGHT_CUSTOM_TWO_IMAGES:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum RIGHT_RADIO:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum RIGHT_SWITCH:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum RIGHT_TEXT:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public static final enum RIGHT_TEXT_WITH_IMAGE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;


# instance fields
.field private layoutResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 7
    new-instance v0, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v1, "LEFT_CHECKBOX"

    const/4 v2, 0x0

    const v3, 0x7f0d02eb

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_CHECKBOX:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 8
    new-instance v1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v4, "LEFT_PROFILE"

    const/4 v5, 0x1

    const v6, 0x7f0d02ef

    invoke-direct {v1, v4, v5, v6}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 9
    new-instance v4, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v6, "LEFT_SOCIAL_PROFILE"

    const/4 v7, 0x2

    const v8, 0x7f0d02f0

    invoke-direct {v4, v6, v7, v8}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_SOCIAL_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 10
    new-instance v6, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v8, "LEFT_LARGE_IMAGE"

    const/4 v9, 0x3

    const v10, 0x7f0d02ee

    invoke-direct {v6, v8, v9, v10}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_LARGE_IMAGE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 11
    new-instance v8, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v10, "RIGHT_CHECKBOX"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v3}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CHECKBOX:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 12
    new-instance v3, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v10, "RIGHT_BUTTONS"

    const/4 v12, 0x5

    const v13, 0x7f0d02dd

    invoke-direct {v3, v10, v12, v13}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_BUTTONS:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 13
    new-instance v10, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v13, "RIGHT_SWITCH"

    const/4 v14, 0x6

    const v15, 0x7f0d02f6

    invoke-direct {v10, v13, v14, v15}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_SWITCH:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 14
    new-instance v13, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "RIGHT_RADIO"

    const/4 v14, 0x7

    const v12, 0x7f0d02f3

    invoke-direct {v13, v15, v14, v12}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_RADIO:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 15
    new-instance v12, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "RIGHT_CALL_BUTTON"

    const/16 v14, 0x8

    const v11, 0x7f0d02de

    invoke-direct {v12, v15, v14, v11}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CALL_BUTTON:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 16
    new-instance v11, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "RIGHT_CUSTOM_TWO_IMAGES"

    const/16 v14, 0x9

    const v9, 0x7f0d02ec

    invoke-direct {v11, v15, v14, v9}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_CUSTOM_TWO_IMAGES:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 17
    new-instance v9, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "RIGHT_TEXT_WITH_IMAGE"

    const/16 v14, 0xa

    const v7, 0x7f0d02f5

    invoke-direct {v9, v15, v14, v7}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_TEXT_WITH_IMAGE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 18
    new-instance v7, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "RIGHT_TEXT"

    const/16 v14, 0xb

    const v5, 0x7f0d02f4

    invoke-direct {v7, v15, v14, v5}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->RIGHT_TEXT:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 19
    new-instance v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "CENTER_CONTACT_LIST"

    const/16 v14, 0xc

    const v2, 0x7f0d02e2

    invoke-direct {v5, v15, v14, v2}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 20
    new-instance v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "CENTER_CONTACT_SEARCH_LIST"

    const/16 v14, 0xd

    move-object/from16 v16, v5

    const v5, 0x7f0d02e4

    invoke-direct {v2, v15, v14, v5}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_SEARCH_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 21
    new-instance v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "CENTER_CONTACT_PLUS"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const v2, 0x7f0d02e3

    invoke-direct {v5, v15, v14, v2}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CONTACT_PLUS:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 22
    new-instance v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "CALLAPP_PLUS_LAYOUT"

    const/16 v14, 0xf

    move-object/from16 v18, v5

    const v5, 0x7f0d0077

    invoke-direct {v2, v15, v14, v5}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CALLAPP_PLUS_LAYOUT:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 23
    new-instance v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "CENTER_PLACES_LIST"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const v2, 0x7f0d0302

    invoke-direct {v5, v15, v14, v2}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_PLACES_LIST:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 24
    new-instance v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "CENTER_CALL_LOG"

    const/16 v14, 0x11

    move-object/from16 v20, v5

    const v5, 0x7f0d02e0

    invoke-direct {v2, v15, v14, v5}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CALL_LOG:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 25
    new-instance v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "CENTER_REMINDER"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const v2, 0x7f0d02e7

    invoke-direct {v5, v15, v14, v2}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_REMINDER:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 26
    new-instance v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "CENTER_BIRTHDAY"

    const/16 v14, 0x13

    move-object/from16 v22, v5

    const v5, 0x7f0d02df

    invoke-direct {v2, v15, v14, v5}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_BIRTHDAY:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 27
    new-instance v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "CENTER_NOTE"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const v2, 0x7f0d02e5

    invoke-direct {v5, v15, v14, v2}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_NOTE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 28
    new-instance v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v15, "CENTER_CHOOSE_SOCIAL_PROFILE"

    const/16 v14, 0x15

    move-object/from16 v24, v5

    const v5, 0x7f0d02e1

    invoke-direct {v2, v15, v14, v5}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CHOOSE_SOCIAL_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 29
    new-instance v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v14, "CENTER_SINGLE_ROW"

    const/16 v15, 0x16

    move-object/from16 v25, v2

    const v2, 0x7f0d02e8

    invoke-direct {v5, v14, v15, v2}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_SINGLE_ROW:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 30
    new-instance v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v14, "CENTER_TWO_ROWS"

    const/16 v15, 0x17

    move-object/from16 v26, v5

    const v5, 0x7f0d02e9

    invoke-direct {v2, v14, v15, v5}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_TWO_ROWS:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 31
    new-instance v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v14, "CENTER_USER_PHOTO_MEDIA"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const v2, 0x7f0d02ea

    invoke-direct {v5, v14, v15, v2}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_USER_PHOTO_MEDIA:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 32
    new-instance v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const-string v14, "CENTER_CALL_RECORD"

    const/16 v15, 0x19

    move-object/from16 v28, v5

    const v5, 0x7f0d02e6

    invoke-direct {v2, v14, v15, v5}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_CALL_RECORD:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const/16 v5, 0x1a

    new-array v5, v5, [Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    const/4 v14, 0x0

    aput-object v0, v5, v14

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v3, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v13, v5, v0

    const/16 v0, 0x8

    aput-object v12, v5, v0

    const/16 v0, 0x9

    aput-object v11, v5, v0

    const/16 v0, 0xa

    aput-object v9, v5, v0

    const/16 v0, 0xb

    aput-object v7, v5, v0

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

    aput-object v27, v5, v0

    const/16 v0, 0x18

    aput-object v28, v5, v0

    const/16 v0, 0x19

    aput-object v2, v5, v0

    .line 5
    sput-object v5, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->$VALUES:[Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->layoutResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/base/CallAppViewTypes;
    .locals 1

    .line 5
    const-class v0, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/base/CallAppViewTypes;
    .locals 1

    .line 5
    sget-object v0, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->$VALUES:[Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/base/CallAppViewTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    return-object v0
.end method


# virtual methods
.method public final getLayoutResId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->layoutResId:I

    return v0
.end method
