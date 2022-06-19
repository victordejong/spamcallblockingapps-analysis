.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$onGreySelectChange$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;->a(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Landroid/view/View;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$onGreySelectChange$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$onGreySelectChange$$inlined$let$lambda$2;->a:Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$onGreySelectChange$$inlined$let$lambda$2;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$onGreySelectChange$$inlined$let$lambda$2;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 215
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$onGreySelectChange$$inlined$let$lambda$2;->a:Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->setChecked(Z)V

    .line 216
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$onGreySelectChange$$inlined$let$lambda$2;->c:Landroid/view/View;

    .line 217
    instance-of v1, p1, Lcom/callapp/contacts/widget/CallAppCheckBox;

    if-eqz v1, :cond_0

    .line 218
    check-cast p1, Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 220
    :cond_0
    instance-of v1, p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    if-eqz v1, :cond_1

    .line 221
    check-cast p1, Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {p1, v0, v0}, Lcom/callapp/contacts/widget/ProfilePictureView;->a(ZZ)V

    .line 224
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$onGreySelectChange$$inlined$let$lambda$2;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;->c()V

    .line 225
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$onGreySelectChange$$inlined$let$lambda$2;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
