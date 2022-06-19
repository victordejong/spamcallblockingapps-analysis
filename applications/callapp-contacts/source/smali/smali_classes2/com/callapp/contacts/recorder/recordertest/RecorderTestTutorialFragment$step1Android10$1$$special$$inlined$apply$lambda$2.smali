.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$4$1",
        "Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;",
        "onViewClicked",
        "",
        "v",
        "Landroid/view/View;",
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
.field final synthetic a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$2;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;

    .line 154
    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$2;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;

    iget-object p1, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->e:Landroid/widget/LinearLayout;

    const-string v0, "binding.accessibilityPermissionContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$$special$$inlined$apply$lambda$2;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;

    iget-object p1, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->s:Landroid/widget/LinearLayout;

    const-string v0, "binding.step2Container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
