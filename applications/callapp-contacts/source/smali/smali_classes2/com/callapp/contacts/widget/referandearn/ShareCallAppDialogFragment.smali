.class public final Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;
.super Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 12\u00020\u00012\u00020\u0002:\u00011B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001d\u001a\u00020\u0013H\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u001fH\u0016J\u0018\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\r2\u0006\u0010!\u001a\u00020\"H\u0016J&\u0010&\u001a\u0004\u0018\u00010\'2\u0006\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0008\u0010.\u001a\u00020\u001fH\u0016J\u0008\u0010/\u001a\u00020\u001fH\u0016J\u0008\u00100\u001a\u00020\u001fH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u00062"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;",
        "Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;",
        "()V",
        "adapter",
        "Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;",
        "getAdapter",
        "()Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;",
        "setAdapter",
        "(Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;)V",
        "contactData",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "entryPoint",
        "",
        "getEntryPoint",
        "()Ljava/lang/String;",
        "setEntryPoint",
        "(Ljava/lang/String;)V",
        "fragmentIndex",
        "",
        "progressBar",
        "Landroid/widget/ProgressBar;",
        "source",
        "viewPager",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "getViewPager",
        "()Landroidx/viewpager2/widget/ViewPager2;",
        "setViewPager",
        "(Landroidx/viewpager2/widget/ViewPager2;)V",
        "getLayoutResource",
        "loadSMSFragment",
        "",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onBackPressed",
        "onCopyClicked",
        "shareLink",
        "onCreateView",
        "Landroid/view/View;",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "bundle",
        "Landroid/os/Bundle;",
        "onDismiss",
        "onInviteClicked",
        "onSMSClicked",
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
.field public static final g:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;

.field private static final l:Ljava/lang/String;


# instance fields
.field public c:Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;

.field public e:Landroidx/viewpager2/widget/ViewPager2;

.field public f:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/ProgressBar;

.field private j:Lcom/callapp/contacts/model/contact/ContactData;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->g:Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;

    .line 52
    const-class v0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareCallAppDialogFragment::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->k:I

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .line 28
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->i:Landroid/widget/ProgressBar;

    if-nez p0, :cond_0

    const-string v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final a(Lcom/callapp/contacts/model/contact/ContactData;ILjava/lang/String;)Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$Companion;->a(Lcom/callapp/contacts/model/contact/ContactData;ILjava/lang/String;)Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->f()V

    return-void
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->l:Ljava/lang/String;

    return-object v0
.end method

.method private final f()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->c:Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;

    const-string v1, "adapter"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;

    iget-object v2, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->j:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v2}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;->a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;->a(Landroidx/fragment/app/Fragment;)V

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->c:Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;->notifyItemInserted(I)V

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->e:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_2

    const-string v2, "viewPager"

    invoke-static {v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public static final getTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const-string v0, "shareLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->get()Lcom/callapp/contacts/manager/CallAppClipboardManager;

    move-result-object p2

    const v0, 0x7f1205aa

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const p2, 0x7f120246

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1111
    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a()V

    return-void
.end method

.method public final c()V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->a()V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->e:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public final getLayoutResource()I
    .locals 1

    const v0, 0x7f0d0267

    return v0
.end method

.method public final getViewPager()Landroidx/viewpager2/widget/ViewPager2;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->e:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extra_contact_data"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->j:Lcom/callapp/contacts/model/contact/ContactData;

    const-string v0, "extra_entry_point"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->f:Ljava/lang/String;

    const-string v0, "extra_fragment_index"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->k:I

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/referandearn/BaseBottomSheetDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 77
    new-instance p1, Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string p3, "childFragmentManager"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p3

    const-string v0, "lifecycle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/j;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->c:Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;

    .line 78
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getRootView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const p3, 0x7f0a0aa8

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 79
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const p2, 0x7f0a06f7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/widget/ProgressBar;

    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->i:Landroid/widget/ProgressBar;

    .line 80
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->c:Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;

    const-string p2, "adapter"

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    new-instance p3, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnHintView;

    invoke-direct {p3}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnHintView;-><init>()V

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;->a(Landroidx/fragment/app/Fragment;)V

    .line 81
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->c:Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    sget-object p3, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;

    iget-object p3, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->j:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v1, "entryPoint"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_4
    invoke-static {p3, v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment$Companion;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/lang/String;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragment;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p3}, Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;->a(Landroidx/fragment/app/Fragment;)V

    .line 83
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->e:Landroidx/viewpager2/widget/ViewPager2;

    const-string p3, "viewPager"

    if-nez p1, :cond_5

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->c:Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;

    if-nez v0, :cond_6

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_6
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 84
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->e:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_7

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_7
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "EXTRA_SOURCE"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->h:Ljava/lang/String;

    .line 90
    :cond_8
    sget-object p1, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onCreateView$2;-><init>(Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;)V

    check-cast v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;

    .line 102
    iget-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->j:Lcom/callapp/contacts/model/contact/ContactData;

    .line 90
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->postPointsReferKey(Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 103
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->e:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_9

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_9
    iget v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->k:I

    invoke-virtual {p1, v0, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 104
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->i:Landroid/widget/ProgressBar;

    if-nez p1, :cond_a

    const-string v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_a
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->e:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p1, :cond_b

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setVisibility(I)V

    .line 107
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getRootView()Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0805ab

    const p3, 0x7f060026

    invoke-static {p3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p3

    const v0, 0x7f0600f3

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 110
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getRootView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final t_()V
    .locals 7

    .line 120
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.SEND_SMS"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.callapp.contacts.activity.base.BaseActivity"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    .line 122
    new-instance v2, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onSMSClicked$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onSMSClicked$1;-><init>(Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 123
    new-instance v3, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onSMSClicked$2;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment$onSMSClicked$2;-><init>(Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;)V

    check-cast v3, Ljava/lang/Runnable;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v5, 0x0

    .line 124
    sget-object v6, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->SMS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v6, v4, v5

    .line 121
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->f()V

    return-void
.end method

.method public final u_()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ShareCallAppDialogFragment;->e:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    const-string v1, "viewPager"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method
