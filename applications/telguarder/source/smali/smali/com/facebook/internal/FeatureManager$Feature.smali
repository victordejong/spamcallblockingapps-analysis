.class public final enum Lcom/facebook/internal/FeatureManager$Feature;
.super Ljava/lang/Enum;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/FeatureManager$Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum AAM:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Core:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum CrashReport:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum CrashShield:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ErrorReport:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Instrument:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Login:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ModelRequest:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Monitoring:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum OnDeviceEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum OnDevicePostInstallEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Places:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Share:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum ThreadCheck:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum Unknown:Lcom/facebook/internal/FeatureManager$Feature;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 192
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    .line 195
    new-instance v1, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "Core"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/FeatureManager$Feature;->Core:Lcom/facebook/internal/FeatureManager$Feature;

    .line 197
    new-instance v3, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v5, "AppEvents"

    const/4 v6, 0x2

    const/high16 v7, 0x10000

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/internal/FeatureManager$Feature;->AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 198
    new-instance v5, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v7, "CodelessEvents"

    const/4 v8, 0x3

    const v9, 0x10100

    invoke-direct {v5, v7, v8, v9}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/facebook/internal/FeatureManager$Feature;->CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 199
    new-instance v7, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v9, "RestrictiveDataFiltering"

    const/4 v10, 0x4

    const v11, 0x10200

    invoke-direct {v7, v9, v10, v11}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    .line 200
    new-instance v9, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v11, "AAM"

    const/4 v12, 0x5

    const v13, 0x10300

    invoke-direct {v9, v11, v12, v13}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    .line 201
    new-instance v11, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v13, "PrivacyProtection"

    const/4 v14, 0x6

    const v15, 0x10400

    invoke-direct {v11, v13, v14, v15}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    .line 202
    new-instance v13, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "SuggestedEvents"

    const/4 v14, 0x7

    const v12, 0x10401

    invoke-direct {v13, v15, v14, v12}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/facebook/internal/FeatureManager$Feature;->SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 203
    new-instance v12, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "IntelligentIntegrity"

    const/16 v14, 0x8

    const v10, 0x10402

    invoke-direct {v12, v15, v14, v10}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/facebook/internal/FeatureManager$Feature;->IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

    .line 204
    new-instance v10, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "ModelRequest"

    const/16 v14, 0x9

    const v8, 0x10403

    invoke-direct {v10, v15, v14, v8}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/facebook/internal/FeatureManager$Feature;->ModelRequest:Lcom/facebook/internal/FeatureManager$Feature;

    .line 205
    new-instance v8, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "EventDeactivation"

    const/16 v14, 0xa

    const v6, 0x10500

    invoke-direct {v8, v15, v14, v6}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    .line 206
    new-instance v6, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "OnDeviceEventProcessing"

    const/16 v14, 0xb

    const v4, 0x10600

    invoke-direct {v6, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/facebook/internal/FeatureManager$Feature;->OnDeviceEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    .line 207
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "OnDevicePostInstallEventProcessing"

    const/16 v14, 0xc

    const v2, 0x10601

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->OnDevicePostInstallEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    .line 209
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "Instrument"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/high16 v4, 0x20000

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Instrument:Lcom/facebook/internal/FeatureManager$Feature;

    .line 210
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "CrashReport"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const v2, 0x20100

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->CrashReport:Lcom/facebook/internal/FeatureManager$Feature;

    .line 211
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "CrashShield"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const v4, 0x20101

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/internal/FeatureManager$Feature;->CrashShield:Lcom/facebook/internal/FeatureManager$Feature;

    .line 212
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "ThreadCheck"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const v2, 0x20102

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->ThreadCheck:Lcom/facebook/internal/FeatureManager$Feature;

    .line 213
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "ErrorReport"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const v4, 0x20200

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/internal/FeatureManager$Feature;->ErrorReport:Lcom/facebook/internal/FeatureManager$Feature;

    .line 215
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "Monitoring"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/high16 v2, 0x30000

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->Monitoring:Lcom/facebook/internal/FeatureManager$Feature;

    .line 219
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "Login"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/high16 v4, 0x1000000

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Login:Lcom/facebook/internal/FeatureManager$Feature;

    .line 220
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "ChromeCustomTabsPrefetching"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/high16 v2, 0x1010000

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

    .line 221
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "IgnoreAppSwitchToLoggedOut"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/high16 v4, 0x1020000

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/internal/FeatureManager$Feature;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

    .line 225
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "Share"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/high16 v2, 0x2000000

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->Share:Lcom/facebook/internal/FeatureManager$Feature;

    .line 229
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v14, "Places"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/high16 v4, 0x3000000

    invoke-direct {v2, v14, v15, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Places:Lcom/facebook/internal/FeatureManager$Feature;

    const/16 v4, 0x18

    new-array v4, v4, [Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v2, v4, v0

    .line 191
    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->$VALUES:[Lcom/facebook/internal/FeatureManager$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 234
    iput p3, p0, Lcom/facebook/internal/FeatureManager$Feature;->code:I

    return-void
.end method

.method static fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;
    .locals 5

    .line 320
    invoke-static {}, Lcom/facebook/internal/FeatureManager$Feature;->values()[Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 321
    iget v4, v3, Lcom/facebook/internal/FeatureManager$Feature;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_1
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/FeatureManager$Feature;
    .locals 1

    .line 191
    const-class v0, Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/FeatureManager$Feature;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/FeatureManager$Feature;
    .locals 1

    .line 191
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->$VALUES:[Lcom/facebook/internal/FeatureManager$Feature;

    invoke-virtual {v0}, [Lcom/facebook/internal/FeatureManager$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/FeatureManager$Feature;

    return-object v0
.end method


# virtual methods
.method public getParent()Lcom/facebook/internal/FeatureManager$Feature;
    .locals 2

    .line 334
    iget v0, p0, Lcom/facebook/internal/FeatureManager$Feature;->code:I

    and-int/lit16 v1, v0, 0xff

    if-lez v1, :cond_0

    and-int/lit16 v0, v0, -0x100

    .line 335
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    return-object v0

    :cond_0
    const v1, 0xff00

    and-int/2addr v1, v0

    if-lez v1, :cond_1

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 337
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    return-object v0

    :cond_1
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-lez v1, :cond_2

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    .line 339
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 341
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager$Feature;->fromInt(I)Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    return-object v0
.end method

.method toKey()Ljava/lang/String;
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FBSDKFeature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 241
    sget-object v0, Lcom/facebook/internal/FeatureManager$2;->$SwitchMap$com$facebook$internal$FeatureManager$Feature:[I

    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "PlacesKit"

    goto :goto_0

    :pswitch_1
    const-string v0, "ShareKit"

    goto :goto_0

    :pswitch_2
    const-string v0, "LoginKit"

    goto :goto_0

    :pswitch_3
    const-string v0, "CodelessEvents"

    goto :goto_0

    :pswitch_4
    const-string v0, "AppEvents"

    goto :goto_0

    :pswitch_5
    const-string v0, "CoreKit"

    goto :goto_0

    :pswitch_6
    const-string v0, "IgnoreAppSwitchToLoggedOut"

    goto :goto_0

    :pswitch_7
    const-string v0, "Monitoring"

    goto :goto_0

    :pswitch_8
    const-string v0, "ChromeCustomTabsPrefetching"

    goto :goto_0

    :pswitch_9
    const-string v0, "OnDevicePostInstallEventProcessing"

    goto :goto_0

    :pswitch_a
    const-string v0, "OnDeviceEventProcessing"

    goto :goto_0

    :pswitch_b
    const-string v0, "EventDeactivation"

    goto :goto_0

    :pswitch_c
    const-string v0, "ModelRequest"

    goto :goto_0

    :pswitch_d
    const-string v0, "IntelligentIntegrity"

    goto :goto_0

    :pswitch_e
    const-string v0, "SuggestedEvents"

    goto :goto_0

    :pswitch_f
    const-string v0, "PrivacyProtection"

    goto :goto_0

    :pswitch_10
    const-string v0, "AAM"

    goto :goto_0

    :pswitch_11
    const-string v0, "ErrorReport"

    goto :goto_0

    :pswitch_12
    const-string v0, "ThreadCheck"

    goto :goto_0

    :pswitch_13
    const-string v0, "CrashShield"

    goto :goto_0

    :pswitch_14
    const-string v0, "CrashReport"

    goto :goto_0

    :pswitch_15
    const-string v0, "Instrument"

    goto :goto_0

    :pswitch_16
    const-string v0, "RestrictiveDataFiltering"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
