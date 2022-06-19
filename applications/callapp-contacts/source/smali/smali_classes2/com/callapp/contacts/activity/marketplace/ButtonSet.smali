.class public final enum Lcom/callapp/contacts/activity/marketplace/ButtonSet;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/marketplace/ButtonSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_BEAR:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_CALLMAN:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_CAT:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_DOGS:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_DOG_FACE:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_PAWS:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_PHONE_CIRCLE:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_PHONE_FILL:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_PHONE_LINES:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_STARS:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum DUAL_TWO_STARS:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum SINGLE_ASTRONAUT:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum SINGLE_DEFAULT:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum SINGLE_DRAGON:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum SINGLE_JELLYFISH:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum SINGLE_OCTOPUS:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum SINGLE_PHONE_LINES:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum SINGLE_SPACE:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

.field public static final enum SINGLE_STAR:Lcom/callapp/contacts/activity/marketplace/ButtonSet;


# instance fields
.field private answerDrawableResourceId:I

.field private answerResourceUrl:Ljava/lang/String;

.field private declineDrawableResourceId:I

.field private declineResourceUrl:Ljava/lang/String;

.field private isPicked:Z

.field private shouldHideBackground:Z

.field private shouldPlayAsGif:Z


# direct methods
.method static constructor <clinit>()V
    .locals 46

    .line 12
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v1, "SINGLE_DEFAULT"

    const/4 v2, 0x0

    const v3, 0x7f08030f

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->SINGLE_DEFAULT:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 13
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v5, "DUAL_PHONE_CIRCLE"

    const/4 v6, 0x1

    const v7, 0x7f08031a

    const v8, 0x7f08031b

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_PHONE_CIRCLE:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 14
    new-instance v3, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v11, "SINGLE_OCTOPUS"

    const/4 v12, 0x2

    const v13, 0x7f08057b

    const/4 v14, 0x1

    const-string v15, "octopus_from_superskin.gif"

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIZLjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->SINGLE_OCTOPUS:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 15
    new-instance v4, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v17, "DUAL_CALLMAN"

    const/16 v18, 0x3

    const v19, 0x7f08009f

    const v20, 0x7f0800a0

    const/16 v21, 0x0

    const-string v22, "call_man_g_from_superskin.gif"

    const-string v23, "call_man_r_from_superskin.gif"

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v23}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_CALLMAN:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 16
    new-instance v5, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v6, "SINGLE_STAR"

    const/4 v7, 0x4

    const v8, 0x7f080313

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIZ)V

    sput-object v5, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->SINGLE_STAR:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 17
    new-instance v6, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v10, "DUAL_DOG_FACE"

    const/4 v11, 0x5

    const v12, 0x7f080281

    const v13, 0x7f08059e

    const/4 v14, 0x0

    const-string v15, "green_dog.gif"

    const-string v16, "red_dog.gif"

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_DOG_FACE:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 18
    new-instance v8, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v9, "SINGLE_PHONE_LINES"

    const/4 v10, 0x6

    const v11, 0x7f080311

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIZ)V

    sput-object v8, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->SINGLE_PHONE_LINES:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 19
    new-instance v9, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v14, "DUAL_BEAR"

    const/4 v15, 0x7

    const v16, 0x7f080314

    const v17, 0x7f080315

    const/16 v18, 0x0

    const-string v19, "bear_g.gif"

    const-string v20, "bear_r.gif"

    move-object v13, v9

    invoke-direct/range {v13 .. v20}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_BEAR:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 20
    new-instance v11, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v13, "SINGLE_ASTRONAUT"

    const/16 v14, 0x8

    const v15, 0x7f08030e

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIZ)V

    sput-object v11, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->SINGLE_ASTRONAUT:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 21
    new-instance v13, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v17, "DUAL_PHONE_LINES"

    const/16 v18, 0x9

    const v19, 0x7f08031f

    const v20, 0x7f080320

    move-object/from16 v16, v13

    invoke-direct/range {v16 .. v21}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v13, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_PHONE_LINES:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 22
    new-instance v15, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v14, "SINGLE_SPACE"

    const/16 v10, 0xa

    const v7, 0x7f080312

    invoke-direct {v15, v14, v10, v7, v12}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIZ)V

    sput-object v15, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->SINGLE_SPACE:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 23
    new-instance v7, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v20, "DUAL_STARS"

    const/16 v21, 0xb

    const v22, 0x7f08031e

    const v23, 0x7f080321

    const/16 v24, 0x0

    move-object/from16 v19, v7

    invoke-direct/range {v19 .. v24}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v7, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_STARS:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 24
    new-instance v14, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v26, "SINGLE_DRAGON"

    const/16 v27, 0xc

    const v28, 0x7f08011e

    const/16 v29, 0x1

    const-string v30, "dragon_from_superskin.gif"

    move-object/from16 v25, v14

    invoke-direct/range {v25 .. v30}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIZLjava/lang/String;)V

    sput-object v14, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->SINGLE_DRAGON:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 25
    new-instance v25, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v20, "DUAL_CAT"

    const/16 v21, 0xd

    const v22, 0x7f080316

    const v23, 0x7f080317

    move-object/from16 v19, v25

    invoke-direct/range {v19 .. v24}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v25, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_CAT:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 26
    new-instance v19, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v27, "SINGLE_JELLYFISH"

    const/16 v28, 0xe

    const v29, 0x7f08051d

    const/16 v30, 0x1

    const-string v31, "jellyfish.gif"

    move-object/from16 v26, v19

    invoke-direct/range {v26 .. v31}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIZLjava/lang/String;)V

    sput-object v19, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->SINGLE_JELLYFISH:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 27
    new-instance v20, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v33, "DUAL_TWO_STARS"

    const/16 v34, 0xf

    const v35, 0x7f080322

    const v36, 0x7f080323

    const/16 v37, 0x0

    move-object/from16 v32, v20

    invoke-direct/range {v32 .. v37}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v20, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_TWO_STARS:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 28
    new-instance v21, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v39, "DUAL_DOGS"

    const/16 v40, 0x10

    const v41, 0x7f08011b

    const v42, 0x7f08011c

    const/16 v43, 0x0

    const-string v44, "dog_full_body_g.gif"

    const-string v45, "dog_full_body_r.gif"

    move-object/from16 v38, v21

    invoke-direct/range {v38 .. v45}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    sput-object v21, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_DOGS:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 29
    new-instance v22, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v27, "DUAL_PAWS"

    const/16 v28, 0x11

    const v29, 0x7f080318

    const v30, 0x7f080319

    const/16 v31, 0x0

    move-object/from16 v26, v22

    invoke-direct/range {v26 .. v31}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v22, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_PAWS:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    .line 30
    new-instance v23, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const-string v33, "DUAL_PHONE_FILL"

    const/16 v34, 0x12

    const v35, 0x7f08031c

    const v36, 0x7f08031d

    move-object/from16 v32, v23

    invoke-direct/range {v32 .. v37}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v23, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->DUAL_PHONE_FILL:Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    const/16 v10, 0x13

    new-array v10, v10, [Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    aput-object v0, v10, v2

    aput-object v1, v10, v12

    const/4 v0, 0x2

    aput-object v3, v10, v0

    const/4 v0, 0x3

    aput-object v4, v10, v0

    const/4 v0, 0x4

    aput-object v5, v10, v0

    const/4 v0, 0x5

    aput-object v6, v10, v0

    const/4 v0, 0x6

    aput-object v8, v10, v0

    const/4 v0, 0x7

    aput-object v9, v10, v0

    const/16 v0, 0x8

    aput-object v11, v10, v0

    const/16 v0, 0x9

    aput-object v13, v10, v0

    const/16 v0, 0xa

    aput-object v15, v10, v0

    const/16 v0, 0xb

    aput-object v7, v10, v0

    const/16 v0, 0xc

    aput-object v14, v10, v0

    const/16 v0, 0xd

    aput-object v25, v10, v0

    const/16 v0, 0xe

    aput-object v19, v10, v0

    const/16 v0, 0xf

    aput-object v20, v10, v0

    const/16 v0, 0x10

    aput-object v21, v10, v0

    const/16 v0, 0x11

    aput-object v22, v10, v0

    const/16 v0, 0x12

    aput-object v23, v10, v0

    .line 11
    sput-object v10, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->$VALUES:[Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 45
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->answerDrawableResourceId:I

    .line 54
    iput p4, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->declineDrawableResourceId:I

    .line 55
    iput-boolean p5, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->shouldHideBackground:Z

    .line 56
    iput-object p6, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->answerResourceUrl:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->declineResourceUrl:Ljava/lang/String;

    .line 58
    invoke-static {p6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->shouldPlayAsGif:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    .line 49
    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/activity/marketplace/ButtonSet;-><init>(Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/marketplace/ButtonSet;
    .locals 1

    .line 11
    const-class v0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/marketplace/ButtonSet;
    .locals 1

    .line 11
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->$VALUES:[Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/marketplace/ButtonSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/marketplace/ButtonSet;

    return-object v0
.end method


# virtual methods
.method public final getAnswerCallDrawableRes()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->answerDrawableResourceId:I

    return v0
.end method

.method public final getAnswerResourceUrl()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "ButtonSetGifUrlPrefix"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->answerResourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeclineCallDrawableRes()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->declineDrawableResourceId:I

    return v0
.end method

.method public final getDeclineResourceUrl()Ljava/lang/String;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "ButtonSetGifUrlPrefix"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->declineResourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isGif()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->shouldPlayAsGif:Z

    return v0
.end method

.method public final isPicked()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isPicked:Z

    return v0
.end method

.method public final isSingleButtonSetResource()Z
    .locals 2

    .line 90
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->declineDrawableResourceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setIsPicked(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->isPicked:Z

    return-void
.end method

.method public final shouldHideBackground()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/ButtonSet;->shouldHideBackground:Z

    return v0
.end method
