.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;
.super Lqb1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;
    }
.end annotation


# static fields
.field public static final x:Ljava/lang/String;

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# instance fields
.field public g:J

.field public h:Ljava/lang/String;

.field public j:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

.field public k:Lx81;

.field public l:Lx81;

.field public m:Lq81;

.field public n:Ll81;

.field public o:Ls81;

.field public p:Li91;

.field public q:Z

.field public r:Lq71$a;

.field public s:Z

.field public t:Z

.field public u:Landroid/app/Dialog;

.field public v:Ljava/lang/Boolean;

.field public w:[Li91$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EXTRA_PHONE_NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lqb1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->p:Li91;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->q:Z

    sget-object v2, Lq71$a;->c:Lq71$a;

    iput-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    iput-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->s:Z

    iput-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->t:Z

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->u:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->v:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic A(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Lx81;)Lx81;
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    return-object p1
.end method

.method public static synthetic B(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->Y()V

    return-void
.end method

.method public static synthetic C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->t:Z

    return p0
.end method

.method public static synthetic D(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic E(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->W(I)V

    return-void
.end method

.method public static synthetic H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->P()V

    return-void
.end method

.method public static synthetic I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic J(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Ls81;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->o:Ls81;

    return-object p0
.end method

.method public static synthetic K(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lq81;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    return-object p0
.end method

.method public static synthetic L(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Lq71$a;)Lq71$a;
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    return-object p1
.end method

.method public static synthetic M(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->X()V

    return-void
.end method

.method public static synthetic N(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->s:Z

    return p0
.end method

.method public static synthetic O(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->l:Lx81;

    return-object p0
.end method

.method private synthetic R(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    sget-object p1, Lq71$a;->c:Lq71$a;

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->X()V

    return-void
.end method

.method public static synthetic T(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    return-object p0
.end method

.method public static synthetic z(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lqb1;->c:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public final P()V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0166

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0a0248

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0a0460

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    const v1, 0x7f1104e8

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v3, v1, Lx81;->f:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v1, v1, Lx81;->g:Li91;

    invoke-virtual {v1}, Li91;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v1, v1, Lx81;->f:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2000

    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v3, v1, Lx81;->f:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v1, v1, Lx81;->g:Li91;

    invoke-virtual {v1}, Li91;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v1, v1, Lx81;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setSelection(I)V

    const v1, 0x7f0a04b2

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v3, 0x7f1104ed

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v3, v3, Lx81;->g:Li91;

    invoke-virtual {v3}, Li91;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v3, v3, Lx81;->g:Li91;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Li91;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    :cond_3
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v3, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {v3}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f1102be

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f1101b0

    invoke-virtual {v3, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f110555

    invoke-virtual {v3, v5, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v10

    invoke-virtual/range {v3 .. v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    const/4 v2, -0x3

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;

    move-object v5, v3

    move-object v6, p0

    move-object v7, v1

    move-object v8, v0

    invoke-direct/range {v5 .. v10}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final Q()V
    .locals 12

    invoke-virtual {p0}, Lqb1;->o()Lsb1;

    move-result-object v0

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$d;->a:[I

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->j:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x7f110145

    const/4 v3, 0x1

    const-string v4, ""

    if-eq v1, v3, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    iget-object v4, v1, Lq81;->f:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->n:Ll81;

    iget-object v4, v1, Ll81;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v1, v1, Lx81;->g:Li91;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsb1;->d(Ljava/lang/String;)Lsb1;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v1, v1, Lx81;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v4, v1, Lx81;->f:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v5, v1, Lx81;->g:Li91;

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lx81;->L()Ljava/lang/String;

    move-result-object v4

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v1, v1, Lx81;->g:Li91;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0201

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->j:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$h;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$h;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    invoke-virtual {v0, v4}, Lsb1;->p(Ljava/lang/String;)Lsb1;

    move-result-object v1

    invoke-virtual {v1}, Lsb1;->b()Lsb1;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    if-eqz v1, :cond_11

    new-instance v1, Ls81;

    invoke-direct {v1}, Ls81;-><init>()V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v2, v2, Lx81;->g:Li91;

    invoke-virtual {v2}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    invoke-virtual {v4}, Lq81;->V()La81;

    move-result-object v4

    iget-object v4, v4, La81;->h:[La81$a;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x0

    if-ge v7, v5, :cond_8

    aget-object v9, v4, v7

    invoke-virtual {v9}, La81$a;->a()Li91;

    move-result-object v10

    invoke-virtual {v10}, Li91;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    move-object v9, v8

    :goto_4
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v2, v2, Lx81;->g:Li91;

    if-eqz v2, :cond_a

    if-nez v9, :cond_9

    goto :goto_5

    :cond_9
    new-instance v2, Ls81;

    invoke-direct {v2}, Ls81;-><init>()V

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    iget-wide v4, v4, Lq81;->d:J

    iget-wide v10, v9, La81$a;->a:J

    invoke-virtual {v2, v4, v5, v10, v11}, Ls81;->J(JJ)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_6

    :cond_a
    :goto_5
    move-object v2, v8

    :goto_6
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v1, v2}, Ls81;->H(Landroid/database/Cursor;)Ls81;

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c
    iget-wide v4, v1, Ls81;->d:J

    const-wide/16 v10, 0x0

    cmp-long v2, v4, v10

    if-gtz v2, :cond_f

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v2, v2, Lx81;->g:Li91;

    if-eqz v2, :cond_e

    if-nez v9, :cond_d

    goto :goto_8

    :cond_d
    new-instance v2, Ls81;

    invoke-direct {v2}, Ls81;-><init>()V

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    iget-wide v4, v4, Lq81;->d:J

    invoke-virtual {v2, v4, v5}, Ls81;->I(J)Landroid/database/Cursor;

    move-result-object v8

    :cond_e
    :goto_8
    if-eqz v8, :cond_f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ls81;

    invoke-direct {v2}, Ls81;-><init>()V

    invoke-virtual {v2, v8}, Ls81;->H(Landroid/database/Cursor;)Ls81;

    iget-object v3, v2, Ls81;->h:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v10

    if-gtz v5, :cond_10

    move-object v1, v2

    goto :goto_9

    :cond_f
    move v6, v3

    :cond_10
    :goto_9
    iput-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->o:Ls81;

    sget-object v1, Lsb1$d;->c:Lsb1$d;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsb1;->m(Ljava/util/EnumSet;)Lsb1;

    invoke-virtual {v0, v1, v6}, Lsb1;->q(Lsb1$d;Z)Lsb1;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$i;

    invoke-direct {v1, p0, v9, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$i;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;La81$a;Lsb1;)V

    invoke-virtual {v0, v1}, Lsb1;->l(Lsb1$b;)Lsb1;

    :cond_11
    return-void
.end method

.method public synthetic S(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->R(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public U()Z
    .locals 11

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->o:Ls81;

    if-eqz v0, :cond_1

    iget-object v1, v0, Ls81;->h:Ljava/lang/Long;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lv71;->d()Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lv71;->z()Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "onSaveChanges rule is null"

    invoke-static {p0, v0}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_2
    iput-boolean v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->q:Z

    iget-object v2, v0, Lx81;->l:Lq71$g;

    sget-object v3, Lq71$g;->a:Lq71$g;

    if-eq v2, v3, :cond_a

    iget-object v0, v0, Lx81;->h:Li91$b;

    sget-object v2, Li91$b;->g:Li91$b;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-ne v0, v2, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const v6, 0x7f0a0076

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "*"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v1

    :cond_4
    const-string v7, "^"

    const-string v8, "+"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\\+?"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".*"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\+"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".?"

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    iget-object v7, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v7, v7, Lx81;->g:Li91;

    invoke-virtual {v7}, Li91;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    const-string v7, "   "

    if-eqz v6, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v6, v6, Lx81;->g:Li91;

    invoke-virtual {v6}, Li91;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v2, v2, Lx81;->g:Li91;

    invoke-virtual {v2, v0}, Li91;->w(Ljava/lang/String;)V

    new-instance v2, Lx81;

    invoke-direct {v2}, Lx81;-><init>()V

    invoke-virtual {v2, v0}, Lx81;->M(Ljava/lang/String;)V

    iget-wide v6, v2, Lx81;->d:J

    cmp-long v0, v6, v3

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->l:Lx81;

    invoke-virtual {v0}, Lx81;->O()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    invoke-virtual {v6}, Lx81;->O()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-wide v6, v0, Lx81;->d:J

    iget-wide v8, v2, Lx81;->d:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lx81;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    invoke-virtual {v0}, Lx81;->z()Z

    :cond_6
    return v1

    :cond_7
    iget-object v3, p0, Lqb1;->c:Landroid/app/Activity;

    const v4, 0x7f11075d

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v8, v8, Lx81;->g:Li91;

    invoke-virtual {v8, v2}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-virtual {p0, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v0, v0, Lx81;->g:Li91;

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v5

    :cond_8
    new-instance v0, Lx81;

    invoke-direct {v0}, Lx81;-><init>()V

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    invoke-virtual {v2}, Lx81;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lx81;->M(Ljava/lang/String;)V

    iget-wide v6, v0, Lx81;->d:J

    cmp-long v2, v6, v3

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-wide v3, v2, Lx81;->d:J

    cmp-long v8, v3, v6

    if-eqz v8, :cond_a

    iget-object v3, p0, Lqb1;->c:Landroid/app/Activity;

    const v4, 0x7f110426

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lx81;->L()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    iget-object v0, v0, Lx81;->l:Lq71$g;

    sget-object v2, Lq71$g;->c:Lq71$g;

    if-ne v0, v2, :cond_9

    const v0, 0x7f110358

    goto :goto_1

    :cond_9
    const v0, 0x7f110357

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {p0, v4, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v5

    :cond_a
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->l:Lx81;

    invoke-virtual {v0}, Lx81;->O()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    invoke-virtual {v2}, Lx81;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    invoke-virtual {v0}, Lx81;->z()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/kedlin/cca/core/sync/ServerSync;->l()V

    :cond_c
    return v0
.end method

.method public V()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iput-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->v:Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lnd;

    move-result-object v3

    sget-object v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$d;->a:[I

    iget-object v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->j:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-wide/16 v5, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v4, v9, :cond_7

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_1

    move-object v3, v2

    goto/16 :goto_2

    :cond_1
    new-instance v4, Lq81;

    invoke-direct {v4}, Lq81;-><init>()V

    iget-wide v10, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->g:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    iget-wide v10, v4, Lq81;->d:J

    cmp-long v12, v10, v5

    if-gez v12, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lnd;->G0()V

    :cond_2
    return-void

    :cond_3
    iget-object v3, v4, Lq81;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->h:Ljava/lang/String;

    invoke-static {v4}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v4

    goto :goto_0

    :cond_4
    new-instance v4, Ll81;

    invoke-direct {v4}, Ll81;-><init>()V

    iget-wide v10, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->g:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->n:Ll81;

    iget-wide v10, v4, Ll81;->d:J

    cmp-long v12, v10, v5

    if-gez v12, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lnd;->G0()V

    :cond_5
    return-void

    :cond_6
    iget-object v3, v4, Ll81;->h:Ljava/lang/String;

    iget-object v4, v4, Ll81;->m:Li91;

    :goto_0
    iput-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->p:Li91;

    goto :goto_2

    :cond_7
    new-instance v4, Lx81;

    invoke-direct {v4}, Lx81;-><init>()V

    iget-wide v10, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->g:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    iput-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-wide v10, v4, Lx81;->d:J

    cmp-long v12, v10, v5

    if-gez v12, :cond_9

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lnd;->G0()V

    :cond_8
    return-void

    :cond_9
    iget-object v3, v4, Lx81;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v3, v3, Lx81;->g:Li91;

    invoke-virtual {v3}, Li91;->m()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_a
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v3, v3, Lx81;->f:Ljava/lang/String;

    :goto_1
    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v4, v4, Lx81;->g:Li91;

    goto :goto_0

    :goto_2
    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    const/4 v5, 0x0

    if-nez v4, :cond_11

    new-instance v4, Lx81;

    invoke-direct {v4}, Lx81;-><init>()V

    iput-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->p:Li91;

    invoke-virtual {v4, v6}, Lx81;->K(Li91;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_b
    new-instance v6, Lx81;

    invoke-direct {v6}, Lx81;-><init>()V

    invoke-virtual {v6, v4}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    iget-object v10, v6, Lx81;->h:Li91$b;

    sget-object v11, Li91$b;->b:Li91$b;

    if-ne v10, v11, :cond_c

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    invoke-virtual {v6, v4}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    goto :goto_4

    :cond_c
    iget-object v10, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->v:Ljava/lang/Boolean;

    if-nez v10, :cond_e

    iget-object v6, v6, Lx81;->l:Lq71$g;

    sget-object v10, Lq71$g;->c:Lq71$g;

    if-ne v6, v10, :cond_d

    const/4 v6, 0x1

    goto :goto_3

    :cond_d
    const/4 v6, 0x0

    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->v:Ljava/lang/Boolean;

    :cond_e
    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_b

    :cond_f
    if-eqz v4, :cond_10

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_10
    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v6, v4, Lx81;->g:Li91;

    if-nez v6, :cond_11

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->p:Li91;

    iput-object v6, v4, Lx81;->g:Li91;

    iget-object v4, v4, Lx81;->f:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v3, :cond_11

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iput-object v3, v4, Lx81;->f:Ljava/lang/String;

    :cond_11
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->v:Ljava/lang/Boolean;

    if-nez v3, :cond_12

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->v:Ljava/lang/Boolean;

    :cond_12
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->p:Li91;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Li91;->t()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->p:Li91;

    invoke-virtual {v3}, Li91;->n()Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    new-array v3, v8, [Li91$b;

    sget-object v4, Li91$b;->g:Li91$b;

    aput-object v4, v3, v5

    sget-object v4, Li91$b;->b:Li91$b;

    aput-object v4, v3, v9

    iput-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->w:[Li91$b;

    :cond_14
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->w:[Li91$b;

    if-nez v3, :cond_15

    const/4 v3, 0x5

    new-array v3, v3, [Li91$b;

    sget-object v4, Li91$b;->g:Li91$b;

    aput-object v4, v3, v5

    sget-object v4, Li91$b;->f:Li91$b;

    aput-object v4, v3, v9

    sget-object v4, Li91$b;->d:Li91$b;

    aput-object v4, v3, v8

    sget-object v4, Li91$b;->c:Li91$b;

    aput-object v4, v3, v7

    const/4 v4, 0x4

    sget-object v6, Li91$b;->b:Li91$b;

    aput-object v6, v3, v4

    iput-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->w:[Li91$b;

    :cond_15
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    if-nez v3, :cond_16

    new-instance v3, Lx81;

    invoke-direct {v3}, Lx81;-><init>()V

    iput-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    :cond_16
    new-instance v3, Lx81;

    iget-object v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    invoke-direct {v3, v4}, Lx81;-><init>(Lx81;)V

    iput-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->l:Lx81;

    sget-object v3, Lq71$g;->c:Lq71$g;

    invoke-static {v3}, Lr71;->f(Lq71$g;)Z

    move-result v4

    xor-int/2addr v4, v9

    iput-boolean v4, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->t:Z

    sget-object v4, Lq71$g;->b:Lq71$g;

    invoke-static {v4}, Lr71;->f(Lq71$g;)Z

    move-result v6

    xor-int/2addr v6, v9

    iput-boolean v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->s:Z

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v6, v6, Lx81;->l:Lq71$g;

    if-ne v6, v3, :cond_17

    iput-boolean v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->t:Z

    :cond_17
    if-ne v6, v4, :cond_18

    iput-boolean v5, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->s:Z

    :cond_18
    const v3, 0x7f0a02e2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setLinksClickable(Z)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v3, v3, Lx81;->g:Li91;

    if-nez v3, :cond_19

    const-string v1, "rule is null"

    invoke-static {v0, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->Q()V

    invoke-virtual/range {p0 .. p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->Y()V

    const v3, 0x7f0a01fe

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060203

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    if-eqz v3, :cond_1a

    new-array v4, v9, [La81;

    invoke-virtual {v3}, Lq81;->V()La81;

    move-result-object v3

    aput-object v3, v4, v5

    goto :goto_5

    :cond_1a
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v3, v3, Lx81;->g:Li91;

    invoke-static {v3}, La81;->d(Li91;)[La81;

    move-result-object v4

    :goto_5
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->j:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    sget-object v6, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    if-eq v3, v6, :cond_1b

    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->p:Li91;

    goto :goto_6

    :cond_1b
    iget-object v3, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v3, v3, Lx81;->g:Li91;

    :goto_6
    invoke-virtual {v3}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, -0x1

    if-eqz v4, :cond_1e

    array-length v10, v4

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_7
    if-ge v11, v10, :cond_1f

    aget-object v13, v4, v11

    iget-object v14, v13, La81;->h:[La81$a;

    array-length v15, v14

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v15, :cond_1d

    aget-object v8, v14, v7

    invoke-virtual {v8}, La81$a;->a()Li91;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Li91;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    iget v12, v8, La81$a;->c:I

    iget-object v2, v13, La81;->f:Landroid/net/Uri;

    goto :goto_9

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    goto :goto_8

    :cond_1d
    :goto_9
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    goto :goto_7

    :cond_1e
    const/4 v12, -0x1

    :cond_1f
    const v3, 0x7f0a04b5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eq v12, v6, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_20
    const-string v4, ""

    :goto_a
    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->j:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    sget-object v7, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    if-eq v6, v7, :cond_21

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v7, v6, Lx81;->f:Ljava/lang/String;

    if-eqz v7, :cond_21

    iget-object v6, v6, Lx81;->g:Li91;

    invoke-virtual {v6}, Li91;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v7, v7, Lx81;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->p:Li91;

    invoke-virtual {v7}, Li91;->m()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_21
    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v7, v6, Lx81;->f:Ljava/lang/String;

    if-eqz v7, :cond_22

    iget-object v6, v6, Lx81;->g:Li91;

    invoke-virtual {v6}, Li91;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v7, v7, Lx81;->f:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v8, v7, Lx81;->g:Li91;

    iget-object v7, v7, Lx81;->h:Li91$b;

    invoke-virtual {v8, v7}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object v7

    :goto_b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c

    :cond_22
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_c
    const v3, 0x7f0a01fc

    if-eqz v2, :cond_23

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_d

    :cond_23
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0801c6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_d
    const v2, 0x7f0a05c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    const v3, 0x7f0a05c7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    const v4, 0x7f0a05c8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v6, v6, Lx81;->l:Lq71$g;

    sget-object v7, Lq71$g;->c:Lq71$g;

    if-ne v6, v7, :cond_26

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v6, v6, Lx81;->j:Ljava/util/EnumSet;

    sget-object v7, Lq71$e;->b:Lq71$e;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v6, v6, Lx81;->j:Ljava/util/EnumSet;

    sget-object v7, Lq71$e;->c:Lq71$e;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    iget-object v6, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v6, v6, Lx81;->j:Ljava/util/EnumSet;

    sget-object v7, Lq71$e;->d:Lq71$e;

    invoke-virtual {v6, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    goto :goto_e

    :cond_24
    const/4 v6, 0x0

    goto :goto_f

    :cond_25
    :goto_e
    const/4 v6, 0x1

    :goto_f
    invoke-virtual {v4, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_11

    :cond_26
    sget-object v7, Lq71$g;->b:Lq71$g;

    if-ne v6, v7, :cond_27

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_10

    :cond_27
    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_10
    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_11
    const v6, 0x7f0a03cc

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->w:[Li91$b;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/16 v8, 0xa

    mul-int/lit8 v7, v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v7, v7, Lx81;->h:Li91$b;

    iget-object v9, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->w:[Li91$b;

    aget-object v10, v9, v5

    if-ne v7, v10, :cond_28

    :goto_12
    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_13

    :cond_28
    array-length v5, v9

    const/4 v10, 0x1

    if-le v5, v10, :cond_29

    aget-object v5, v9, v10

    if-ne v7, v5, :cond_29

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_13

    :cond_29
    array-length v5, v9

    const/4 v10, 0x2

    if-le v5, v10, :cond_2a

    aget-object v5, v9, v10

    if-ne v7, v5, :cond_2a

    const/16 v5, 0x14

    goto :goto_12

    :cond_2a
    array-length v5, v9

    const/4 v10, 0x3

    if-le v5, v10, :cond_2b

    aget-object v5, v9, v10

    if-ne v7, v5, :cond_2b

    const/16 v5, 0x1e

    goto :goto_12

    :cond_2b
    array-length v5, v9

    mul-int/lit8 v5, v5, 0xa

    goto :goto_12

    :goto_13
    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->W(I)V

    const v5, 0x7f0a0076

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v7, v7, Lx81;->g:Li91;

    sget-object v8, Li91$b;->g:Li91$b;

    invoke-virtual {v7, v8}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$l;

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$l;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Landroid/widget/CompoundButton;Landroid/widget/CompoundButton;Landroid/widget/CompoundButton;)V

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v5, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;

    invoke-direct {v5, v0, v3, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$m;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Landroid/widget/CompoundButton;Landroid/widget/CompoundButton;)V

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$a;

    invoke-direct {v3, v0, v4, v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Landroid/widget/CompoundButton;Landroid/widget/CompoundButton;)V

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$b;

    invoke-direct {v3, v0, v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c;

    invoke-direct {v1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V

    invoke-virtual {v6, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    sget-object v1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v1, Lr71$a;->v:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->a()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_2c
    invoke-static {}, Lfa1;->t()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {}, Lfa1;->d()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {}, Lfa1;->z()Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_2d
    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    sget-object v2, Lq71$a;->d:Lq71$a;

    if-eq v1, v2, :cond_2e

    goto :goto_14

    :cond_2e
    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    sget-object v2, Lq71$a;->c:Lq71$a;

    iput-object v2, v1, Lx81;->k:Lq71$a;

    goto :goto_15

    :cond_2f
    :goto_14
    iget-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v1, v1, Lx81;->k:Lq71$a;

    iput-object v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0302

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    invoke-virtual {v2}, Lq71$a;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final W(I)V
    .locals 6

    const/4 v0, 0x0

    if-lez p1, :cond_0

    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->w:[Li91$b;

    array-length v2, v1

    rem-int/2addr p1, v2

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    aget-object p1, v1, p1

    iput-object p1, v2, Lx81;->h:Li91$b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a03ce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v1, v1, Lx81;->h:Li91$b;

    invoke-virtual {v1}, Li91$b;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a00ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v4, v3, Lx81;->h:Li91$b;

    sget-object v5, Li91$b;->g:Li91$b;

    if-ne v4, v5, :cond_1

    const v1, 0x7f1100e7

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lx81;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final X()V
    .locals 2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    iput-object v1, v0, Lx81;->k:Lq71$a;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a0302

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v1, v1, Lx81;->k:Lq71$a;

    invoke-virtual {v1}, Lq71$a;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MODE to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj91;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final Y()V
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v1, v1, Lx81;->l:Lq71$g;

    sget-object v2, Lq71$g;->c:Lq71$g;

    const v3, 0x7f0a03cd

    const v4, 0x7f0a00a9

    const/4 v5, 0x1

    const v6, 0x7f0a00ab

    const v7, 0x7f0a05c6

    const v8, 0x7f0a00ad

    const/4 v9, 0x0

    const/16 v10, 0x8

    if-eq v1, v2, :cond_3

    sget-object v11, Lq71$g;->b:Lq71$g;

    if-ne v1, v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->v:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v4, v4, Lx81;->l:Lq71$g;

    if-ne v4, v2, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v1, v1, Lx81;->l:Lq71$g;

    sget-object v2, Lq71$g;->b:Lq71$g;

    const v3, 0x7f0a062b

    if-ne v1, v2, :cond_5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1100af

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1100f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    :goto_4
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-wide v2, v1, Lx81;->d:J

    const-wide/16 v11, 0x1

    cmp-long v4, v2, v11

    if-gez v4, :cond_7

    iget-object v1, v1, Lx81;->g:Li91;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {v1, v0}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    const v1, 0x7f0a03ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    sget-object v2, Lr71$a;->y0:Lr71$a;

    invoke-virtual {v2}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lsh0;->h(Ljava/lang/String;)Lsh0;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lsh0;->q()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lsh0;->o()Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v2, 0x8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_9
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_6
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v2, v1, Lx81;->h:Li91$b;

    sget-object v3, Li91$b;->b:Li91$b;

    if-ne v2, v3, :cond_b

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->p:Li91;

    invoke-static {v2, v5, v1}, Loe1;->q(Li91;ZLx81;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_b
    const/4 v1, 0x0

    :goto_7
    const v2, 0x7f0a02e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_8

    :cond_c
    const/16 v9, 0x8

    :goto_8
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v1, ""

    goto :goto_9

    :cond_d
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(Lsb1$c;)V
    .locals 1

    invoke-super {p0, p1}, Lqb1;->g(Lsb1$c;)V

    sget-object v0, Lsb1$c;->h:Lsb1$c;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$d;->a:[I

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->j:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->n:Ll81;

    iget-object v0, v0, Ll81;->m:Li91;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v0, v0, Lx81;->g:Li91;

    :goto_0
    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lie1;->h(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a00d6

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a026b

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0310

    if-eq p1, v0, :cond_0

    sget-object p1, Lq71$a;->g:Lq71$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lq71$a;->f:Lq71$a;

    goto :goto_0

    :cond_1
    sget-object p1, Lq71$a;->d:Lq71$a;

    goto :goto_0

    :cond_2
    sget-object p1, Lq71$a;->c:Lq71$a;

    :goto_0
    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    sget-object p1, Lr71$a;->Y:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_8

    invoke-static {}, Lfa1;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lr71$a;->v:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_3
    invoke-static {}, Lfa1;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lfa1;->z()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    sget-object v1, Lq71$a;->d:Lq71$a;

    if-eq p1, v1, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lfa1;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lfa1;->z()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lfa1;->t()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    sget-object v1, Lq71$a;->g:Lq71$a;

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    new-instance v1, Lkx0;

    invoke-direct {v1, p0}, Lkx0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V

    invoke-static {p1, v1}, Loe1;->v0(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Low0;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->u:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->X()V

    return v0

    :cond_5
    invoke-static {}, Lfa1;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lfa1;->t()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    sget-object v1, Lq71$a;->f:Lq71$a;

    if-eq p1, v1, :cond_6

    sget-object v1, Lq71$a;->c:Lq71$a;

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lqb1;->c:Landroid/app/Activity;

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$j;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$j;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V

    invoke-static {v1, p1, v2}, Loe1;->f0(Landroid/content/Context;Lq71$a;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->u:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->X()V

    return v0

    :cond_6
    invoke-static {}, Lfa1;->t()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->r:Lq71$a;

    sget-object v1, Lq71$a;->d:Lq71$a;

    if-ne p1, v1, :cond_7

    sget-object p1, Lr71$a;->v:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-static {p1}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f110231

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f11041b

    new-instance v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$k;

    invoke-direct {v2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$k;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1101b0

    sget-object v2, Llx0;->a:Llx0;

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->u:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->X()V

    return v0

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->X()V

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object p2, p0, Lqb1;->c:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const p3, 0x7f0e0001

    invoke-virtual {p2, p3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-static {}, Lp71;->a()Ljava/util/EnumSet;

    move-result-object p2

    sget-object p3, Lq71$a;->d:Lq71$a;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const p3, 0x7f0a026b

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    sget-object p3, Lq71$a;->f:Lq71$a;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const p3, 0x7f0a0310

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p3

    invoke-interface {p3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    sget-object p3, Lq71$a;->g:Lq71$a;

    invoke-virtual {p2, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const p2, 0x7f0a055f

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f0d0089

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p3}, Lqb1;->q(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->n:Ll81;

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->values()[Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    move-result-object p3

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p3, p3, v0

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->j:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->g:J

    sget-object p3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->z:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->h:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->u:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->u:Landroid/app/Dialog;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->U()Z

    invoke-super {p0}, Lqb1;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->V()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->Y()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->j:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->n:Ll81;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 v0, -0x1

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$d;->a:[I

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->j:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->m:Lq81;

    iget-wide v0, v0, Lq81;->d:J

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->z:Ljava/lang/String;

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-object v3, v3, Lx81;->g:Li91;

    invoke-virtual {v3}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->n:Ll81;

    iget-wide v0, v0, Ll81;->d:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->k:Lx81;

    iget-wide v0, v0, Lx81;->d:J

    :goto_0
    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-super {p0, p1}, Lqb1;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lqb1;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->U()Z

    :cond_0
    invoke-super {p0}, Lqb1;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lqb1;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$e;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$e;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a00ab

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    const p2, 0x7f0a03ea

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$f;

    invoke-direct {p2, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$f;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->V()V

    return-void
.end method

.method public s()Z
    .locals 1

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->U()Z

    move-result v0

    return v0
.end method

.method public v(Lsb1;)V
    .locals 0

    return-void
.end method
