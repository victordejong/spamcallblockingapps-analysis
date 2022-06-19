.class public Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationResult"
.end annotation


# instance fields
.field public audio_source:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

.field public fic:Z

.field public loud:J

.field public method:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_COMMUNICATION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    iput-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationResult;->audio_source:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    .line 69
    sget-object v0, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;->METHOD_NON_NATIVE:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    iput-object v0, p0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationResult;->method:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$METHOD;

    return-void
.end method
