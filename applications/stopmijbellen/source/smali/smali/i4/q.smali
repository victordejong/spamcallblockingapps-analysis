.class public final Li4/q;
.super Li4/o;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;

.field public final synthetic e:Li4/r;


# direct methods
.method public constructor <init>(Li4/r;Lr4/l;Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Li4/q;->e:Li4/r;

    new-instance v0, Lp6/c;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lp6/c;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Li4/o;-><init>(Li4/r;Lp6/c;Lr4/l;)V

    iput-object p3, p0, Li4/q;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Li4/o;->c:Li4/r;

    iget-object v2, v2, Li4/r;->a:Lo4/j;

    iget-object v3, v0, Li4/o;->b:Lr4/l;

    invoke-virtual {v2, v3}, Lo4/j;->c(Lr4/l;)V

    iget-object v2, v0, Li4/o;->a:Lp6/c;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "onRequestInfo"

    .line 2
    invoke-virtual {v2, v5, v4}, Lp6/c;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "error.code"

    const/4 v4, -0x2

    .line 3
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    iget-object v3, v0, Li4/o;->b:Lr4/l;

    new-instance v5, Lcom/google/android/play/core/install/InstallException;

    .line 5
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 6
    invoke-direct {v5, v1}, Lcom/google/android/play/core/install/InstallException;-><init>(I)V

    invoke-virtual {v3, v5}, Lr4/l;->a(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object v2, v0, Li4/o;->b:Lr4/l;

    iget-object v4, v0, Li4/q;->e:Li4/r;

    iget-object v6, v0, Li4/q;->d:Ljava/lang/String;

    const/4 v5, -0x1

    const-string v7, "version.code"

    .line 7
    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "update.availability"

    .line 8
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "install.status"

    .line 9
    invoke-virtual {v1, v9, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "client.version.staleness"

    .line 10
    invoke-virtual {v1, v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    move-object v10, v5

    const-string v5, "in.app.update.priority"

    .line 12
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v3, "bytes.downloaded"

    .line 13
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v3, "total.bytes.to.download"

    .line 14
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v3, "additional.size.required"

    .line 15
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    iget-object v3, v4, Li4/r;->d:Li4/t;

    .line 16
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v4, Ljava/io/File;

    iget-object v3, v3, Li4/t;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "assetpacks"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-static {v4}, Li4/t;->a(Ljava/io/File;)J

    move-result-wide v18

    const-string v3, "blocking.intent"

    .line 19
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/app/PendingIntent;

    const-string v3, "nonblocking.intent"

    .line 20
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/app/PendingIntent;

    const-string v3, "blocking.destructive.intent"

    .line 21
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/app/PendingIntent;

    const-string v3, "nonblocking.destructive.intent"

    .line 22
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object/from16 v23, v1

    check-cast v23, Landroid/app/PendingIntent;

    .line 23
    new-instance v1, Li4/a;

    move-object v5, v1

    invoke-direct/range {v5 .. v23}, Li4/a;-><init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 24
    invoke-virtual {v2, v1}, Lr4/l;->b(Ljava/lang/Object;)Z

    return-void
.end method
