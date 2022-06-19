.class public final Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$3;
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
        "com/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$3",
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


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$3;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/String;

    .line 184
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Ljava/lang/String;[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)V

    .line 185
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gU:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 186
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$3;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->a(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ha:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 188
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ha:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$3;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->getSelectedBluetoothDeviceData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$3;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->dismiss()V

    return-void
.end method
