.class public final Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;
.super Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0012H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;",
        "Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;",
        "()V",
        "personalType",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;",
        "requestCode",
        "",
        "selectedContacts",
        "Ljava/util/ArrayList;",
        "",
        "selectedVideo",
        "getLayoutResource",
        "onAttach",
        "",
        "context",
        "Landroid/content/Context;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "bundle",
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
.field public static final c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion;

.field private static final i:Ljava/lang/String;


# instance fields
.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->c:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment$Companion;

    .line 36
    const-class v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssignPersonalStoreItemD\u2026nt::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getLayoutResource()I
    .locals 1

    const v0, 0x7f0d026d

    return v0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "extra_selected_contacts"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->e:Ljava/util/ArrayList;

    const-string v0, "extra_selected_video"

    const-string v1, ""

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(AssignVideoRin\u2026EXTRA_SELECTED_VIDEO, \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->f:Ljava/lang/String;

    const-string v0, "extra_request_code"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->g:I

    const-string v0, "extra_personal_type"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->h:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v0, "selectedVideo"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f1204d3

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->a()V

    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 70
    sget-object p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$Companion;

    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->e:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->f:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p3, "selectedVideo"

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    iget p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->g:I

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->h:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    if-nez v0, :cond_1

    const-string v1, "personalType"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    invoke-static {p1, p2, p3, v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment$Companion;->a(Ljava/util/ArrayList;Ljava/lang/String;ILcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignVideoRingtoneFragment;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object p2

    check-cast p1, Landroidx/fragment/app/Fragment;

    const p3, 0x7f0a0434

    const/4 v0, 0x0

    .line 1293
    invoke-virtual {p2, p3, p1, v0}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroidx/fragment/app/s;->b()I

    .line 74
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/AssignPersonalStoreItemDialogFragment;->getRootView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
