.class public Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;
.super Lcom/callapp/contacts/manager/popup/DialogPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;,
        Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;,
        Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;,
        Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;,
        Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u0000 72\u00020\u0001:\u000556789B5\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0013\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001a\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u001eH\u0005J\u0008\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#H\u0002J\u0010\u0010$\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#H\u0002J\u0008\u0010%\u001a\u00020\u0018H\u0002J\u0012\u0010&\u001a\u00020\u00182\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0014J\u001a\u0010)\u001a\u00020#2\u0006\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010.\u001a\u00020\u00182\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00182\u0006\u00102\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u001bH\u0002J\u000e\u00104\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020#R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0011j\u0008\u0012\u0004\u0012\u00020\u0006`\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006:"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;",
        "Lcom/callapp/contacts/manager/popup/DialogPopup;",
        "driveModeOverlayViewInterface",
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;",
        "bluetoothDevicesList",
        "",
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;",
        "isFromBluetoothReceiver",
        "",
        "carViewType",
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;",
        "(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;Ljava/util/List;ZLcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;)V",
        "driveModeDescription",
        "Landroid/widget/TextView;",
        "leftButtonText",
        "rightButtonText",
        "selectedBluetoothDeviceData",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getSelectedBluetoothDeviceData",
        "()Ljava/util/ArrayList;",
        "setSelectedBluetoothDeviceData",
        "(Ljava/util/ArrayList;)V",
        "dismiss",
        "",
        "getAddressStringArray",
        "",
        "",
        "()[Ljava/lang/String;",
        "getLayoutResource",
        "",
        "getPopupType",
        "Lcom/callapp/contacts/manager/popup/Popup$DialogType;",
        "initCommonView",
        "itemView",
        "Landroid/view/View;",
        "initGeneral",
        "initOutgoing",
        "onDialogCancelled",
        "dialog",
        "Landroid/content/DialogInterface;",
        "ovViewCreated",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "setDialogWindowSize",
        "window",
        "Landroid/view/Window;",
        "setRightButton",
        "isEnabled",
        "buttonText",
        "setupViews",
        "BluetoothDeviceViewHolder",
        "CarViewType",
        "Companion",
        "DriveModeOverlayViewInterface",
        "ListAdapter",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$Companion;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z

.field private final i:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;Ljava/util/List;ZLcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;",
            ">;Z",
            "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;",
            ")V"
        }
    .end annotation

    const-string v0, "carViewType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->f:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->g:Ljava/util/List;

    iput-boolean p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->h:Z

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->i:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;Ljava/util/List;ZLcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p3, 0x0

    .line 37
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;Ljava/util/List;ZLcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;)V

    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 8

    .line 114
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Car mode"

    const-string v2, "ViewCarModePopUp"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->h:Z

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ha:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 118
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 120
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->gT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v2}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)Ljava/util/List;

    move-result-object v2

    .line 121
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 122
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const-string v5, "mBluetoothAdapter.getRemoteDevice(deviceAddress)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 124
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->e:Ljava/util/ArrayList;

    new-instance v6, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;

    const-string v7, "deviceName"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "deviceAddress"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v4, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->e:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const v3, 0x7f0a0353

    .line 131
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "driveModeTitle"

    .line 132
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f1202ce

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0601ec

    .line 133
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x0

    .line 134
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f0a0352

    .line 137
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v5, "driveModeSubTitle"

    .line 138
    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f1202cd

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0601cc

    .line 139
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->d:Landroid/widget/TextView;

    if-nez v3, :cond_3

    const-string v5, "driveModeDescription"

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    const v5, 0x7f1202c7

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0337

    .line 144
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "divider"

    .line 145
    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0600f3

    .line 146
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const v3, 0x7f0a0142

    .line 148
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "bluetoothDevices"

    .line 149
    invoke-static {p1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 151
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 152
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->g:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 153
    new-instance v4, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;

    invoke-direct {v4, p0, v3}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;Ljava/util/List;)V

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    :cond_4
    const p1, 0x7f120225

    .line 156
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Activities.getString(R.string.connect)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->a(ZLjava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->b:Landroid/widget/TextView;

    if-nez p1, :cond_5

    const-string v3, "rightButtonText"

    invoke-static {v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_5
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$2;

    invoke-direct {v3, p0, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$2;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;Z)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->c:Landroid/widget/TextView;

    const-string v0, "leftButtonText"

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    iget-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->h:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->ha:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-le v3, v2, :cond_7

    .line 175
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "ClickCarModeNeverShow"

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f1202c8

    .line 176
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    .line 178
    :cond_7
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v2

    const-string v3, "ClickCarModeDisable"

    invoke-virtual {v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f1202b4

    .line 179
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 174
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->c:Landroid/widget/TextView;

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_8
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initGeneral$3;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;ZLjava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private final a(ZLjava/lang/String;)V
    .locals 10

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->b:Landroid/widget/TextView;

    const-string v1, "rightButtonText"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x7f060088

    if-eqz p1, :cond_1

    .line 243
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const p1, 0x7f06010f

    .line 245
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    .line 248
    :goto_0
    sget-object v2, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;

    .line 249
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->b:Landroid/widget/TextView;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 250
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const p1, 0x7f060244

    .line 251
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 252
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 p1, 0x0

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 254
    new-instance v9, Landroid/text/SpannableString;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-direct {v9, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const p1, 0x7f08058d

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 248
    invoke-static/range {v3 .. v9}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;->a(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;)V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->h:Z

    return p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->f:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->gT:[Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-static {v1}, Lcom/callapp/contacts/manager/preferences/PrefsUtils;->a([Lcom/callapp/contacts/manager/preferences/prefs/StringPref;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$DriveModeOverlayViewInterface;->a(Z)V

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    return-void
.end method

.method public final getAddressStringArray()[Ljava/lang/String;
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->e:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;

    .line 234
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final getLayoutResource()I
    .locals 1

    const v0, 0x7f0d00f4

    return v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 96
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->roundedCenter:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public final getSelectedBluetoothDeviceData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onDialogCancelled(Landroid/content/DialogInterface;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->onDialogCancelled(Landroid/content/DialogInterface;)V

    .line 61
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->dismiss()V

    return-void
.end method

.method public ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->getLayoutResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view"

    .line 75
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->setupViews(Landroid/view/View;)V

    return-object p1
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    const-string/jumbo v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public final setupViews(Landroid/view/View;)V
    .locals 9

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gX:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const v0, 0x7f0a0759

    .line 1080
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.rightButtonText)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0569

    .line 1081
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById(R.id.leftButtonText)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->c:Landroid/widget/TextView;

    const-string v1, "leftButtonText"

    if-nez v0, :cond_0

    .line 1082
    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const v2, 0x7f0600f2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0351

    .line 1083
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "itemView.findViewById(R.id.driveModeDescription)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->d:Landroid/widget/TextView;

    const-string v2, "driveModeDescription"

    if-nez v0, :cond_1

    .line 1084
    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const v3, 0x7f0601ec

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0244

    .line 1085
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v4, "closeButton"

    .line 1086
    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    check-cast v4, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1087
    new-instance v3, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initCommonView$1;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initCommonView$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02a6

    .line 1091
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0805aa

    const v4, 0x7f060026

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;II)V

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->i:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$WhenMappings;->a:[I

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$CarViewType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    goto/16 :goto_0

    .line 1197
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Car mode"

    const-string v4, "ViewCarModePopUpOutgoing"

    invoke-virtual {p1, v0, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1201
    new-instance v0, Landroid/text/SpannableString;

    const v4, 0x7f1202ca

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1202
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1203
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const v5, 0x3fa66666    # 1.3f

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1205
    new-instance v4, Landroid/text/SpannableString;

    const v5, 0x7f1202cb

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1206
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1208
    new-instance v5, Landroid/text/SpannableString;

    const v7, 0x7f1202cc

    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1209
    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f4ccccd    # 0.8f

    invoke-direct {v7, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v5, v7, v6, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1211
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v0, "\n"

    .line 1212
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1213
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1214
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1215
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1216
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1218
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->c:Landroid/widget/TextView;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    const v4, 0x7f1204c5

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->c:Landroid/widget/TextView;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initOutgoing$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initOutgoing$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->d:Landroid/widget/TextView;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_5
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f120878

    .line 1223
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activities.getString(R.string.yes)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->a(ZLjava/lang/String;)V

    .line 1224
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->b:Landroid/widget/TextView;

    if-nez p1, :cond_6

    const-string v0, "rightButtonText"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initOutgoing$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initOutgoing$2;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    .line 106
    :cond_7
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->a(Landroid/view/View;)V

    return-void
.end method
