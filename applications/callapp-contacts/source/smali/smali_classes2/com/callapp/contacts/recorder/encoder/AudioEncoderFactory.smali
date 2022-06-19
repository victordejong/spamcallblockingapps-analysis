.class public Lcom/callapp/contacts/recorder/encoder/AudioEncoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;)Lcom/callapp/contacts/recorder/encoder/AudioEncoder;
    .locals 1

    .line 8
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;->AMR:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$FILE_FORMAT;

    if-ne p0, v0, :cond_0

    .line 9
    new-instance p0, Lcom/callapp/contacts/recorder/encoder/AMREncoder;

    invoke-direct {p0}, Lcom/callapp/contacts/recorder/encoder/AMREncoder;-><init>()V

    return-object p0

    .line 11
    :cond_0
    new-instance p0, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;

    invoke-direct {p0}, Lcom/callapp/contacts/recorder/encoder/WaveEncoder;-><init>()V

    return-object p0
.end method
