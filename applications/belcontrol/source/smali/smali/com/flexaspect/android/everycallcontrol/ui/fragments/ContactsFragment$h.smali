.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->d0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$h;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$h;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {p2}, Lyd;->k()Landroid/widget/ListAdapter;

    move-result-object p2

    iget v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$h;->a:I

    invoke-interface {p2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/database/Cursor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lq81;->g0:Ljava/lang/String;

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    const-string v2, "Unable get pseudo column"

    invoke-static {p0, v2}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Lq81;

    invoke-direct {v1}, Lq81;-><init>()V

    invoke-virtual {v1, p2}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    invoke-virtual {v1}, Lq81;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lv71;->n(Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lq81;

    sget-object p2, Lq71$g;->a:Lq71$g;

    iput-object p2, v1, Lq81;->k:Lq71$g;

    const-class p2, Lq71$e;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, v1, Lq81;->h:Ljava/util/EnumSet;

    invoke-virtual {v1}, Lq81;->z()Z

    move-result p2

    goto :goto_1

    :cond_1
    new-instance v1, Lx81;

    invoke-direct {v1}, Lx81;-><init>()V

    invoke-virtual {v1, p2}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    invoke-virtual {v1}, Lx81;->d()Z

    move-result p2

    :goto_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$h;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->N(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;

    move-result-object p2

    const v1, 0x7f1102c3

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$h;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
