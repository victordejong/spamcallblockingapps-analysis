.class final Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$initPage2$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->a()V
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
        "com/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$initPage2$3$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$initPage2$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$initPage2$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->getRecorderTestWizardEvents()Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$RecorderTestWizardEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "rec_ensure_quality"

    invoke-interface {p1, v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$RecorderTestWizardEvents;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
