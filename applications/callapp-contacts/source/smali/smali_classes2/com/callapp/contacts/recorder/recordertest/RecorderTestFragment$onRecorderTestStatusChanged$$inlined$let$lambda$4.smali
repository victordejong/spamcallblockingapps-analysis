.class final Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->onRecorderTestStatusChanged(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$RecorderTestManagerStatus;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$1$6"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onRecorderTestStatusChanged$$inlined$let$lambda$4;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->e(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestFragmentBinding;->b:Landroid/widget/TextView;

    const-string v1, "binding.recorderTestTopTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
