.class public Landroidx/core/e/b;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/e/b$a;,
        Landroidx/core/e/b$b;,
        Landroidx/core/e/b$c;
    }
.end annotation


# static fields
.field static final a:Landroidx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/e",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Ljava/lang/Object;

.field static final c:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/e/c$a",
            "<",
            "Landroidx/core/e/b$c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final d:Landroidx/core/e/c;

.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 172
    new-instance v0, Landroidx/b/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/b/e;-><init>(I)V

    sput-object v0, Landroidx/core/e/b;->a:Landroidx/b/e;

    .line 175
    new-instance v0, Landroidx/core/e/c;

    const-string/jumbo v1, "fonts"

    const/16 v2, 0xa

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/e/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/core/e/b;->d:Landroidx/core/e/c;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/e/b;->b:Ljava/lang/Object;

    .line 204
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    sput-object v0, Landroidx/core/e/b;->c:Landroidx/b/g;

    .line 784
    new-instance v0, Landroidx/core/e/b$4;

    invoke-direct {v0}, Landroidx/core/e/b$4;-><init>()V

    sput-object v0, Landroidx/core/e/b;->e:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroidx/core/e/a;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 744
    invoke-virtual {p1}, Landroidx/core/e/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 746
    if-nez v2, :cond_0

    .line 747
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No package found for authority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/e/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 752
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Found content provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", but package was not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 754
    invoke-virtual {p1}, Landroidx/core/e/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_1
    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 762
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1}, Landroidx/core/e/b;->a([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v3

    .line 763
    sget-object v1, Landroidx/core/e/b;->e:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 764
    invoke-static {p1, p2}, Landroidx/core/e/b;->a(Landroidx/core/e/a;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v4

    move v1, v0

    .line 765
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 767
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 768
    sget-object v0, Landroidx/core/e/b;->e:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 769
    invoke-static {v3, v5}, Landroidx/core/e/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    .line 773
    :goto_1
    return-object v0

    .line 765
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 773
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroidx/core/e/a;Landroidx/core/a/a/f$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/core/e/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    sget-object v0, Landroidx/core/e/b;->a:Landroidx/b/e;

    invoke-virtual {v0, v3}, Landroidx/b/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 234
    if-eqz v0, :cond_1

    .line 235
    if-eqz p2, :cond_0

    .line 236
    invoke-virtual {p2, v0}, Landroidx/core/a/a/f$a;->a(Landroid/graphics/Typeface;)V

    :cond_0
    move-object v2, v0

    .line 319
    :goto_0
    return-object v2

    .line 241
    :cond_1
    if-eqz p4, :cond_4

    const/4 v0, -0x1

    if-ne p5, v0, :cond_4

    .line 243
    invoke-static {p0, p1, p6}, Landroidx/core/e/b;->a(Landroid/content/Context;Landroidx/core/e/a;I)Landroidx/core/e/b$c;

    move-result-object v0

    .line 244
    if-eqz p2, :cond_2

    .line 245
    iget v1, v0, Landroidx/core/e/b$c;->b:I

    if-nez v1, :cond_3

    .line 246
    iget-object v1, v0, Landroidx/core/e/b$c;->a:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1, p3}, Landroidx/core/a/a/f$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    .line 251
    :cond_2
    :goto_1
    iget-object v2, v0, Landroidx/core/e/b$c;->a:Landroid/graphics/Typeface;

    goto :goto_0

    .line 248
    :cond_3
    iget v1, v0, Landroidx/core/e/b$c;->b:I

    invoke-virtual {p2, v1, p3}, Landroidx/core/a/a/f$a;->a(ILandroid/os/Handler;)V

    goto :goto_1

    .line 254
    :cond_4
    new-instance v4, Landroidx/core/e/b$1;

    invoke-direct {v4, p0, p1, p6, v3}, Landroidx/core/e/b$1;-><init>(Landroid/content/Context;Landroidx/core/e/a;ILjava/lang/String;)V

    .line 265
    if-eqz p4, :cond_5

    .line 267
    :try_start_0
    sget-object v0, Landroidx/core/e/b;->d:Landroidx/core/e/c;

    invoke-virtual {v0, v4, p5}, Landroidx/core/e/c;->a(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/e/b$c;

    iget-object v2, v0, Landroidx/core/e/b$c;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :cond_5
    if-nez p2, :cond_7

    move-object v1, v2

    .line 287
    :goto_2
    sget-object v5, Landroidx/core/e/b;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 288
    :try_start_1
    sget-object v0, Landroidx/core/e/b;->c:Landroidx/b/g;

    invoke-virtual {v0, v3}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 289
    if-eqz v0, :cond_8

    .line 292
    if-eqz v1, :cond_6

    .line 293
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_6
    monitor-exit v5

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 272
    :cond_7
    new-instance v0, Landroidx/core/e/b$2;

    invoke-direct {v0, p2, p3}, Landroidx/core/e/b$2;-><init>(Landroidx/core/a/a/f$a;Landroid/os/Handler;)V

    move-object v1, v0

    goto :goto_2

    .line 297
    :cond_8
    if-eqz v1, :cond_9

    .line 298
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v1, Landroidx/core/e/b;->c:Landroidx/b/g;

    invoke-virtual {v1, v3, v0}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_9
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    sget-object v0, Landroidx/core/e/b;->d:Landroidx/core/e/c;

    new-instance v1, Landroidx/core/e/b$3;

    invoke-direct {v1, v3}, Landroidx/core/e/b$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Landroidx/core/e/c;->a(Ljava/util/concurrent/Callable;Landroidx/core/e/c$a;)V

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/e/a;)Landroidx/core/e/b$a;
    .locals 3

    .prologue
    .line 727
    .line 728
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 727
    invoke-static {v0, p2, v1}, Landroidx/core/e/b;->a(Landroid/content/pm/PackageManager;Landroidx/core/e/a;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 729
    if-nez v0, :cond_0

    .line 730
    new-instance v0, Landroidx/core/e/b$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/e/b$a;-><init>(I[Landroidx/core/e/b$b;)V

    .line 735
    :goto_0
    return-object v0

    .line 733
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p2, v0, p1}, Landroidx/core/e/b;->a(Landroid/content/Context;Landroidx/core/e/a;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/e/b$b;

    move-result-object v1

    .line 735
    new-instance v0, Landroidx/core/e/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroidx/core/e/b$a;-><init>(I[Landroidx/core/e/b$b;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroidx/core/e/a;I)Landroidx/core/e/b$c;
    .locals 4

    .prologue
    const/4 v0, -0x3

    const/4 v3, 0x0

    .line 184
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1}, Landroidx/core/e/b;->a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/e/a;)Landroidx/core/e/b$a;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroidx/core/e/b$a;->a()I

    move-result v2

    if-nez v2, :cond_1

    .line 190
    invoke-virtual {v1}, Landroidx/core/e/b$a;->b()[Landroidx/core/e/b$b;

    move-result-object v1

    .line 189
    invoke-static {p0, v3, v1, p2}, Landroidx/core/graphics/c;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/e/b$b;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 191
    new-instance v1, Landroidx/core/e/b$c;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-direct {v1, v2, v0}, Landroidx/core/e/b$c;-><init>(Landroid/graphics/Typeface;I)V

    move-object v0, v1

    .line 198
    :goto_0
    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    new-instance v0, Landroidx/core/e/b$c;

    const/4 v1, -0x1

    invoke-direct {v0, v3, v1}, Landroidx/core/e/b$c;-><init>(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v1}, Landroidx/core/e/b$a;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, -0x2

    .line 198
    :cond_2
    new-instance v1, Landroidx/core/e/b$c;

    invoke-direct {v1, v3, v0}, Landroidx/core/e/b$c;-><init>(Landroid/graphics/Typeface;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroidx/core/e/a;Landroid/content/res/Resources;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/e/a;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation

    .prologue
    .line 777
    invoke-virtual {p0}, Landroidx/core/e/a;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 778
    invoke-virtual {p0}, Landroidx/core/e/a;->d()Ljava/util/List;

    move-result-object v0

    .line 781
    :goto_0
    return-object v0

    .line 780
    :cond_0
    invoke-virtual {p0}, Landroidx/core/e/a;->e()I

    move-result v0

    .line 781
    invoke-static {p1, v0}, Landroidx/core/a/a/c;->a(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 813
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 814
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 815
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;[Landroidx/core/e/b$b;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroidx/core/e/b$b;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 691
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 692
    invoke-virtual {v3}, Landroidx/core/e/b$b;->e()I

    move-result v4

    if-eqz v4, :cond_1

    .line 691
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    :cond_1
    invoke-virtual {v3}, Landroidx/core/e/b$b;->a()Landroid/net/Uri;

    move-result-object v3

    .line 697
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 701
    invoke-static {p0, p2, v3}, Landroidx/core/graphics/i;->a(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 702
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 704
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 801
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v2, v3

    .line 804
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 805
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 809
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroidx/core/e/a;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/e/b$b;
    .locals 18

    .prologue
    .line 824
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 825
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v3, "content"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 826
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 827
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 828
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 829
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "file"

    .line 830
    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 831
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 832
    const/4 v9, 0x0

    .line 834
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v2, v4, :cond_1

    .line 835
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "file_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "font_ttc_index"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "font_variation_settings"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "font_weight"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "font_italic"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "result_code"

    aput-object v6, v4, v5

    const-string/jumbo v5, "query = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroidx/core/e/a;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    move-object/from16 v8, p3

    .line 835
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 848
    :goto_0
    if-eqz v10, :cond_7

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 849
    const-string/jumbo v2, "result_code"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 850
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 851
    const-string/jumbo v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 852
    const-string/jumbo v4, "file_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 853
    const-string/jumbo v4, "font_ttc_index"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 854
    const-string/jumbo v4, "font_weight"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 855
    const-string/jumbo v4, "font_italic"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 856
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 857
    const/4 v4, -0x1

    if-eq v11, v4, :cond_2

    .line 858
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 859
    :goto_2
    const/4 v4, -0x1

    if-eq v15, v4, :cond_3

    .line 860
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 862
    :goto_3
    const/4 v4, -0x1

    if-ne v14, v4, :cond_4

    .line 863
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 864
    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 870
    :goto_4
    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_5

    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 871
    :goto_5
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_6

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_6

    const/4 v8, 0x1

    .line 873
    :goto_6
    new-instance v4, Landroidx/core/e/b$b;

    invoke-direct/range {v4 .. v9}, Landroidx/core/e/b$b;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 877
    :catchall_0
    move-exception v2

    move-object v3, v10

    :goto_7
    if-eqz v3, :cond_0

    .line 878
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 842
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "file_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "font_ttc_index"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "font_variation_settings"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "font_weight"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "font_italic"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "result_code"

    aput-object v6, v4, v5

    const-string/jumbo v5, "query = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 846
    invoke-virtual/range {p1 .. p1}, Landroidx/core/e/a;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    .line 842
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    goto/16 :goto_0

    .line 858
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 860
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 866
    :cond_4
    :try_start_3
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 867
    invoke-static {v12, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    goto :goto_4

    .line 870
    :cond_5
    const/16 v7, 0x190

    goto :goto_5

    .line 871
    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    :cond_7
    move-object v2, v11

    .line 877
    :cond_8
    if-eqz v10, :cond_9

    .line 878
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 881
    :cond_9
    const/4 v3, 0x0

    new-array v3, v3, [Landroidx/core/e/b$b;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/core/e/b$b;

    return-object v2

    .line 877
    :catchall_1
    move-exception v2

    move-object v3, v9

    goto :goto_7
.end method
