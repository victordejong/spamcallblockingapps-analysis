.class public final Landroidx/core/app/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/g$d;,
        Landroidx/core/app/g$j;,
        Landroidx/core/app/g$f;,
        Landroidx/core/app/g$a;,
        Landroidx/core/app/g$g;,
        Landroidx/core/app/g$h;,
        Landroidx/core/app/g$c;,
        Landroidx/core/app/g$b;,
        Landroidx/core/app/g$i;,
        Landroidx/core/app/g$e;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2

    .line 5764
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 5765
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    .line 5766
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 5767
    invoke-static {p0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/app/Notification$Action;)Landroidx/core/app/g$a;
    .locals 18

    move-object/from16 v0, p0

    .line 5834
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v1

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v12, v3

    goto :goto_2

    .line 5838
    :cond_0
    array-length v5, v1

    new-array v5, v5, [Landroidx/core/app/l;

    const/4 v6, 0x0

    .line 5839
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 5840
    aget-object v7, v1, v6

    .line 5841
    new-instance v16, Landroidx/core/app/l;

    .line 5842
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v9

    .line 5843
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    .line 5844
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 5845
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v12

    .line 5846
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v2, :cond_1

    .line 5847
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v8

    move v13, v8

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 5849
    :goto_1
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v15}, Landroidx/core/app/l;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    aput-object v16, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v12, v5

    .line 5855
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    const-string v6, "android.support.allowGeneratedReplies"

    const/4 v7, 0x1

    if-lt v1, v5, :cond_5

    .line 5856
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5858
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    .line 5860
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_4
    move v14, v1

    .line 5865
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "android.support.action.showsUserInterface"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 5868
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_6

    .line 5869
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v1

    goto :goto_5

    .line 5871
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "android.support.action.semanticAction"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_5
    move v15, v1

    .line 5875
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v4

    move/from16 v17, v4

    goto :goto_6

    :cond_7
    const/16 v17, 0x0

    .line 5877
    :goto_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_a

    .line 5878
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_8

    iget v1, v0, Landroid/app/Notification$Action;->icon:I

    if-eqz v1, :cond_8

    .line 5879
    new-instance v1, Landroidx/core/app/g$a;

    iget v8, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v9, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 5880
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Landroidx/core/app/g$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/l;[Landroidx/core/app/l;ZIZZ)V

    return-object v1

    .line 5883
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_7

    .line 5884
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    :goto_7
    move-object v8, v3

    .line 5885
    new-instance v1, Landroidx/core/app/g$a;

    iget-object v9, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Landroidx/core/app/g$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/l;[Landroidx/core/app/l;ZIZZ)V

    return-object v1

    .line 5889
    :cond_a
    new-instance v1, Landroidx/core/app/g$a;

    iget v8, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v9, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Landroidx/core/app/g$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/l;[Landroidx/core/app/l;ZIZZ)V

    return-object v1
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4

    .line 5745
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 5746
    instance-of v1, v0, [Landroid/app/Notification;

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 5749
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Landroid/app/Notification;

    const/4 v2, 0x0

    .line 5750
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 5751
    aget-object v3, v0, v2

    check-cast v3, Landroid/app/Notification;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5753
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v1

    .line 5747
    :cond_2
    :goto_1
    check-cast v0, [Landroid/app/Notification;

    return-object v0
.end method
