.class public final enum Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognizedPersonOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public static final enum CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public static final enum CLIPBOARD:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public static final enum SEARCH:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public static final enum SIGNAL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public static final enum SMS_MESSAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public static final enum TELEGRAM:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public static final enum VIBER:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public static final enum VONAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public static final enum WHATSAPP:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

.field public static final enum WHATSAPP4B:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;


# instance fields
.field public final colorDark:I

.field public final colorLight:I

.field public final comtype:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

.field public final imNameStringResId:I

.field public final index:I

.field public final isIM:Z

.field public final pkgName:Ljava/lang/String;

.field public final senderType:Lcom/callapp/contacts/manager/Singletons$SenderType;

.field public final showsRecognizedNotification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 126
    new-instance v12, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    sget-object v8, Lcom/callapp/contacts/manager/Singletons$SenderType;->WHATSAPP:Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-string v1, "WHATSAPP"

    const/4 v2, 0x0

    const-string v3, "com.whatsapp"

    const v4, 0x7f120395

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const v10, 0x7f060061

    const v11, 0x7f060060

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V

    sput-object v12, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->WHATSAPP:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 127
    new-instance v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    sget-object v21, Lcom/callapp/contacts/manager/Singletons$SenderType;->SIGNAL:Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-string v14, "SIGNAL"

    const/4 v15, 0x1

    const-string v16, "org.thoughtcrime.securesms"

    const v17, 0x7f12038d

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v22, 0x1

    const v23, 0x7f060057

    const v24, 0x7f060056

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V

    sput-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SIGNAL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 128
    new-instance v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    sget-object v33, Lcom/callapp/contacts/manager/Singletons$SenderType;->VIBER:Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-string v26, "VIBER"

    const/16 v27, 0x2

    const-string v28, "com.viber.voip"

    const v29, 0x7f120392

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v34, 0x2

    const v35, 0x7f06005d

    const v36, 0x7f06005c

    move-object/from16 v25, v1

    invoke-direct/range {v25 .. v36}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V

    sput-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->VIBER:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 129
    new-instance v2, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    sget-object v21, Lcom/callapp/contacts/manager/Singletons$SenderType;->TELEGRAM:Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-string v14, "TELEGRAM"

    const/4 v15, 0x3

    const-string v16, "org.telegram.messenger"

    const v17, 0x7f120390

    const/16 v22, 0x3

    const v23, 0x7f06005b

    const v24, 0x7f06005a

    move-object v13, v2

    invoke-direct/range {v13 .. v24}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V

    sput-object v2, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->TELEGRAM:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 130
    new-instance v3, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    const-string v26, "VONAGE"

    const/16 v27, 0x4

    const-string v28, "com.vonage.TimeToCall"

    const v29, 0x7f120393

    const/16 v33, 0x0

    const/16 v34, 0x4

    const v35, 0x7f06005f

    const v36, 0x7f06005e

    move-object/from16 v25, v3

    invoke-direct/range {v25 .. v36}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V

    sput-object v3, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->VONAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 131
    new-instance v4, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    sget-object v19, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    sget-object v21, Lcom/callapp/contacts/manager/Singletons$SenderType;->SMS:Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-string v14, "SMS_MESSAGE"

    const/4 v15, 0x5

    const-string v16, ""

    const v17, 0x7f12038f

    const/16 v18, 0x0

    const/16 v22, 0x5

    const v23, 0x7f060059

    const v24, 0x7f060058

    move-object v13, v4

    invoke-direct/range {v13 .. v24}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V

    sput-object v4, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SMS_MESSAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 132
    new-instance v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    sget-object v31, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->SEARCH:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    const-string v26, "SEARCH"

    const/16 v27, 0x6

    const-string v28, ""

    const v29, 0x7f12038c

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x6

    const v35, 0x7f060055

    const v36, 0x7f060054

    move-object/from16 v25, v5

    invoke-direct/range {v25 .. v36}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V

    sput-object v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SEARCH:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 133
    new-instance v6, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    sget-object v19, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    const-string v14, "CALL"

    const/4 v15, 0x7

    const-string v16, ""

    const v17, 0x7f120388

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x7

    const v23, 0x7f060055

    const v24, 0x7f060054

    move-object v13, v6

    invoke-direct/range {v13 .. v24}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V

    sput-object v6, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 134
    new-instance v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    sget-object v31, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CLIPBOARD:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    const-string v26, "CLIPBOARD"

    const/16 v27, 0x8

    const-string v28, ""

    const v29, 0x7f120389

    const/16 v34, 0x8

    move-object/from16 v25, v7

    invoke-direct/range {v25 .. v36}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V

    sput-object v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CLIPBOARD:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    .line 135
    new-instance v8, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    sget-object v21, Lcom/callapp/contacts/manager/Singletons$SenderType;->WHATSAPP4B:Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-string v14, "WHATSAPP4B"

    const/16 v15, 0x9

    const-string v16, "com.whatsapp.w4b"

    const v17, 0x7f120396

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v22, 0x9

    const v23, 0x7f060061

    const v24, 0x7f060060

    move-object v13, v8

    invoke-direct/range {v13 .. v24}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V

    sput-object v8, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->WHATSAPP4B:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    const/16 v9, 0xa

    new-array v9, v9, [Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    const/4 v10, 0x0

    aput-object v12, v9, v10

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v3, v9, v0

    const/4 v0, 0x5

    aput-object v4, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v6, v9, v0

    const/16 v0, 0x8

    aput-object v7, v9, v0

    const/16 v0, 0x9

    aput-object v8, v9, v0

    .line 124
    sput-object v9, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->$VALUES:[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZLcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;ZLcom/callapp/contacts/manager/Singletons$SenderType;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;",
            "Z",
            "Lcom/callapp/contacts/manager/Singletons$SenderType;",
            "III)V"
        }
    .end annotation

    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    iput-object p3, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->pkgName:Ljava/lang/String;

    .line 149
    iput p4, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->imNameStringResId:I

    .line 150
    iput-boolean p5, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->isIM:Z

    .line 151
    iput-object p6, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->comtype:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 152
    iput-boolean p7, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->showsRecognizedNotification:Z

    .line 153
    iput-object p8, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->senderType:Lcom/callapp/contacts/manager/Singletons$SenderType;

    .line 154
    iput p9, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->index:I

    .line 155
    iput p10, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->colorLight:I

    .line 156
    iput p11, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->colorDark:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
    .locals 1

    .line 124
    const-class v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;
    .locals 1

    .line 124
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->$VALUES:[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 161
    iget v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->imNameStringResId:I

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
