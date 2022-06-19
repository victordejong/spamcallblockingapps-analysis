.class public Lcom/callapp/contacts/service/jobs/BluetoothServiceV1;
.super Landroidx/core/app/SafeJobIntentService;
.source "SourceFile"


# static fields
.field public static j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/callapp/contacts/service/jobs/BluetoothServiceV1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/core/app/SafeJobIntentService;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/util/List;)V
    .locals 6

    .line 61
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->GENERAL:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v4, p0, v5, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;Ljava/util/List;ZLcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;)V

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method public static synthetic lambda$wkoxiqW-bIezLiKh-Dd1uFFqOwE(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/service/jobs/BluetoothServiceV1;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 10

    .line 37
    invoke-static {}, Lcom/callapp/contacts/receiver/BluetoothReceiver;->b()Z

    move-result v0

    const/16 v1, 0xa

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    const-string v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_b

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_9

    .line 40
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->gT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v7}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)Ljava/util/List;

    move-result-object v7

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const-string v9, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 43
    :cond_0
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_8

    .line 45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v7}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-array p1, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v7, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 47
    :cond_2
    sget-object p1, Lcom/callapp/contacts/service/jobs/BluetoothServiceV1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 53
    :cond_3
    invoke-static {v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p1

    const/16 v2, 0x400

    if-ne p1, v2, :cond_7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 54
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ha:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gZ:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->ha:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    rem-int/2addr p1, v2

    if-nez p1, :cond_6

    .line 55
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/receiver/BluetoothReceiver;->getBluetoothCarDeviceList()Ljava/util/List;

    move-result-object p1

    .line 56
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v6, [Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;

    aput-object v1, v0, v5

    .line 57
    invoke-static {p1, v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_5
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/service/jobs/-$$Lambda$BluetoothServiceV1$wkoxiqW-bIezLiKh-Dd1uFFqOwE;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/service/jobs/-$$Lambda$BluetoothServiceV1$wkoxiqW-bIezLiKh-Dd1uFFqOwE;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 62
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gZ:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 64
    :cond_6
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gZ:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1039
    invoke-virtual {p1, v6}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    return-void

    :cond_7
    new-array p1, v6, [Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {v7, p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 67
    sget-object p1, Lcom/callapp/contacts/service/jobs/BluetoothServiceV1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_8
    :goto_1
    return-void

    .line 74
    :cond_9
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_a

    .line 76
    sget-object p1, Lcom/callapp/contacts/service/jobs/BluetoothServiceV1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_a
    return-void

    .line 82
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    sparse-switch v7, :sswitch_data_0

    :goto_2
    const/4 v0, -0x1

    goto :goto_3

    :sswitch_0
    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    const/4 v0, 0x3

    goto :goto_3

    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_2

    :cond_d
    const/4 v0, 0x2

    goto :goto_3

    :sswitch_2
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    const/4 v0, 0x1

    goto :goto_3

    :sswitch_3
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    const/4 v0, 0x0

    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    const-string v0, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 89
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_4

    :cond_10
    const/4 v1, 0x0

    .line 90
    :goto_4
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v8, :cond_11

    if-eqz v1, :cond_16

    :cond_11
    if-eqz v1, :cond_17

    :goto_5
    const/4 v5, 0x1

    goto :goto_9

    .line 100
    :pswitch_1
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    .line 101
    :goto_6
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v8, :cond_13

    if-eqz v0, :cond_16

    :cond_13
    if-eqz v0, :cond_17

    goto :goto_5

    .line 111
    :pswitch_2
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    .line 113
    :goto_7
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_15

    if-eqz v0, :cond_16

    :cond_15
    if-eqz v0, :cond_17

    goto :goto_5

    :pswitch_3
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 84
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq v0, p1, :cond_16

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v6, 0x0

    :cond_17
    :goto_9
    if-eqz v5, :cond_18

    .line 124
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->g()V

    return-void

    :cond_18
    if-eqz v6, :cond_19

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/ProximityManager;->b()V

    :cond_19
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_3
        -0x5591500b -> :sswitch_2
        0x2083ec2d -> :sswitch_1
        0x42f3be3f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
