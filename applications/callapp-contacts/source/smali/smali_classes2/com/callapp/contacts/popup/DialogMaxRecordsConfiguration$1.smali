.class Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->setupGroup(Landroid/view/LayoutInflater;Landroid/widget/RadioGroup;[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$1;->this$0:Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 111
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->values()[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    move-result-object p1

    aget-object p1, p1, p2

    sget-object v0, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->CONF_1000:Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$1;->this$0:Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;

    invoke-static {p1}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->access$000(Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;)Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 113
    iget-object p1, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$1;->this$0:Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;

    invoke-static {p1}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->access$000(Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;)Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;->openPlanPageViaRecordDialog()V

    goto :goto_0

    .line 116
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->eS:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->values()[Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/enums/MaxRecordConfiguration;->getValue()I

    move-result p1

    const p2, 0x7f1206fc

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$1;->this$0:Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;

    invoke-static {v0}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->access$000(Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;)Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$1;->this$0:Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;

    invoke-static {v0}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->access$000(Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;)Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;->recordingToSave(Ljava/lang/String;I)V

    .line 123
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$1;->this$0:Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration;->dismiss()V

    return-void
.end method
