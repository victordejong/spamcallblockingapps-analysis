.class final Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->b:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 302
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 303
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->getDriveModeCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    .line 304
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->getDriveModeCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 305
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->u:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->getSelectedBluetoothDeviceData()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->b:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->u:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->getSelectedBluetoothDeviceData()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->b:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/BluetoothDeviceData;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->getDriveModeCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->a(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;Z)V

    .line 311
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->u:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder$bind$1;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$BluetoothDeviceViewHolder;->u:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->getSelectedBluetoothDeviceData()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    xor-int/2addr v0, v1

    const v1, 0x7f120225

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Activities.getString(R.string.connect)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->a(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;ZLjava/lang/String;)V

    return-void
.end method
