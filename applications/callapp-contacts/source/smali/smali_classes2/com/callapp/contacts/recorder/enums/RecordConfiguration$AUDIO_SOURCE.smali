.class public final enum Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/enums/RecordConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUDIO_SOURCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

.field public static final enum DEFAULT:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

.field public static final enum MIC:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

.field public static final enum VOICE_CALL:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

.field public static final enum VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

.field public static final enum VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;


# instance fields
.field private final source:I

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 90
    new-instance v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-string v3, "Default"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->DEFAULT:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 91
    new-instance v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    const-string v3, "MIC"

    const/4 v4, 0x1

    const-string v5, "Mic"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->MIC:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 92
    new-instance v3, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    const-string v5, "VOICE_CALL"

    const/4 v6, 0x2

    const/4 v7, 0x4

    const-string v8, "Voice Call"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_CALL:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 93
    new-instance v5, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    const-string v8, "VOICE_RECOGNITION"

    const/4 v9, 0x3

    const/4 v10, 0x6

    const-string v11, "Voice Recognition"

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 94
    new-instance v8, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    const-string v10, "VOICE_COMMUNICATION"

    const/4 v11, 0x7

    const-string v12, "Voice Communication"

    invoke-direct {v8, v10, v7, v11, v12}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v9

    aput-object v8, v10, v7

    .line 89
    sput-object v10, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->$VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->source:I

    .line 101
    iput-object p4, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->source:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;
    .locals 1

    .line 89
    const-class v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;
    .locals 1

    .line 89
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->$VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0}, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    return-object v0
.end method


# virtual methods
.method public final getSource()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->source:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AUDIO_SOURCE{title=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
