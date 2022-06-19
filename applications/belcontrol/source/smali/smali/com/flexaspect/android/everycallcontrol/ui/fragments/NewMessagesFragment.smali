.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;
.super Lqb1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String;


# instance fields
.field public g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

.field public h:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/LinearLayout;

.field public k:Landroid/widget/LinearLayout;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/widget/RelativeLayout;

.field public p:Lcom/google/android/material/button/MaterialButton;

.field public q:Lsh0;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/ImageView;

.field public w:Ljava/lang/String;

.field public x:Landroid/view/View$OnClickListener;

.field public y:Landroid/view/View$OnClickListener;

.field public z:Landroid/view/View$OnClickListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lqb1;-><init>()V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$a;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->x:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$b;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$b;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->y:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$c;

    invoke-direct {v0, p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$c;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;)V

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->z:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic x(Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    return-object p0
.end method

.method public static synthetic y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;)Lsh0;
    .locals 0

    iget-object p0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->q:Lsh0;

    return-object p0
.end method

.method private synthetic z()V
    .locals 1

    sget-object v0, Lq71$e;->c:Lq71$e;

    invoke-static {v0}, Lr71;->D(Lq71$e;)V

    sget-object v0, Lq71$e;->d:Lq71$e;

    invoke-static {v0}, Lr71;->D(Lq71$e;)V

    iget-object v0, p0, Lqb1;->c:Landroid/app/Activity;

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Z0()V

    return-void
.end method


# virtual methods
.method public synthetic A()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->z()V

    return-void
.end method

.method public final B()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->w:Ljava/lang/String;

    const-string v0, "com.moez.QKSMS"

    invoke-static {v0}, Lsh0;->h(Ljava/lang/String;)Lsh0;

    move-result-object v0

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->q:Lsh0;

    if-nez v0, :cond_0

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    return-void

    :cond_0
    invoke-virtual {v0}, Lsh0;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->q:Lsh0;

    invoke-virtual {v0}, Lsh0;->q()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->q:Lsh0;

    invoke-virtual {v0}, Lsh0;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->c:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->q:Lsh0;

    invoke-virtual {v0}, Lsh0;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;->d:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    iput-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    :cond_3
    return-void
.end method

.method public final C()V
    .locals 8

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$d;->a:[I

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->g:Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v4, 0x2

    const v5, 0x7f060199

    const v6, 0x7f1105d2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    const v7, 0x7f1105cb

    if-eq v0, v4, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->p:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    const v1, 0x7f1106fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->p:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->q:Lsh0;

    invoke-virtual {v4}, Lsh0;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    const v2, 0x7f110700

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->q:Lsh0;

    invoke-virtual {v4}, Lsh0;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->p:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->s:Landroid/widget/TextView;

    const v1, 0x7f1105ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    const v1, 0x7f11052a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->p:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->t:Landroid/widget/TextView;

    const v1, 0x7f1105d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    const v1, 0x7f11052b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0139

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a06c2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->h:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0489

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->o:Landroid/widget/RelativeLayout;

    const p2, 0x7f0a04ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->j:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0303

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->k:Landroid/widget/LinearLayout;

    const p2, 0x7f0a06c3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->l:Landroid/view/View;

    const p2, 0x7f0a04f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->m:Landroid/view/View;

    const p2, 0x7f0a0304

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->n:Landroid/view/View;

    const p2, 0x7f0a036f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->p:Lcom/google/android/material/button/MaterialButton;

    const p2, 0x7f0a01ac

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->v:Landroid/widget/ImageView;

    const p2, 0x7f0a0470

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->r:Landroid/widget/TextView;

    const p2, 0x7f0a046e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->s:Landroid/widget/TextView;

    const p2, 0x7f0a0472

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->t:Landroid/widget/TextView;

    const p2, 0x7f0a046f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->u:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->p:Lcom/google/android/material/button/MaterialButton;

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->o:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a04f1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f1105cc

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0305

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lqb1;->d:Landroid/os/Handler;

    new-instance v1, Lnx0;

    invoke-direct {v1, p0}, Lnx0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->B()V

    invoke-virtual {p0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;->C()V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 1

    const v0, 0x7f1103da

    invoke-virtual {p1, v0}, Lsb1;->o(I)Lsb1;

    invoke-virtual {p1}, Lsb1;->b()Lsb1;

    return-void
.end method
