.class public final enum Lcom/callapp/contacts/activity/contact/header/ThemeState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/contact/header/ThemeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/contact/header/ThemeState;

.field public static final enum COVER:Lcom/callapp/contacts/activity/contact/header/ThemeState;

.field public static final enum DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

.field public static final enum PRIMARY:Lcom/callapp/contacts/activity/contact/header/ThemeState;

.field public static final enum PRIMARYDARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

.field public static final enum WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;


# instance fields
.field private actionIconsMaximizedColor:I

.field private actionIconsMinimizedColor:I

.field private buttonColor:I

.field private cardsBackgroundColor:I

.field private editCircleColor:I

.field private editCircleStrokeColor:I

.field private editIconColor:I

.field private final leftTheme:Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;

.field private noteIconColor:I

.field private parallaxBackgroundColor:I

.field private final rightTheme:Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;

.field private subtitleTextDefaultColor:I

.field private subtitleTextMaximizedColor:I

.field private titleDefaultOpenColor:I

.field private titleMaximizedColor:I

.field private titleMinimizedColor:I

.field private videoRingtoneIconColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 61

    .line 7
    new-instance v20, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-object/from16 v0, v20

    new-instance v1, Lcom/callapp/contacts/activity/contact/header/ThemeState$1;

    move-object/from16 v18, v1

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState$1;-><init>()V

    new-instance v1, Lcom/callapp/contacts/activity/contact/header/ThemeState$2;

    move-object/from16 v19, v1

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState$2;-><init>()V

    const-string v1, "WHITE"

    const/4 v2, 0x0

    const v3, 0x7f060244

    const v4, 0x7f060023

    const v5, 0x7f060244

    const v6, 0x7f0600ab

    const v7, 0x7f0600ab

    const v8, 0x7f060244

    const v9, 0x7f060116

    const v10, 0x7f060244

    const v11, 0x7f060116

    const v12, 0x7f060244

    const v13, 0x7f060116

    const v14, 0x7f06010e

    const v15, 0x7f060244

    const v16, 0x7f060088

    const v17, 0x7f060041

    invoke-direct/range {v0 .. v19}, Lcom/callapp/contacts/activity/contact/header/ThemeState;-><init>(Ljava/lang/String;IIIIIIIIIIIIIIIILcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;)V

    sput-object v20, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    .line 21
    new-instance v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-object/from16 v21, v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/header/ThemeState$3;

    move-object/from16 v39, v1

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState$3;-><init>()V

    new-instance v1, Lcom/callapp/contacts/activity/contact/header/ThemeState$4;

    move-object/from16 v40, v1

    invoke-direct {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState$4;-><init>()V

    const-string v22, "DARK"

    const/16 v23, 0x1

    const v24, 0x7f06010e

    const v25, 0x7f0600ab

    const v26, 0x7f06010e

    const v27, 0x7f060244

    const v28, 0x7f060244

    const v29, 0x7f060244

    const v30, 0x7f060244

    const v31, 0x7f060244

    const v32, 0x7f060244

    const v33, 0x7f0600b0

    const v34, 0x7f060244

    const v35, 0x7f060244

    const v36, 0x7f060244

    const v37, 0x7f060244

    const v38, 0x7f060244

    invoke-direct/range {v21 .. v40}, Lcom/callapp/contacts/activity/contact/header/ThemeState;-><init>(Ljava/lang/String;IIIIIIIIIIIIIIIILcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    .line 35
    new-instance v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-object/from16 v41, v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/header/ThemeState$5;

    move-object/from16 v59, v2

    invoke-direct {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState$5;-><init>()V

    new-instance v2, Lcom/callapp/contacts/activity/contact/header/ThemeState$6;

    move-object/from16 v60, v2

    invoke-direct {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState$6;-><init>()V

    const-string v42, "PRIMARY"

    const/16 v43, 0x2

    const v44, 0x7f060088

    const v45, 0x7f060023

    const v46, 0x7f060088

    const v47, 0x7f060244

    const v48, 0x7f060244

    const v49, 0x7f060244

    const v50, 0x7f060244

    const v51, 0x7f060244

    const v52, 0x7f060244

    const v53, 0x7f060088

    const v54, 0x7f060244

    const v55, 0x7f060244

    const v56, 0x7f060244

    const v57, 0x7f060244

    const v58, 0x7f060244

    invoke-direct/range {v41 .. v60}, Lcom/callapp/contacts/activity/contact/header/ThemeState;-><init>(Ljava/lang/String;IIIIIIIIIIIIIIIILcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;)V

    sput-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->PRIMARY:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    .line 51
    new-instance v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-object/from16 v21, v2

    new-instance v3, Lcom/callapp/contacts/activity/contact/header/ThemeState$7;

    move-object/from16 v39, v3

    invoke-direct {v3}, Lcom/callapp/contacts/activity/contact/header/ThemeState$7;-><init>()V

    new-instance v3, Lcom/callapp/contacts/activity/contact/header/ThemeState$8;

    move-object/from16 v40, v3

    invoke-direct {v3}, Lcom/callapp/contacts/activity/contact/header/ThemeState$8;-><init>()V

    const-string v22, "PRIMARYDARK"

    const/16 v23, 0x3

    const v24, 0x7f060089

    const v26, 0x7f060089

    invoke-direct/range {v21 .. v40}, Lcom/callapp/contacts/activity/contact/header/ThemeState;-><init>(Ljava/lang/String;IIIIIIIIIIIIIIIILcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;)V

    sput-object v2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->PRIMARYDARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    .line 65
    new-instance v3, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-object/from16 v41, v3

    new-instance v4, Lcom/callapp/contacts/activity/contact/header/ThemeState$9;

    move-object/from16 v59, v4

    invoke-direct {v4}, Lcom/callapp/contacts/activity/contact/header/ThemeState$9;-><init>()V

    new-instance v4, Lcom/callapp/contacts/activity/contact/header/ThemeState$10;

    move-object/from16 v60, v4

    invoke-direct {v4}, Lcom/callapp/contacts/activity/contact/header/ThemeState$10;-><init>()V

    const-string v42, "COVER"

    const/16 v43, 0x4

    const v44, 0x7f0601f1

    const v46, 0x7f0601f1

    const v52, 0x7f060116

    const v53, 0x7f060244

    const v54, 0x7f060116

    invoke-direct/range {v41 .. v60}, Lcom/callapp/contacts/activity/contact/header/ThemeState;-><init>(Ljava/lang/String;IIIIIIIIIIIIIIIILcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;)V

    sput-object v3, Lcom/callapp/contacts/activity/contact/header/ThemeState;->COVER:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/callapp/contacts/activity/contact/header/ThemeState;

    const/4 v5, 0x0

    aput-object v20, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    .line 6
    sput-object v4, Lcom/callapp/contacts/activity/contact/header/ThemeState;->$VALUES:[Lcom/callapp/contacts/activity/contact/header/ThemeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIIIIIIIILcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIIIIIIII",
            "Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;",
            "Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move v1, p3

    .line 119
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->parallaxBackgroundColor:I

    move v1, p4

    .line 120
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->cardsBackgroundColor:I

    move v1, p5

    .line 121
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->buttonColor:I

    move v1, p6

    .line 122
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->titleDefaultOpenColor:I

    move v1, p7

    .line 123
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->titleMinimizedColor:I

    move v1, p8

    .line 124
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->titleMaximizedColor:I

    move v1, p9

    .line 125
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->subtitleTextDefaultColor:I

    move v1, p10

    .line 126
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->subtitleTextMaximizedColor:I

    move v1, p11

    .line 127
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->editCircleStrokeColor:I

    move v1, p12

    .line 128
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->editCircleColor:I

    move v1, p13

    .line 129
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->editIconColor:I

    move/from16 v1, p16

    .line 130
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->noteIconColor:I

    move/from16 v1, p17

    .line 131
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->videoRingtoneIconColor:I

    move/from16 v1, p14

    .line 132
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->actionIconsMinimizedColor:I

    move/from16 v1, p15

    .line 133
    iput v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->actionIconsMaximizedColor:I

    move-object/from16 v1, p18

    .line 134
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->leftTheme:Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;

    move-object/from16 v1, p19

    .line 135
    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->rightTheme:Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/contact/header/ThemeState;
    .locals 1

    .line 6
    const-class v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/contact/header/ThemeState;
    .locals 1

    .line 6
    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->$VALUES:[Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/contact/header/ThemeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/contact/header/ThemeState;

    return-object v0
.end method


# virtual methods
.method public final getActionIconsMaximizedColor()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->actionIconsMaximizedColor:I

    return v0
.end method

.method public final getActionIconsMinimizedColor()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->actionIconsMinimizedColor:I

    return v0
.end method

.method public final getButtonColor()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->buttonColor:I

    return v0
.end method

.method public final getCardsBackgroundColor()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->cardsBackgroundColor:I

    return v0
.end method

.method public final getEditCircleColor()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->editCircleColor:I

    return v0
.end method

.method public final getEditCircleStrokeColor()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->editCircleStrokeColor:I

    return v0
.end method

.method public final getEditIconColor()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->editIconColor:I

    return v0
.end method

.method public final getLeftThemeChangedEvent()Lcom/callapp/contacts/activity/contact/header/ThemeState;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->leftTheme:Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;->getNextTheme()Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-result-object v0

    return-object v0
.end method

.method public final getNoteIconColor()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->noteIconColor:I

    return v0
.end method

.method public final getParallaxBackgroundColor()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->parallaxBackgroundColor:I

    return v0
.end method

.method public final getRightThemeChangedEvent()Lcom/callapp/contacts/activity/contact/header/ThemeState;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->rightTheme:Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState$NextThemeFetcher;->getNextTheme()Lcom/callapp/contacts/activity/contact/header/ThemeState;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitleTextDefaultColor()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->subtitleTextDefaultColor:I

    return v0
.end method

.method public final getSubtitleTextMaximizedColor()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->subtitleTextMaximizedColor:I

    return v0
.end method

.method public final getTitleDefaultOpenColor()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->titleDefaultOpenColor:I

    return v0
.end method

.method public final getTitleMaximizedColor()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->titleMaximizedColor:I

    return v0
.end method

.method public final getTitleMinimizedColor()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->titleMinimizedColor:I

    return v0
.end method

.method public final getVideoRingtoneIconColor()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->videoRingtoneIconColor:I

    return v0
.end method

.method public final isLightTheme()Z
    .locals 2

    .line 155
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->PRIMARYDARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
