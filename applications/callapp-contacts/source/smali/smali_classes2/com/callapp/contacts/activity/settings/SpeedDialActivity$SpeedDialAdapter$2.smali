.class Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$2;
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
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;I)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$2;->b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;

    iput p2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 219
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 220
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$2;->b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;

    iget-object p1, p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->c:Lcom/callapp/contacts/activity/settings/SpeedDialActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$2;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 222
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->setName(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->setPhoneNumber(Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter$2;->b:Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
