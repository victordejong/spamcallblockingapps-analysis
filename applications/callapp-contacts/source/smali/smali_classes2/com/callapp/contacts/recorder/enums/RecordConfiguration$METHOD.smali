.class public final enum Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/enums/RecordConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "METHOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

.field public static final enum METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

.field public static final enum METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;


# instance fields
.field private final title:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    const-string v1, "METHOD_NATIVE"

    const/4 v2, 0x0

    const-string v3, "AudioRecorder"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    .line 28
    new-instance v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    const-string v3, "METHOD_NON_NATIVE"

    const/4 v4, 0x1

    const-string v5, "MediaRecorder"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 26
    sput-object v3, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->$VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

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

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p4, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->title:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->value:I

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;
    .locals 1

    .line 26
    const-class v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;
    .locals 1

    .line 26
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->$VALUES:[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    invoke-virtual {v0}, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->value:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "METHOD{title=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
