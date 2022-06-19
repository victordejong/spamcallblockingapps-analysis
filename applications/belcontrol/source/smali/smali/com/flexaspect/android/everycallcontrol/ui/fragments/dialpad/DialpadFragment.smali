.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;,
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;,
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "Lfv0;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/text/TextWatcher;",
        "Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$b;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Landroid/widget/LinearLayout;

.field public J:Landroid/widget/LinearLayout;

.field public K:Landroid/widget/LinearLayout;

.field public l:Landroid/view/View;

.field public m:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;

.field public n:Landroid/widget/EditText;

.field public o:I

.field public p:Z

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/media/ToneGenerator;

.field public final t:Ljava/lang/Object;

.field public u:Lrv0;

.field public final v:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public w:Landroid/widget/ListView;

.field public x:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;

.field public final y:Ll81;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->t:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->v:Ljava/util/HashSet;

    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->y:Ll81;

    const-string v0, ""

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->z:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->F:Z

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->G:Z

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->H:Z

    return-void
.end method

.method public static synthetic J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->U()Z

    move-result p0

    return p0
.end method

.method public static synthetic K(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->p0(Z)V

    return-void
.end method

.method public static Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static T(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string v1, "add_call_mode"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic Z(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lie1;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lie1;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic b0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lq71$g;->c:Lq71$g;

    invoke-virtual {v0, p1, v1, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->q(Li91;Ljava/lang/String;Lq71$g;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/kedlin/cca/ui/CCAFragmentActivity;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->v(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d0(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lnd;

    move-result-object p1

    invoke-virtual {p1}, Lnd;->j()Ltd;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->t0()Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;

    iget v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseCCAFragmentActivity;->f:I

    const-string v2, "LookupFragment"

    invoke-virtual {p1, v0, v1, v2}, Ltd;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ltd;

    invoke-virtual {p1, v2}, Ltd;->f(Ljava/lang/String;)Ltd;

    invoke-virtual {p1}, Ltd;->h()I

    return-void
.end method


# virtual methods
.method public F()V
    .locals 0

    return-void
.end method

.method public L()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    return-void
.end method

.method public final M(Landroid/view/View;)V
    .locals 4

    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, v1, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;

    invoke-virtual {v3, p0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;->setOnPressedListener(Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0487

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a06dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadKeyButton;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0487
        0x7f0a0669
        0x7f0a0644
        0x7f0a02c7
        0x7f0a02ba
        0x7f0a058b
        0x7f0a0579
        0x7f0a0277
        0x7f0a0478
        0x7f0a05a5
        0x7f0a06dd
        0x7f0a04c1
    .end array-data
.end method

.method public final N(Landroid/app/Activity;)V
    .locals 3

    instance-of v0, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n0(Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->W()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "DialpadFragment"

    const-string v0, "Screen configuration is requested before onCreateView() is called. Ignored"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->T(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->O(Landroid/content/Intent;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->F:Z

    if-eqz v2, :cond_2

    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->X()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->p0(Z)V

    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n0(Z)V

    return-void
.end method

.method public final O(Landroid/content/Intent;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->G:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->F:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iput-boolean v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->E:Z

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->m0(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.android.cursor.item/person"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "vnd.android.cursor.item/phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const-string p1, "number"

    const-string v0, "number_key"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->E:Z

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->m0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v3

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    :goto_0
    return v1
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->H:Z

    return v0
.end method

.method public final R()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->f0(I)V

    :goto_0
    return-void
.end method

.method public final S()V
    .locals 2

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->R()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lw91$a;->h:Lw91$a;

    invoke-static {p0, v1}, Lw91;->b(Ljava/lang/Object;Lw91$a;)V

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {v1, v0}, Lie1;->h(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final U()Z
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->w:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final V()Z
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final W()Z
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final X()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lov0;->e(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final Y(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v3, 0xb

    goto :goto_0

    :pswitch_1
    const/16 v3, 0xa

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x9

    goto :goto_0

    :pswitch_3
    const/16 v3, 0x8

    goto :goto_0

    :pswitch_4
    const/4 v3, 0x7

    goto :goto_0

    :pswitch_5
    const/4 v3, 0x6

    goto :goto_0

    :pswitch_6
    const/4 v3, 0x5

    goto :goto_0

    :pswitch_7
    const/4 v3, 0x4

    goto :goto_0

    :pswitch_8
    const/4 v3, 0x3

    goto :goto_0

    :pswitch_9
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->g0(II)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->g0(II)V

    goto :goto_1

    :pswitch_b
    invoke-virtual {p0, v1, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->g0(II)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v2, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic a0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->Z(Landroid/view/View;)V

    return-void
.end method

.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->E:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lmv0;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->E:Z

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->h0(Landroid/text/Editable;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->r0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->D:Z

    return-void
.end method

.method public synthetic c0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->b0(Landroid/view/View;)V

    return-void
.end method

.method public e(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const v0, 0x7f0a0487

    if-ne p2, v0, :cond_0

    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->Y(I)V

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f0a0669

    if-ne p2, v0, :cond_1

    const/16 p2, 0x9

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0644

    if-ne p2, v0, :cond_2

    const/16 p2, 0xa

    goto :goto_0

    :cond_2
    const v0, 0x7f0a02c7

    if-ne p2, v0, :cond_3

    const/16 p2, 0xb

    goto :goto_0

    :cond_3
    const v0, 0x7f0a02ba

    if-ne p2, v0, :cond_4

    const/16 p2, 0xc

    goto :goto_0

    :cond_4
    const v0, 0x7f0a058b

    if-ne p2, v0, :cond_5

    const/16 p2, 0xd

    goto :goto_0

    :cond_5
    const v0, 0x7f0a0579

    if-ne p2, v0, :cond_6

    const/16 p2, 0xe

    goto :goto_0

    :cond_6
    const v0, 0x7f0a0277

    if-ne p2, v0, :cond_7

    const/16 p2, 0xf

    goto :goto_0

    :cond_7
    const v0, 0x7f0a0478

    if-ne p2, v0, :cond_8

    const/16 p2, 0x10

    goto :goto_0

    :cond_8
    const v0, 0x7f0a06dd

    if-ne p2, v0, :cond_9

    const/4 p2, 0x7

    goto :goto_0

    :cond_9
    const v0, 0x7f0a04c1

    if-ne p2, v0, :cond_a

    const/16 p2, 0x12

    goto :goto_0

    :cond_a
    const v0, 0x7f0a05a5

    if-ne p2, v0, :cond_b

    const/16 p2, 0x11

    goto :goto_0

    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected onTouch(ACTION_DOWN) event from: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DialpadFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->v:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->v:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->v:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->q0()V

    :cond_d
    :goto_2
    return-void
.end method

.method public synthetic e0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->d0(Landroid/view/View;)V

    return-void
.end method

.method public final f0(I)V
    .locals 1

    const/16 v0, 0x96

    invoke-virtual {p0, p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->g0(II)V

    return-void
.end method

.method public final g0(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->s:Landroid/media/ToneGenerator;

    if-nez v1, :cond_2

    const-string p2, "DialpadFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTone: mToneGenerator == null, tone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {v1, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final h0(Landroid/text/Editable;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "*#3672366337267864#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "*#367236633482#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "*#25378946369#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "*#2727463#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "*#36723663354#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "*#9748373884647#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "*#3672366332886#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "*#73784234636#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_8
    const-string v0, "*#367237962#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    :goto_0
    const p1, 0x7f1104dc

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-class v0, Lf91;

    invoke-static {v0}, Lc91;->b(Ljava/lang/Class;)V

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lc91;->c()Lc91;

    move-result-object v4

    invoke-virtual {v4}, Lc91;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_1
    const-class v0, Ld91;

    invoke-static {v0}, Lc91;->b(Ljava/lang/Class;)V

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lc91;->c()Lc91;

    move-result-object v4

    invoke-virtual {v4}, Lc91;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_2
    sget-object p1, Lta1;->E:Lta1;

    :goto_1
    invoke-virtual {p1, p0}, Lta1;->h(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_4

    :pswitch_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Expected fail"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    const-class v0, Le91;

    invoke-static {v0}, Lc91;->b(Ljava/lang/Class;)V

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lc91;->c()Lc91;

    move-result-object v4

    invoke-virtual {v4}, Lc91;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_5
    sget-object p1, Lta1;->D:Lta1;

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x0

    invoke-static {v0}, Lc91;->b(Ljava/lang/Class;)V

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lc91;->c()Lc91;

    move-result-object v4

    invoke-virtual {v4}, Lc91;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, p1, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    :goto_3
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    :pswitch_7
    new-instance p1, Lo81;

    invoke-direct {p1}, Lo81;-><init>()V

    invoke-virtual {p1}, Lo81;->J()J

    move-result-wide v0

    new-instance p1, Lp81;

    invoke-direct {p1}, Lp81;-><init>()V

    invoke-virtual {p1}, Lp81;->J()J

    move-result-wide v3

    sget-object p1, Lr71$a;->X0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->g()J

    move-result-wide v5

    const-string v7, "MM/dd/yyyy hh:mm:ss"

    invoke-static {v7, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Lr71$a;->g()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    invoke-static/range {v6 .. v11}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v6, p0, Lqb1;->c:Landroid/app/Activity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Community: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", last updated "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\nCompatibility: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc91;->c()Lc91;

    move-result-object p1

    invoke-virtual {p1}, Lc91;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_3

    :pswitch_8
    sget-object p1, Lr71$a;->X0:Lr71$a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr71$a;->n(Ljava/lang/Long;)V

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x70045597 -> :sswitch_8
        -0x51875e81 -> :sswitch_7
        0x13e62d63 -> :sswitch_6
        0x21a6b12a -> :sswitch_5
        0x458c66e8 -> :sswitch_4
        0x594b0ad5 -> :sswitch_3
        0x5fffa110 -> :sswitch_2
        0x6c0012b1 -> :sswitch_1
        0x75aaf3c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i0()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->z:Ljava/lang/String;

    return-void
.end method

.method public final j0(C)V
    .locals 3

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method public final k0(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lov0;->f(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public l0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->H:Z

    return-void
.end method

.method public final m0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->B:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p2, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->afterTextChanged(Landroid/text/Editable;)V

    :cond_0
    return-void
.end method

.method public n0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->F:Z

    return-void
.end method

.method public o0(F)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$DialpadSlidingRelativeLayout;->setYFraction(F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0a024e

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->S()V

    goto :goto_0

    :cond_0
    const v2, 0x7f0a023b

    if-ne v0, v2, :cond_1

    const/16 p1, 0x43

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->Y(I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0a0256

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->V()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected onClick() event from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DialpadFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->G:Z

    invoke-static {v0}, Lb91;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->B:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->E:Z

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->o:I

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->C:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$a;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->C:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->C:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->C:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->l:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const v2, 0x7f0a0255

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;

    const/4 v2, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->U()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->H:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->a()V

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->u:Lrv0;

    invoke-virtual {v1, v2}, Lrv0;->c(Z)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->u:Lrv0;

    iget-boolean v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->H:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->o:I

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lrv0;->a(I)V

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/dialer/DialerActivity;->I()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_3
    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->H:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->u:Lrv0;

    invoke-virtual {p1}, Lrv0;->b()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->u:Lrv0;

    invoke-virtual {p1, v2}, Lrv0;->c(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;

    iget p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c$a;->c:I

    const/16 p2, 0x65

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->k0(Z)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x66

    const/4 p3, 0x0

    if-ne p1, p2, :cond_1

    invoke-virtual {p0, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->k0(Z)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x67

    if-ne p1, p2, :cond_2

    invoke-virtual {p0, p3}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->p0(Z)V

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onItemClick: unexpected itemId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DialpadFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p3, 0x7f0a0256

    if-ne p1, p3, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->S()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    const v3, 0x7f0a023b

    if-ne v1, v3, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    return v2

    :cond_0
    const v0, 0x7f0a06dd

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->v:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->j0(C)V

    :cond_1
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->Y(I)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->q0()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->v:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return v2

    :cond_2
    const p1, 0x7f0a0256

    const/4 v0, 0x0

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_3
    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lqb1;->onPause()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->q0()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const-string v0, ""

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->z:Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "Dialpad.onResume"

    invoke-static {v0}, Lnv0;->b(Ljava/lang/String;)Lnv0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->i0()V

    const-string v1, "qloc"

    invoke-virtual {v0, v1}, Lnv0;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->A:Z

    const-string v1, "dtwd"

    invoke-virtual {v0, v1}, Lnv0;->a(Ljava/lang/String;)V

    const-string v1, "hptc"

    invoke-virtual {v0, v1}, Lnv0;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->v:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->N(Landroid/app/Activity;)V

    const-string v1, "fdin"

    invoke-virtual {v0, v1}, Lnv0;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->X()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->p0(Z)V

    :cond_1
    const-string v1, "hnt"

    invoke-virtual {v0, v1}, Lnv0;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->r0()V

    const-string v1, "bes"

    invoke-virtual {v0, v1}, Lnv0;->a(Ljava/lang/String;)V

    const/16 v1, 0x32

    const-string v3, "DialpadFragment"

    invoke-virtual {v0, v3, v1}, Lnv0;->c(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->m:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->getOverflowMenuButton()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->I:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->V()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x8

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->J:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->V()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->K:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->V()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->G:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->onHiddenChanged(Z)V

    :cond_5
    iput-boolean v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->G:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lqb1;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->E:Z

    const-string v1, "pref_digits_filled_by_intent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 7

    invoke-super {p0}, Lqb1;->onStart()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->t:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->s:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->s:Landroid/media/ToneGenerator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "DialpadFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while creating local tone generator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->s:Landroid/media/ToneGenerator;

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x32

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    const-string v0, "DialpadFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time for ToneGenerator creation: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lqb1;->onStop()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->s:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->s:Landroid/media/ToneGenerator;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->p:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->p:Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->L()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-boolean p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->D:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->D:Z

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->s0(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->l:Landroid/view/View;

    const p2, 0x7f0a0678

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->I:Landroid/widget/LinearLayout;

    new-instance v0, Lvx0;

    invoke-direct {v0, p0}, Lvx0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a066e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->J:Landroid/widget/LinearLayout;

    new-instance v0, Lxx0;

    invoke-direct {v0, p0}, Lxx0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0681

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->K:Landroid/widget/LinearLayout;

    new-instance v0, Lwx0;

    invoke-direct {v0, p0}, Lwx0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0255

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->m:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->setCanDigitsBeEdited(Z)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->m:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;

    invoke-virtual {p2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->getDigits()Landroid/widget/EditText;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    sget-object v0, Lpv0;->a:Lpv0;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setElegantTextHeight(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-static {p2, v1}, Llv0;->a(Landroid/content/Context;Landroid/widget/TextView;)V

    const p2, 0x7f0a0487

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->M(Landroid/view/View;)V

    :cond_0
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->m:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;

    invoke-virtual {p2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->r:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->r:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setCursorVisible(Z)V

    const p2, 0x7f0a024c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->w:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p2, 0x7f0a024f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a024e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lrv0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lrv0;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ImageButton;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->u:Lrv0;

    return-void
.end method

.method public final p0(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->W()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x8

    const-string v1, "DialpadFragment"

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const-string p1, "Showing dialpad chooser!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->m:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->u:Lrv0;

    invoke-virtual {p1, v2}, Lrv0;->c(Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->w:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->x:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;

    if-nez p1, :cond_3

    new-instance p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->x:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;

    :cond_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->w:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->x:Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$c;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    :cond_4
    const-string p1, "Displaying normal Dialer UI."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->m:Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->n:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->u:Lrv0;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lrv0;->c(Z)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->w:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final q0()V
    .locals 3

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->s:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    const-string v1, "DialpadFragment"

    const-string v2, "stopTone: mToneGenerator == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final r0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->V()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->r:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final s0(Z)V
    .locals 1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->J:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lqv0;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->I:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lqv0;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->K:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lqv0;->a(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->J:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lqv0;->c(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->I:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lqv0;->c(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment;->K:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Lqv0;->c(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d00ac

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    return-void
.end method
