.class Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;->b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;->a:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 233
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/callapp/contacts/activity/chooseContact/ChooseSingleNumberFromContactsActivity;

    new-instance v1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3$1;-><init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$3;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method
