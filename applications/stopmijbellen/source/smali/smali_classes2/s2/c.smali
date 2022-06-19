.class public final synthetic Ls2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/h;
.implements Lz2/r$b;
.implements Lp6/f$a;
.implements Lh5/a$a;
.implements Lcom/google/android/gms/tasks/SuccessContinuation;
.implements Li2/e;
.implements Le2/g$c;


# static fields
.field public static final synthetic b:Ls2/c;

.field public static final synthetic c:Ls2/c;

.field public static final synthetic d:Ls2/c;

.field public static final synthetic e:Ls2/c;

.field public static final synthetic f:Ls2/c;

.field public static final synthetic g:Ls2/c;

.field public static final synthetic h:Ls2/c;

.field public static final synthetic i:Ls2/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ls2/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ls2/c;-><init>(I)V

    sput-object v0, Ls2/c;->b:Ls2/c;

    new-instance v0, Ls2/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ls2/c;-><init>(I)V

    sput-object v0, Ls2/c;->c:Ls2/c;

    new-instance v0, Ls2/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ls2/c;-><init>(I)V

    sput-object v0, Ls2/c;->d:Ls2/c;

    new-instance v0, Ls2/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ls2/c;-><init>(I)V

    sput-object v0, Ls2/c;->e:Ls2/c;

    new-instance v0, Ls2/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ls2/c;-><init>(I)V

    sput-object v0, Ls2/c;->f:Ls2/c;

    new-instance v0, Ls2/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ls2/c;-><init>(I)V

    sput-object v0, Ls2/c;->g:Ls2/c;

    new-instance v0, Ls2/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ls2/c;-><init>(I)V

    sput-object v0, Ls2/c;->h:Ls2/c;

    new-instance v0, Ls2/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ls2/c;-><init>(I)V

    sput-object v0, Ls2/c;->i:Ls2/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Ls2/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li2/c;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lf8/a;->a:Landroid/content/Context;

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ls2/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lz2/r;->e:Lr2/b;

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2
    :goto_0
    check-cast p1, Landroid/database/Cursor;

    sget-object v0, Lz2/r;->e:Lr2/b;

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lh5/a;->a:Lr5/a;

    .line 1
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v7, v1

    move-object v8, v7

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "baseAddress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "uuid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "size"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 8
    :pswitch_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 9
    new-instance v8, Ljava/lang/String;

    .line 10
    sget-object v3, Lg5/v;->a:Ljava/nio/charset/Charset;

    .line 11
    invoke-direct {v8, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 12
    :pswitch_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 14
    :pswitch_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    const-string v2, "Null name"

    .line 15
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    if-nez v0, :cond_5

    const-string p1, " baseAddress"

    goto :goto_2

    :cond_5
    const-string p1, ""

    :goto_2
    if-nez v1, :cond_6

    const-string v2, " size"

    .line 17
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    if-nez v7, :cond_7

    const-string v2, " name"

    .line 18
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 20
    new-instance p1, Lg5/m;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v9, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lg5/m;-><init>(JJLjava/lang/String;Ljava/lang/String;Lg5/m$a;)V

    return-object p1

    .line 23
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x337a8b -> :sswitch_3
        0x35e001 -> :sswitch_2
        0x36f3bb -> :sswitch_1
        0x44c50fe3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    check-cast p1, Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public e(Li2/c;Ljava/util/List;)V
    .locals 9

    sget-object v0, Lf8/a;->a:Landroid/content/Context;

    .line 1
    iget p1, p1, Li2/c;->a:I

    if-nez p1, :cond_2

    .line 2
    sget-object p1, Lf8/a;->d:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 4
    iget-object v0, p2, Lcom/android/billingclient/api/Purchase;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lf8/a;->a:Landroid/content/Context;

    .line 7
    new-instance v1, Ly2/l;

    const/4 v2, 0x6

    invoke-direct {v1, p2, v2}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    const/16 v2, 0x10

    .line 8
    invoke-static {v2}, Lf8/g;->B(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v0}, Lf8/h;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "android_id"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    invoke-static {p2}, Lf8/a;->e(Lcom/android/billingclient/api/Purchase;)Ls6/k;

    move-result-object v6

    invoke-virtual {v6}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "hggjh"

    invoke-static {v3, v8, v6}, Lg8/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ls6/k;

    move-result-object v6

    invoke-virtual {v6}, Ls6/i;->toString()Ljava/lang/String;

    .line 13
    invoke-static {p2}, Lf8/a;->e(Lcom/android/billingclient/api/Purchase;)Ls6/k;

    move-result-object v6

    invoke-virtual {v6}, Ls6/i;->toString()Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v6

    const-string v8, "purchase_auth.php"

    invoke-static {v4, v8}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    check-cast v6, Lw7/p;

    invoke-virtual {v6, v4}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "deviceid"

    .line 17
    invoke-virtual {v6, v4, v0}, Lw7/p;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    const-string v0, "data"

    .line 18
    invoke-virtual {v6, v0, v2}, Lw7/p;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    const-string v0, "gzip"

    const-string v2, "1"

    .line 19
    invoke-virtual {v6, v0, v2}, Lw7/p;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 20
    invoke-static {p2}, Lf8/a;->e(Lcom/android/billingclient/api/Purchase;)Ls6/k;

    move-result-object v0

    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lg8/d;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 21
    invoke-virtual {v6, v0}, Lw7/p;->a([B)Ljava/lang/Object;

    .line 22
    invoke-virtual {v6}, Lw7/p;->d()Lc8/a;

    move-result-object v0

    .line 23
    check-cast v0, Lm7/g;

    invoke-virtual {v0, v1}, Lm7/g;->k(Lm7/d;)V

    .line 24
    sget-object v0, Lf8/a;->g:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 26
    new-instance v0, Li2/d;

    invoke-direct {v0}, Li2/d;-><init>()V

    .line 27
    iput-object p2, v0, Li2/d;->a:Ljava/lang/String;

    .line 28
    sget-object p2, Ls2/c;->g:Ls2/c;

    .line 29
    sget-object v1, Lf8/a;->b:Lcom/android/billingclient/api/a;

    invoke-virtual {v1, v0, p2}, Lcom/android/billingclient/api/a;->a(Li2/d;Li2/e;)V

    goto/16 :goto_0

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Purchase token must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    invoke-static {}, Lf8/a;->i()V

    return-void
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 0

    iget p1, p0, Ls2/c;->a:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    return-void

    :goto_0
    sget-object p1, Lcom/mglab/scm/visual/FragmentStat;->g:Lo8/e;

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/a$a;

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
