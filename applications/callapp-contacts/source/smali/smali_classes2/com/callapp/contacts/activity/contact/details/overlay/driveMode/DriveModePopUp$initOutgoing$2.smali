.class final Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initOutgoing$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initOutgoing$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 225
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 226
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp$initOutgoing$2;->a:Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/driveMode/DriveModePopUp;->dismiss()V

    return-void
.end method
