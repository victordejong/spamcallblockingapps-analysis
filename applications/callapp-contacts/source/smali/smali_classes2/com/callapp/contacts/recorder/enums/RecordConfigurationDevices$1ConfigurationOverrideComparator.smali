.class final Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$1ConfigurationOverrideComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices;->findConfigurationOverride(Ljava/lang/String;)Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "1ConfigurationOverrideComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;)I
    .locals 2

    .line 186
    new-instance v0, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ManufacturerComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ManufacturerComparator;-><init>(Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$1;)V

    invoke-static {p1}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->access$100(Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;->access$100(Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ManufacturerComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 183
    check-cast p1, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;

    check-cast p2, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$1ConfigurationOverrideComparator;->compare(Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;Lcom/callapp/contacts/recorder/enums/RecordConfigurationDevices$ConfigurationOverride;)I

    move-result p1

    return p1
.end method
