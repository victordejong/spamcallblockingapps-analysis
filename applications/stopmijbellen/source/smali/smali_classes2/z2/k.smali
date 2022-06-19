.class public final synthetic Lz2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/r$b;
.implements Lc5/a;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/SuccessContinuation;
.implements Lr4/b;
.implements Le2/g$c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz2/k;->a:I

    iput-object p1, p0, Lz2/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lz2/k;->b:Ljava/lang/Object;

    check-cast v0, La5/a;

    .line 1
    iget-object v0, v0, La5/a;->b:Lc5/a;

    invoke-interface {v0, p1, p2}, Lc5/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lz2/k;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    check-cast p1, Landroid/database/Cursor;

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    new-instance v3, Lz2/r$c;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lz2/r$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lz2/r$a;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 3

    iget p2, p0, Lz2/k;->a:I

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lz2/k;->b:Ljava/lang/Object;

    check-cast p2, Lcom/mglab/scm/visual/FragmentPreferences;

    .line 1
    iget-object v1, p2, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    const-string v2, "psetaspe"

    .line 2
    invoke-static {v1, v2, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3
    iget-object p1, p1, Le2/g;->c:Le2/g$a;

    iget-object p1, p1, Le2/g$a;->o:Landroid/view/View;

    const v0, 0x7f090299

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 5
    iget-object p2, p2, Lcom/mglab/scm/visual/FragmentPreferences;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/appcompat/widget/k;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "lfTY9y7#bhZA4qf8"

    .line 6
    invoke-static {v0, p1}, Lf8/g;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "psetasnip"

    invoke-static {p2, v0, p1}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :pswitch_1
    iget-object p1, p0, Lz2/k;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/FragmentAbout;

    sget p2, Lcom/mglab/scm/visual/FragmentAbout;->e:I

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "psetdev"

    .line 9
    invoke-static {p2, v1, v0}, Lf8/h;->g0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p2

    const v1, 0x7f090260

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/navigation/NavigationView;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const v1, 0x7f09025b

    .line 12
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f09025a

    .line 13
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "DEV UNLOCKED "

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 15
    :goto_0
    iget-object p1, p0, Lz2/k;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/FragmentStat;

    sget-object p2, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lf8/h;->p0(Landroid/content/Context;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lz2/k;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lz2/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/perf/config/RemoteConfigManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/config/RemoteConfigManager;->a(Lcom/google/firebase/perf/config/RemoteConfigManager;Ljava/lang/Boolean;)V

    return-void

    :goto_0
    iget-object v0, p0, Lz2/k;->b:Ljava/lang/Object;

    check-cast v0, Lf8/j;

    check-cast p1, Li4/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget v1, p1, Li4/a;->b:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v1, v0, Lf8/j;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lf8/j;->b()V

    .line 4
    iget-object v1, v0, Lf8/j;->a:Li4/b;

    invoke-interface {v1}, Li4/b;->c()Lr4/o;

    .line 5
    :cond_0
    iget v1, p1, Li4/a;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 6
    iget-object v1, v0, Lf8/j;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    .line 7
    :try_start_0
    iget-object v1, v0, Lf8/j;->a:Li4/b;

    const/4 v2, 0x1

    iget-object v0, v0, Lf8/j;->c:Landroid/app/Activity;

    const/16 v3, 0x212

    invoke-interface {v1, p1, v2, v0, v3}, Li4/b;->e(Li4/a;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    iget-object v0, p0, Lz2/k;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/remoteconfig/internal/a$a;

    check-cast p1, Lr6/e;

    sget-object p1, Lcom/google/firebase/remoteconfig/internal/a;->k:[I

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
