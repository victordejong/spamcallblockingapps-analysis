.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5",
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 5

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;

    iget-boolean p1, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->b:Z

    if-nez p1, :cond_1

    .line 178
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;

    iget-object p1, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->e:Landroid/widget/LinearLayout;

    .line 179
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const-string v2, "binding.step2Container"

    const/4 v3, 0x0

    const-string v4, "binding.arrowToggle"

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;

    iget-object p1, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->f:Landroid/widget/ImageView;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 182
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;

    iget-object p1, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->s:Landroid/widget/LinearLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;

    iget-object v0, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->f:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 185
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1$5;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;

    iget-object p1, p1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$step1Android10$1;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-static {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;->b(Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;)Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/RecorderTestTutorialBinding;->s:Landroid/widget/LinearLayout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
