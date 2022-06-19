.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;
.super Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$RecorderTestWizardEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J&\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;",
        "Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment$RecorderTestWizardEvents;",
        "()V",
        "getLayoutResource",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "bundle",
        "Landroid/os/Bundle;",
        "onStartRecorderTextClicked",
        "",
        "entryPoint",
        "",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;->c:Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "entryPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;->a()V

    return-void
.end method

.method public final getLayoutResource()I
    .locals 1

    const v0, 0x7f0d026d

    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 25
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;->getRootView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f060026

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    const p3, 0x7f0600f3

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    const v0, 0x7f0805ab

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, p3, v1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 27
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;

    invoke-direct {p2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorialFragment;-><init>()V

    check-cast p2, Landroidx/fragment/app/Fragment;

    const p3, 0x7f0a0434

    const/4 v0, 0x0

    .line 1293
    invoke-virtual {p1, p3, p2, v0}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    .line 29
    invoke-virtual {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestTutorial;->getRootView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
