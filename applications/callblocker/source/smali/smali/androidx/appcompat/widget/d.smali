.class Landroidx/appcompat/widget/d;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/d$e;,
        Landroidx/appcompat/widget/d$a;,
        Landroidx/appcompat/widget/d$c;,
        Landroidx/appcompat/widget/d$d;,
        Landroidx/appcompat/widget/d$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String;

.field private static final e:Ljava/lang/Object;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/appcompat/widget/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Landroid/content/Context;

.field final c:Ljava/lang/String;

.field d:Z

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/widget/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/appcompat/widget/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/content/Intent;

.field private k:Landroidx/appcompat/widget/d$b;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroidx/appcompat/widget/d$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const-class v0, Landroidx/appcompat/widget/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/d;->a:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/d;->e:Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/d;->f:Ljava/util/Map;

    return-void
.end method

.method private a(Landroidx/appcompat/widget/d$c;)Z
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Landroidx/appcompat/widget/d;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 728
    if-eqz v0, :cond_0

    .line 729
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/widget/d;->n:Z

    .line 730
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->h()V

    .line 731
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->c()V

    .line 732
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->e()Z

    .line 733
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->notifyChanged()V

    .line 735
    :cond_0
    return v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 566
    iget-boolean v0, p0, Landroidx/appcompat/widget/d;->m:Z

    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/d;->n:Z

    if-nez v0, :cond_2

    .line 577
    :cond_1
    :goto_0
    return-void

    .line 572
    :cond_2
    iput-boolean v5, p0, Landroidx/appcompat/widget/d;->n:Z

    .line 573
    iget-object v0, p0, Landroidx/appcompat/widget/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    new-instance v0, Landroidx/appcompat/widget/d$e;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/d$e;-><init>(Landroidx/appcompat/widget/d;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/appcompat/widget/d;->i:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/appcompat/widget/d;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/d$e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 654
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->f()Z

    move-result v0

    .line 655
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->g()Z

    move-result v1

    or-int/2addr v0, v1

    .line 656
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->h()V

    .line 657
    if-eqz v0, :cond_0

    .line 658
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->e()Z

    .line 659
    invoke-virtual {p0}, Landroidx/appcompat/widget/d;->notifyChanged()V

    .line 661
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 671
    iget-object v0, p0, Landroidx/appcompat/widget/d;->k:Landroidx/appcompat/widget/d$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/d;->j:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    .line 672
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Landroidx/appcompat/widget/d;->k:Landroidx/appcompat/widget/d$b;

    iget-object v1, p0, Landroidx/appcompat/widget/d;->j:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    iget-object v3, p0, Landroidx/appcompat/widget/d;->i:Ljava/util/List;

    .line 674
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 673
    invoke-interface {v0, v1, v2, v3}, Landroidx/appcompat/widget/d$b;->a(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 675
    const/4 v0, 0x1

    .line 677
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 687
    iget-boolean v1, p0, Landroidx/appcompat/widget/d;->o:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/d;->j:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 688
    iput-boolean v0, p0, Landroidx/appcompat/widget/d;->o:Z

    .line 689
    iget-object v1, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 690
    iget-object v1, p0, Landroidx/appcompat/widget/d;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/widget/d;->j:Landroid/content/Intent;

    .line 691
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 692
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    .line 693
    :goto_0
    if-ge v1, v3, :cond_0

    .line 694
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 695
    iget-object v4, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    new-instance v5, Landroidx/appcompat/widget/d$a;

    invoke-direct {v5, v0}, Landroidx/appcompat/widget/d$a;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 697
    :cond_0
    const/4 v0, 0x1

    .line 699
    :cond_1
    return v0
.end method

.method private g()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 710
    iget-boolean v2, p0, Landroidx/appcompat/widget/d;->d:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroidx/appcompat/widget/d;->n:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/appcompat/widget/d;->c:Ljava/lang/String;

    .line 711
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 712
    iput-boolean v1, p0, Landroidx/appcompat/widget/d;->d:Z

    .line 713
    iput-boolean v0, p0, Landroidx/appcompat/widget/d;->m:Z

    .line 714
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->i()V

    .line 717
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 742
    iget-object v0, p0, Landroidx/appcompat/widget/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/d;->l:I

    sub-int v3, v0, v1

    .line 743
    if-gtz v3, :cond_1

    .line 753
    :cond_0
    return-void

    .line 746
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/d;->n:Z

    move v1, v2

    .line 747
    :goto_0
    if-ge v1, v3, :cond_0

    .line 748
    iget-object v0, p0, Landroidx/appcompat/widget/d;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/d$c;

    .line 747
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private i()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 964
    .line 966
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/d;->b:Landroid/content/Context;

    iget-object v1, p0, Landroidx/appcompat/widget/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 974
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 975
    const-string/jumbo v0, "UTF-8"

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 977
    const/4 v0, 0x0

    .line 978
    :goto_0
    if-eq v0, v8, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 979
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 982
    :cond_0
    const-string/jumbo v0, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 983
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    :try_start_2
    sget-object v2, Landroidx/appcompat/widget/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reading historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    if-eqz v1, :cond_1

    .line 1026
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1032
    :cond_1
    :goto_1
    return-void

    .line 987
    :cond_2
    :try_start_4
    iget-object v0, p0, Landroidx/appcompat/widget/d;->i:Ljava/util/List;

    .line 988
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 991
    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    .line 992
    if-ne v3, v8, :cond_4

    .line 1024
    if-eqz v1, :cond_1

    .line 1026
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 1027
    :catch_1
    move-exception v0

    goto :goto_1

    .line 995
    :cond_4
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 998
    :try_start_6
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 999
    const-string/jumbo v4, "historical-record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1000
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "Share records file not well-formed."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1021
    :catch_2
    move-exception v0

    .line 1022
    :try_start_7
    sget-object v2, Landroidx/appcompat/widget/d;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reading historical recrod file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/widget/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1024
    if-eqz v1, :cond_1

    .line 1026
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 1027
    :catch_3
    move-exception v0

    goto :goto_1

    .line 1003
    :cond_5
    const/4 v3, 0x0

    :try_start_9
    const-string/jumbo v4, "activity"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1004
    const/4 v4, 0x0

    const-string/jumbo v5, "time"

    .line 1005
    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1006
    const/4 v6, 0x0

    const-string/jumbo v7, "weight"

    .line 1007
    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1008
    new-instance v7, Landroidx/appcompat/widget/d$c;

    invoke-direct {v7, v3, v4, v5, v6}, Landroidx/appcompat/widget/d$c;-><init>(Ljava/lang/String;JF)V

    .line 1009
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 1024
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    .line 1026
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1031
    :cond_6
    :goto_3
    throw v0

    .line 1027
    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v1

    goto :goto_3

    .line 967
    :catch_6
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Landroidx/appcompat/widget/d;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->d()V

    .line 397
    iget-object v0, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/pm/ResolveInfo;)I
    .locals 5

    .prologue
    .line 424
    iget-object v2, p0, Landroidx/appcompat/widget/d;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 425
    :try_start_0
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->d()V

    .line 426
    iget-object v3, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    .line 427
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 428
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 429
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/d$a;

    .line 430
    iget-object v0, v0, Landroidx/appcompat/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    if-ne v0, p1, :cond_0

    .line 431
    monitor-exit v2

    move v0, v1

    .line 434
    :goto_1
    return v0

    .line 428
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_1
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 410
    iget-object v1, p0, Landroidx/appcompat/widget/d;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_0
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->d()V

    .line 412
    iget-object v0, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/d$a;

    iget-object v0, v0, Landroidx/appcompat/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v2, p0, Landroidx/appcompat/widget/d;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 458
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/d;->j:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 459
    monitor-exit v2

    move-object v0, v1

    .line 487
    :goto_0
    return-object v0

    .line 462
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->d()V

    .line 464
    iget-object v0, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/d$a;

    .line 466
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroidx/appcompat/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroidx/appcompat/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Landroidx/appcompat/widget/d;->j:Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 471
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 473
    iget-object v4, p0, Landroidx/appcompat/widget/d;->p:Landroidx/appcompat/widget/d$d;

    if-eqz v4, :cond_1

    .line 475
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 476
    iget-object v5, p0, Landroidx/appcompat/widget/d;->p:Landroidx/appcompat/widget/d$d;

    invoke-interface {v5, p0, v4}, Landroidx/appcompat/widget/d$d;->a(Landroidx/appcompat/widget/d;Landroid/content/Intent;)Z

    move-result v4

    .line 478
    if-eqz v4, :cond_1

    .line 479
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 483
    :cond_1
    new-instance v1, Landroidx/appcompat/widget/d$c;

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4, v5, v6}, Landroidx/appcompat/widget/d$c;-><init>(Landroid/content/ComponentName;JF)V

    .line 485
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/d;->a(Landroidx/appcompat/widget/d$c;)Z

    .line 487
    monitor-exit v2

    goto :goto_0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 512
    iget-object v1, p0, Landroidx/appcompat/widget/d;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_0
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->d()V

    .line 514
    iget-object v0, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/d$a;

    iget-object v0, v0, Landroidx/appcompat/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 518
    :goto_0
    return-object v0

    .line 517
    :cond_0
    monitor-exit v1

    .line 518
    const/4 v0, 0x0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(I)V
    .locals 6

    .prologue
    .line 532
    iget-object v2, p0, Landroidx/appcompat/widget/d;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 533
    :try_start_0
    invoke-direct {p0}, Landroidx/appcompat/widget/d;->d()V

    .line 535
    iget-object v0, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/d$a;

    .line 536
    iget-object v1, p0, Landroidx/appcompat/widget/d;->h:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/d$a;

    .line 539
    if-eqz v1, :cond_0

    .line 541
    iget v1, v1, Landroidx/appcompat/widget/d$a;->b:F

    iget v3, v0, Landroidx/appcompat/widget/d$a;->b:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v1, v3

    .line 547
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroidx/appcompat/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroidx/appcompat/widget/d$a;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v0, Landroidx/appcompat/widget/d$c;

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5, v1}, Landroidx/appcompat/widget/d$c;-><init>(Landroid/content/ComponentName;JF)V

    .line 552
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/d;->a(Landroidx/appcompat/widget/d$c;)Z

    .line 553
    monitor-exit v2

    .line 554
    return-void

    .line 544
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
