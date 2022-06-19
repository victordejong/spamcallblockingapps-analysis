.class public final Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u0001B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\r\u001a\u00020\tH\u0016J\u001c\u0010\u000e\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\tH\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;",
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;",
        "list",
        "",
        "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;",
        "(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;Ljava/util/List;)V",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
    .locals 6

    .line 268
    check-cast p1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;

    const-string v0, "bluetoothDeviceData"

    .line 1276
    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->r:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->u:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->getSelectedBluetoothDeviceData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1294
    :cond_0
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->setDriveModeCheckBox(Z)V

    const/4 v0, 0x2

    new-array v2, v0, [I

    const v3, 0x7f060088

    .line 1296
    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const v3, 0x7f0601ec

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    aput v3, v2, v1

    new-array v0, v0, [[I

    new-array v3, v1, [I

    const v5, 0x10100a0

    aput v5, v3, v4

    aput-object v3, v0, v4

    new-array v3, v4, [I

    aput-object v3, v0, v1

    .line 1297
    check-cast v0, [[I

    .line 1299
    iget-object v1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->s:Landroid/widget/CheckBox;

    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static {v1, v3}, Landroidx/core/widget/c;->a(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 1301
    iget-object v0, p1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->t:Landroid/view/View;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 3

    const-string p2, "parent"

    .line 268
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 1271
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$ListAdapter;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    const-string v2, "inflater"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 268
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$v;

    return-object v0
.end method
