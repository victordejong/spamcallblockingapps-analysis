.class public Landroidx/appcompat/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/a1;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ls2/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/z;->a:Ljava/lang/Object;

    new-instance p1, Li2/q;

    invoke-direct {p1, p0, p2}, Li2/q;-><init>(Landroidx/appcompat/widget/z;Ls2/c;)V

    iput-object p1, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/z;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/z;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    check-cast v1, Lx2/f;

    invoke-virtual {v1}, Lx2/f;->h()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/z;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Landroid/view/textclassifier/TextClassifier;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    if-nez v1, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassificationManager;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    sget-object v0, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    return-object v0

    .line 6
    :cond_1
    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    return-object v0
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    check-cast v0, Li2/q;

    iget-object v1, p0, Landroidx/appcompat/widget/z;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 2
    iget-boolean v2, v0, Li2/q;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Li2/q;->c:Landroidx/appcompat/widget/z;

    .line 3
    iget-object v2, v2, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    check-cast v2, Li2/q;

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Li2/q;->b:Z

    goto :goto_0

    :cond_0
    const-string v0, "BillingBroadcastManager"

    const-string v1, "Receiver is not registered."

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public zza()Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/appcompat/widget/z;->a:Ljava/lang/Object;

    check-cast v1, Lj4/b1;

    iget-object v2, v0, Landroidx/appcompat/widget/z;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "session_id"

    .line 1
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_5

    :cond_0
    iget-object v4, v1, Lj4/b1;->e:Ljava/util/Map;

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "chunk_intents"

    const-string v7, "status"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_7

    .line 4
    invoke-virtual {v1, v3}, Lj4/b1;->a(I)Lj4/y0;

    move-result-object v4

    iget-object v10, v4, Lj4/y0;->c:Lj4/x0;

    iget-object v10, v10, Lj4/x0;->a:Ljava/lang/String;

    .line 5
    invoke-static {v7, v10}, Li4/d;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v10, v4, Lj4/y0;->c:Lj4/x0;

    iget v11, v10, Lj4/x0;->d:I

    invoke-static {v11, v7}, Ly/d;->r(II)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v2, Lj4/b1;->g:Lp6/c;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v9

    .line 7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v8

    const-string v5, "Found stale update for session %s with status %d."

    .line 8
    invoke-virtual {v2, v5, v6}, Lp6/c;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, v4, Lj4/y0;->c:Lj4/x0;

    iget-object v4, v2, Lj4/x0;->a:Ljava/lang/String;

    iget v2, v2, Lj4/x0;->d:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_1

    iget-object v1, v1, Lj4/b1;->b:Lo4/p;

    .line 9
    invoke-interface {v1}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj4/l2;

    invoke-interface {v1, v3, v4}, Lj4/l2;->b(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const/4 v5, 0x5

    if-ne v2, v5, :cond_2

    .line 10
    iget-object v1, v1, Lj4/b1;->b:Lo4/p;

    .line 11
    invoke-interface {v1}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj4/l2;

    invoke-interface {v1, v3}, Lj4/l2;->zzi(I)V

    goto/16 :goto_4

    :cond_2
    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    iget-object v1, v1, Lj4/b1;->b:Lo4/p;

    .line 12
    invoke-interface {v1}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj4/l2;

    new-array v2, v8, [Ljava/lang/String;

    aput-object v4, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lj4/l2;->e(Ljava/util/List;)V

    goto/16 :goto_4

    :cond_3
    iput v7, v10, Lj4/x0;->d:I

    invoke-static {v7}, Ly/d;->s(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    new-instance v2, Lj4/s0;

    invoke-direct {v2, v1, v3}, Lj4/s0;-><init>(Lj4/b1;I)V

    invoke-virtual {v1, v2}, Lj4/b1;->b(Lj4/a1;)Ljava/lang/Object;

    .line 14
    iget-object v1, v1, Lj4/b1;->c:Lj4/r0;

    iget-object v2, v4, Lj4/y0;->c:Lj4/x0;

    iget-object v2, v2, Lj4/x0;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Lj4/r0;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    iget-object v1, v10, Lj4/x0;->f:Ljava/util/List;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj4/z0;

    iget-object v5, v4, Lj4/y0;->c:Lj4/x0;

    iget-object v5, v5, Lj4/x0;->a:Ljava/lang/String;

    .line 17
    iget-object v7, v3, Lj4/z0;->a:Ljava/lang/String;

    .line 18
    invoke-static {v6, v5, v7}, Li4/d;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v7, 0x0

    .line 20
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_5

    .line 21
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 22
    iget-object v10, v3, Lj4/z0;->d:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj4/v0;

    iput-boolean v8, v10, Lj4/v0;->a:Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 23
    :cond_7
    invoke-static {v2}, Lj4/b1;->c(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "pack_version"

    .line 24
    invoke-static {v4, v11}, Li4/d;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v4, "pack_version_tag"

    .line 26
    invoke-static {v4, v11}, Li4/d;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 27
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 28
    invoke-static {v7, v11}, Li4/d;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v4, "total_bytes_to_download"

    .line 30
    invoke-static {v4, v11}, Li4/d;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v4, "slice_ids"

    .line 32
    invoke-static {v4, v11}, Li4/d;->L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v4, :cond_8

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 36
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 37
    invoke-static {v6, v11, v7}, Li4/d;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 38
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v8, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez v10, :cond_9

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 41
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/Intent;

    if-eqz v19, :cond_a

    const/4 v9, 0x1

    :cond_a
    new-instance v0, Lj4/v0;

    invoke-direct {v0, v9}, Lj4/v0;-><init>(Z)V

    .line 42
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    const/4 v9, 0x0

    goto :goto_2

    :cond_b
    const-string v0, "uncompressed_hash_sha256"

    .line 43
    invoke-static {v0, v11, v7}, Li4/d;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v0, "uncompressed_size"

    .line 45
    invoke-static {v0, v11, v7}, Li4/d;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v0, "patch_format"

    .line 47
    invoke-static {v0, v11, v7}, Li4/d;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    .line 48
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_c

    new-instance v0, Lj4/z0;

    const/16 v25, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    move-object/from16 v24, v8

    invoke-direct/range {v19 .. v26}, Lj4/z0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    const/4 v9, 0x0

    goto :goto_3

    :cond_c
    const-string v0, "compression_format"

    .line 49
    invoke-static {v0, v11, v7}, Li4/d;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    .line 50
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v25

    new-instance v0, Lj4/z0;

    const/16 v26, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v7

    move-object/from16 v24, v8

    invoke-direct/range {v19 .. v26}, Lj4/z0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    .line 51
    :goto_3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 52
    :cond_d
    new-instance v0, Lj4/x0;

    move-object v10, v0

    move-object/from16 v17, v5

    invoke-direct/range {v10 .. v18}, Lj4/x0;-><init>(Ljava/lang/String;JIJLjava/util/List;Ljava/lang/String;)V

    new-instance v4, Lj4/y0;

    const-string v5, "app_version_code"

    .line 53
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v4, v3, v2, v0}, Lj4/y0;-><init>(IILj4/x0;)V

    iget-object v0, v1, Lj4/b1;->e:Ljava/util/Map;

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_e
    :goto_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    return-object v1
.end method
