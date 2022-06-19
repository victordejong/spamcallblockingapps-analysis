.class public Lth0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lth0;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".HANDLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lth0;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "com.callcontrol.datashare.intent.extra.TOKEN"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    invoke-static {v0}, Lda1;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v5, v4, [B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/String;

    const/16 v6, 0x28

    invoke-direct {v0, v5, v7, v6}, Ljava/lang/String;-><init>([BII)V

    new-instance v7, Ljava/lang/String;

    sub-int/2addr v4, v6

    invoke-direct {v7, v5, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v7, v2, v3}, Lr81;->K(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.callcontrol.datashare.intent.extra.PHONE_NUMBER"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callcontrol/datashare/CallControl$Report;

    invoke-virtual {v3}, Lcom/callcontrol/datashare/CallControl$Report;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/callcontrol/datashare/CallControl$Report;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/callcontrol/datashare/CallControl$Report;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/callcontrol/datashare/CallControl$Report;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0, v0}, Lr81;->S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lr81$a;

    move-result-object p0

    sget-object v0, Lr81$a;->d:Lr81$a;

    if-ne p0, v0, :cond_6

    return-object v1

    :cond_6
    return-object v7

    :catchall_0
    :cond_7
    :goto_2
    return-object v1
.end method

.method public static b(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;)Z
    .locals 9

    sget-object v0, Lth0;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Lth0;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    sget-object v4, Lr71$a;->y0:Lr71$a;

    invoke-virtual {v4}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lr81;

    invoke-direct {v5}, Lr81;-><init>()V

    invoke-virtual {v5, v0}, Lr81;->N(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v1, :cond_2

    invoke-virtual {v4, v0}, Lr71$a;->o(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.callcontrol.datashare.intent.action.LOOKUP"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    invoke-static {p0, p1}, Lth0;->e(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.callcontrol.datashare.intent.action.ADD_RULE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    instance-of v4, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    if-eqz v4, :cond_5

    move-object v4, p0

    check-cast v4, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object v4, v4, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    sget-object v5, Liv0;->h:Liv0;

    invoke-virtual {v4, v5}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->o(Liv0;)Liv0;

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {p0, p1, v0}, Lth0;->c(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.callcontrol.datashare.intent.action.REPORT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_8

    invoke-static {p0, p1, v0}, Lth0;->f(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.callcontrol.datashare.intent.action.BLOCKED_LIST"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v3, :cond_c

    instance-of v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    sget-object v2, Liv0;->h:Liv0;

    invoke-virtual {v0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->o(Liv0;)Liv0;

    :cond_a
    invoke-static {p0, p1}, Lth0;->d(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v1

    :cond_b
    const-class v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->t(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZ)Landroidx/fragment/app/Fragment;

    return v1

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.callcontrol.datashare.intent.action.3RD_PARTY_ACCESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    instance-of p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    if-eqz p1, :cond_e

    move-object p1, p0

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->d:Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;

    sget-object v0, Liv0;->j:Liv0;

    invoke-virtual {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/customview/bottomappbar/BottomNavigationAppBar;->o(Liv0;)Liv0;

    :cond_e
    const-class v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DatashareAccessFragment;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->u(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZZ)Landroidx/fragment/app/Fragment;

    return v1

    :cond_f
    return v2
.end method

.method public static c(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "com.callcontrol.datashare.intent.extra.PHONE_NUMBER"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    invoke-static/range {p0 .. p2}, Lth0;->f(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callcontrol/datashare/CallControl$Report;

    if-nez v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {v1}, Lcom/callcontrol/datashare/CallControl$Report;->c()Z

    move-result v4

    invoke-virtual {v1}, Lcom/callcontrol/datashare/CallControl$Report;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/callcontrol/datashare/CallControl$Report;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v7

    const-string v8, ""

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    if-eqz v4, :cond_4

    sget-object v8, Lq71$g;->c:Lq71$g;

    goto :goto_1

    :cond_4
    sget-object v8, Lq71$g;->b:Lq71$g;

    :goto_1
    invoke-virtual {v7}, Li91;->s()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v7}, Li91;->q()Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_6

    :cond_5
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v9}, Loe1;->w(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/callcontrol/datashare/CallControl$Report;->a()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v9, v10

    :cond_6
    new-instance v11, Lx81;

    invoke-direct {v11}, Lx81;-><init>()V

    invoke-virtual {v11, v7}, Lx81;->Q(Li91;)V

    iget-wide v12, v11, Lx81;->d:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_7

    iget-object v12, v11, Lx81;->l:Lq71$g;

    if-ne v12, v8, :cond_7

    if-eqz v9, :cond_9

    iget-object v8, v11, Lx81;->f:Ljava/lang/String;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_2

    :cond_7
    const-class v12, Lq71$e;

    invoke-static {v12}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v12

    iput-object v12, v11, Lx81;->j:Ljava/util/EnumSet;

    iput-object v8, v11, Lx81;->l:Lq71$g;

    iput-object v7, v11, Lx81;->g:Li91;

    :cond_8
    :goto_2
    iput-object v9, v11, Lx81;->f:Ljava/lang/String;

    invoke-virtual {v11}, Lx81;->z()Z

    :cond_9
    const-string v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const v9, 0x7f0d018c

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    if-eqz v4, :cond_a

    const v10, 0x7f11023e

    goto :goto_3

    :cond_a
    const v10, 0x7f11023d

    :goto_3
    new-instance v12, Lth0$b;

    invoke-direct {v12, v4, v7, v1, v0}, Lth0$b;-><init>(ZLi91;Lcom/callcontrol/datashare/CallControl$Report;Lcom/kedlin/cca/ui/CCAFragmentActivity;)V

    invoke-virtual {v9, v10, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v4, :cond_b

    const v7, 0x7f11023f

    goto :goto_4

    :cond_b
    const v7, 0x7f110240

    :goto_4
    new-instance v9, Lth0$a;

    invoke-direct {v9, v4, v11, v0}, Lth0$a;-><init>(ZLx81;Lcom/kedlin/cca/ui/CCAFragmentActivity;)V

    invoke-virtual {v1, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v1

    move-object v13, v8

    invoke-virtual/range {v12 .. v17}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const v7, 0x7f0a0636

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v4, :cond_c

    const v9, 0x7f110247

    goto :goto_5

    :cond_c
    const v9, 0x7f110243

    :goto_5
    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v6, v11, v3

    aput-object v2, v11, v5

    invoke-virtual {v0, v9, v11}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_d

    const v0, 0x7f0a0635

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f110246

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_d
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return v5

    :catchall_0
    :cond_e
    :goto_6
    return v3
.end method

.method public static d(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;)Z
    .locals 9

    const-string v0, "com.callcontrol.datashare.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    invoke-virtual {p1}, Li91;->q()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Li91;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lx81;

    invoke-direct {v1}, Lx81;-><init>()V

    invoke-virtual {v1, p1}, Lx81;->K(Li91;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->y:Ljava/lang/String;

    iget-wide v3, v1, Lx81;->d:J

    invoke-virtual {v5, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->x:Ljava/lang/String;

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$n;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result p1

    if-lez p1, :cond_4

    const-class v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->u(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZZ)Landroidx/fragment/app/Fragment;

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static e(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;)Z
    .locals 9

    const-string v0, "com.callcontrol.datashare.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object p1

    invoke-virtual {p1}, Li91;->q()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Li91;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;->G:Ljava/lang/String;

    invoke-virtual {p1}, Li91;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/lookup/LookupFragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->u(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZZ)Landroidx/fragment/app/Fragment;

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static f(Lcom/kedlin/cca/ui/CCAFragmentActivity;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "com.callcontrol.datashare.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callcontrol/datashare/CallControl$Report;

    invoke-static {p0, p1}, Lth0;->g(Lcom/kedlin/cca/ui/CCAFragmentActivity;Lcom/callcontrol/datashare/CallControl$Report;)Z

    move-result p0

    return p0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callcontrol/datashare/CallControl$Report;

    invoke-virtual {v1}, Lcom/callcontrol/datashare/CallControl$Report;->c()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callcontrol/datashare/CallControl$Report;

    invoke-virtual {v6}, Lcom/callcontrol/datashare/CallControl$Report;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Lcom/callcontrol/datashare/CallControl$Report;->a()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/callcontrol/datashare/CallControl$Report;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/callcontrol/datashare/CallControl$Report;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/callcontrol/datashare/CallControl$Report;->b()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_5

    return v0

    :cond_5
    const-string v5, "\n\n"

    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Loe1;->i(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v5, 0x7f110245

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v0

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_6

    const v6, 0x7f110244

    goto :goto_2

    :cond_6
    const v6, 0x7f110242

    :goto_2
    new-array v7, v2, [Ljava/lang/Object;

    aput-object v3, v7, v0

    invoke-virtual {p0, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f11024c

    new-instance v3, Lth0$d;

    invoke-direct {v3, v1, p1, p0}, Lth0$d;-><init>(ZLjava/util/ArrayList;Lcom/kedlin/cca/ui/CCAFragmentActivity;)V

    invoke-virtual {p2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f11024b

    new-instance v0, Lth0$c;

    invoke-direct {v0, p0}, Lth0$c;-><init>(Lcom/kedlin/cca/ui/CCAFragmentActivity;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v2

    :catchall_0
    :cond_7
    :goto_3
    return v0
.end method

.method public static g(Lcom/kedlin/cca/ui/CCAFragmentActivity;Lcom/callcontrol/datashare/CallControl$Report;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/callcontrol/datashare/CallControl$Report;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v0

    invoke-virtual {v0}, Li91;->q()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Li91;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;->j:Ljava/lang/String;

    invoke-virtual {v0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callcontrol/datashare/CallControl$Report;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callcontrol/datashare/CallControl$Report;->c()Z

    move-result p1

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v4, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->u(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;ZZZ)Landroidx/fragment/app/Fragment;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
