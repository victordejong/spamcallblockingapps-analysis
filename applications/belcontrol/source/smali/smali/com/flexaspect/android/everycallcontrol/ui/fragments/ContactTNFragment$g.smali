.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/EditText;

.field public final synthetic d:Landroid/app/AlertDialog;

.field public final synthetic f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->c:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->d:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, ""

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    const-string v2, "\\D"

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {v2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object v2

    iget-object v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->c:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v2, Lx81;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iget-object p1, p1, Lx81;->g:Li91;

    invoke-virtual {p1}, Li91;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iget-object p1, p1, Lx81;->h:Li91$b;

    sget-object v2, Li91$b;->b:Li91$b;

    invoke-virtual {p1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iput-object v2, p1, Lx81;->h:Li91$b;

    :cond_2
    invoke-static {v0}, Lfa1$e;->m(Ljava/lang/String;)Li91;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    move-object v1, p1

    :cond_3
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iput-object v1, p1, Lx81;->g:Li91;

    if-nez v3, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iget-object p1, p1, Lx81;->h:Li91$b;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iget-object p1, p1, Lx81;->h:Li91$b;

    sget-object v1, Li91$b;->d:Li91$b;

    if-ne p1, v1, :cond_4

    invoke-static {v0}, Lfa1$e;->n(Ljava/lang/String;)Li91;

    move-result-object p1

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object v1

    invoke-virtual {v1, p1}, Lx81;->P(Li91;)V

    :cond_4
    if-eqz v3, :cond_5

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    sget-object v1, Li91$b;->g:Li91$b;

    iput-object v1, p1, Lx81;->h:Li91$b;

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    iget-object p1, p1, Lx81;->g:Li91;

    invoke-virtual {p1, v0}, Li91;->w(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)Lx81;

    move-result-object p1

    invoke-virtual {p1}, Lx81;->z()Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->V()V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {p1}, Lqb1;->o()Lsb1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->v(Lsb1;)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->f:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1102f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "Operation may not be completed"

    invoke-static {p0, v0, p1}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$g;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
