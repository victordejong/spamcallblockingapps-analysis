.class synthetic Lcom/callapp/contacts/recorder/enums/RecordConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/enums/RecordConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 192
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$1;->$SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT:[I

    :try_start_0
    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$1;->$SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT:[I

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->WAV:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$1;->$SwitchMap$com$callapp$contacts$recorder$enums$RecordConfiguration$FILE_FORMAT:[I

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->MPEG_4:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
