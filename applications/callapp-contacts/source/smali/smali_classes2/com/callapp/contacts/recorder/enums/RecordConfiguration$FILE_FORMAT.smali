.class public final enum Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/enums/RecordConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FILE_FORMAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

.field public static final enum AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

.field public static final enum MPEG_4:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

.field public static final enum WAV:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;


# instance fields
.field private final fileSuffix:Ljava/lang/String;

.field private final format:I

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 122
    new-instance v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const-string v1, "AMR"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "amr"

    const-string v5, "AMR"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    .line 123
    new-instance v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const-string v8, "WAV"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "wav"

    const-string v12, "WAV"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->WAV:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    .line 124
    new-instance v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const-string v14, "MPEG_4"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const-string v17, "mp4"

    const-string v18, "MPEG4"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->MPEG_4:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 121
    sput-object v2, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->$VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput p3, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->format:I

    .line 132
    iput-object p4, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->fileSuffix:Ljava/lang/String;

    .line 133
    iput-object p5, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->format:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;
    .locals 1

    .line 121
    const-class v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;
    .locals 1

    .line 121
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->$VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v0}, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    return-object v0
.end method


# virtual methods
.method public final getFileSuffix()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->fileSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormat()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->format:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FILE_FORMAT{format="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileSuffix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->fileSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
