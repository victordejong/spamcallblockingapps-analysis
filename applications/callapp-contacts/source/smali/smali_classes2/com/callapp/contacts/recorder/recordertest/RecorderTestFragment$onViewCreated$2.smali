.class final Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/RecorderTestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "onInterruptRecordingClicked"
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

    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$2;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 28

    move-object/from16 v0, p0

    .line 154
    sget-object v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isRecorderTestInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$2;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    .line 1303
    new-instance v3, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-object v2, v3

    invoke-direct {v3}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;-><init>()V

    .line 1304
    new-instance v4, Landroid/text/SpannableString;

    move-object v3, v4

    const v5, 0x7f120599

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v7, 0x7f06001b

    .line 1305
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f08058d

    .line 1306
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    .line 1308
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1309
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1311
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    const-string v9, "CallAppApplication.get()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f07035b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 1312
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    invoke-static {v8, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070359

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const v8, 0x7f060244

    .line 1314
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1315
    new-instance v9, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onHangButtonClicked$dialogMessageWithTopImageNew$1;

    invoke-direct {v9, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onHangButtonClicked$dialogMessageWithTopImageNew$1;-><init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)V

    move-object v10, v9

    check-cast v10, Landroid/view/View$OnClickListener;

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x32

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v20, 0xea40

    .line 1304
    invoke-static/range {v2 .. v20}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Landroid/text/SpannableString;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Landroid/view/View$OnClickListener;ZLjava/lang/Integer;ZZIIILjava/lang/Integer;Ljava/lang/Integer;I)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v21

    const/16 v22, 0x1e

    const/16 v23, 0x1e

    const/16 v24, 0x1e

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x23

    .line 1318
    invoke-static/range {v21 .. v27}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;IIIIZI)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v2

    .line 1319
    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getHangUpText()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const v4, 0x7f0601ec

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v2

    const v3, 0x3ee66666    # 0.45f

    .line 1320
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1425
    iput-object v3, v2, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a:Ljava/lang/Float;

    const v3, 0x7f0800b4

    .line 1321
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a(Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;Ljava/lang/Integer;)Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;

    move-result-object v2

    .line 1322
    invoke-virtual {v2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion$DialogMessageWithTopImageBuilder;->a()Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;

    move-result-object v2

    .line 1325
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v2, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v3, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 157
    :cond_0
    iget-object v1, v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$onViewCreated$2;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;)Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a()V

    :cond_1
    return-void
.end method
