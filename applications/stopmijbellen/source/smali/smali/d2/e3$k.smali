.class public Ld2/e3$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/e3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/e3;


# direct methods
.method public constructor <init>(Ld2/e3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e3$k;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ld2/e3$k;->a:Ld2/e3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const/16 v2, 0x1f4

    const-string v3, "length_ms"

    .line 4
    invoke-static {v1, v3, v2}, Ld2/e4;->a(Ld2/f4;Ljava/lang/String;I)I

    move-result v1

    .line 5
    new-instance v2, Ld2/f4;

    invoke-direct {v2}, Ld2/f4;-><init>()V

    .line 6
    sget-object v3, Ld2/i3;->a:Ljava/util/concurrent/ExecutorService;

    .line 7
    new-instance v3, Ld2/d4;

    invoke-direct {v3}, Ld2/d4;-><init>()V

    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1000

    .line 10
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 11
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 12
    new-instance v6, Ld2/d4;

    invoke-direct {v6}, Ld2/d4;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    .line 13
    :goto_0
    :try_start_1
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v8, v7

    if-ge v3, v8, :cond_1

    .line 14
    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    move-object v3, v6

    :catch_1
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 15
    :goto_1
    invoke-virtual {v3}, Ld2/d4;->c()I

    move-result v7

    const/4 v8, 0x1

    if-ge v5, v7, :cond_4

    .line 16
    invoke-virtual {v3, v5}, Ld2/d4;->e(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.permission.VIBRATE"

    .line 17
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const-string v3, "success"

    if-nez v6, :cond_5

    const-string v0, "No vibrate permission detected."

    .line 18
    invoke-static {v4, v8, v0, v4}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 19
    invoke-static {v2, v3, v4, p1, v2}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    goto :goto_2

    :cond_5
    :try_start_2
    const-string v5, "vibrator"

    .line 20
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    int-to-long v5, v1

    .line 21
    invoke-virtual {v0, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 22
    invoke-static {v2, v3, v8}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 23
    invoke-virtual {p1, v2}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v0, "Vibrate command failed."

    .line 24
    invoke-static {v4, v8, v0, v4}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 25
    :cond_6
    invoke-static {v2, v3, v4, p1, v2}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    :goto_2
    return-void
.end method
