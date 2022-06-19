.class Lcom/unknownphone/callblocker/e/c$e;
.super Landroid/os/AsyncTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/unknownphone/callblocker/e/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unknownphone/callblocker/e/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;)V
    .locals 1

    .prologue
    .line 728
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 729
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c$e;->a:Ljava/lang/ref/WeakReference;

    .line 730
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 782
    const-string/jumbo v0, "android.permission.READ_CALL_LOG"

    invoke-static {p1, v0}, Landroidx/core/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 785
    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    :goto_1
    return-object v0

    :cond_0
    move v0, v9

    .line 782
    goto :goto_0

    .line 787
    :cond_1
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 789
    if-nez v0, :cond_4

    .line 791
    :goto_2
    new-instance v10, Lcom/unknownphone/callblocker/d/b;

    invoke-direct {v10, p1}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    .line 793
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 795
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "date"

    aput-object v0, v2, v9

    const-string/jumbo v0, "number"

    aput-object v0, v2, v8

    const-string/jumbo v0, "duration"

    aput-object v0, v2, v11

    const/4 v0, 0x3

    const-string/jumbo v1, "name"

    aput-object v1, v2, v0

    .line 801
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "type != 6"

    const-string/jumbo v5, "_id DESC"

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 805
    if-eqz v1, :cond_5

    .line 806
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xf

    if-ge v0, v2, :cond_5

    .line 808
    new-instance v2, Lcom/unknownphone/callblocker/e/a;

    invoke-direct {v2}, Lcom/unknownphone/callblocker/e/a;-><init>()V

    .line 809
    const-string/jumbo v0, "date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/unknownphone/callblocker/e/a;->b(J)V

    .line 810
    invoke-virtual {v2, v11}, Lcom/unknownphone/callblocker/e/a;->a(S)V

    .line 811
    const-string/jumbo v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f10020a

    .line 812
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 811
    invoke-static {v0, v3}, Lcom/unknownphone/callblocker/custom/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/unknownphone/callblocker/e/a;->a(Ljava/lang/String;)V

    .line 813
    const-string/jumbo v0, "number"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/unknownphone/callblocker/e/a;->b(Ljava/lang/String;)V

    .line 814
    invoke-virtual {v2, v8}, Lcom/unknownphone/callblocker/e/a;->a(I)V

    .line 817
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    .line 818
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/unknownphone/callblocker/e/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    .line 823
    :goto_4
    if-nez v0, :cond_3

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 806
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 789
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    goto/16 :goto_2

    .line 826
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 827
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 828
    invoke-virtual {v10, v0}, Lcom/unknownphone/callblocker/d/b;->a(Ljava/util/List;)V

    .line 830
    const-string/jumbo v0, "com.unknownphone.callblocker.PREFS"

    invoke-virtual {p1, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 831
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "syncing_done"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 833
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v7

    .line 835
    goto/16 :goto_1

    :cond_7
    move v0, v9

    goto :goto_4
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    .line 754
    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->A()Z

    move-result v1

    if-nez v1, :cond_0

    .line 757
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    .line 758
    :cond_0
    const/4 v0, 0x0

    .line 760
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unknownphone/callblocker/e/c$e;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unknownphone/callblocker/e/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    .line 768
    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    :try_start_0
    invoke-static {v0, p1}, Lcom/unknownphone/callblocker/e/c;->c(Lcom/unknownphone/callblocker/e/c;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 776
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 724
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/e/c$e;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 724
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/e/c$e;->a(Ljava/util/List;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    .line 737
    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->d(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setView(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
