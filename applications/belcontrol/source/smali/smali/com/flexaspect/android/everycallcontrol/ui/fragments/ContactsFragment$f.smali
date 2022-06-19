.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$f;
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    new-instance p2, Lq81;

    invoke-direct {p2}, Lq81;-><init>()V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-virtual {v0}, Lyd;->k()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$f;->a:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {p2, v0}, Lq81;->Q(Landroid/database/Cursor;)Lq81;

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p2}, Lq81;->V()La81;

    move-result-object v2

    iget-object v2, v2, La81;->g:Landroid/net/Uri;

    const-string v3, "_id = ?"

    new-array v4, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lq81;->V()La81;

    move-result-object v6

    iget-wide v6, v6, La81;->a:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    invoke-virtual {p2}, Lq81;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Laa1;->l()V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->M(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)Landroid/app/Activity;

    move-result-object p2

    const v1, 0x7f1102c3

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment$f;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    invoke-static {p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;->I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
