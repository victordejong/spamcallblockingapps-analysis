.class final Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->onApplyClicked(J)V
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
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;J)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$2;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;

    iput-wide p2, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 276
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$2;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->setAsApplied(J)V

    .line 277
    sget-object p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard$onApplyClicked$dialogMessageWithTopImageNew$2;->a:Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/RecorderTestCard;->getRecorderTestData()Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setRecordingConfiguration(Lcom/callapp/contacts/recorder/recordertest/RecorderTestData;)V

    return-void
.end method
