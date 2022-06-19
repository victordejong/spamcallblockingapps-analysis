.class public final Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$2",
        "Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;",
        "onViewClicked",
        "",
        "v",
        "Landroid/view/View;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$2;->b:Z

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Car mode"

    const-string v1, "ClickCarModeConnect"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Ljava/lang/String;[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)V

    .line 162
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->getAddressStringArray()[Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Ljava/lang/String;[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)V

    .line 163
    invoke-static {}, Lcom/callapp/contacts/receiver/BluetoothReceiver;->isCarBluetoothConnected()Z

    move-result p1

    .line 164
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gU:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 165
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$2;->b:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 167
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gV:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 168
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->dismiss()V

    return-void
.end method
