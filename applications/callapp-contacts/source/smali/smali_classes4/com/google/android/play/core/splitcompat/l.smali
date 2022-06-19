.class public final Lcom/google/android/play/core/splitcompat/l;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Lcom/google/android/play/core/splitcompat/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "lib/([^/]+)/(.*\\.so)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/splitcompat/l;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/splitcompat/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitcompat/l;->c:Lcom/google/android/play/core/splitcompat/d;

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/splitcompat/l;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/r;Ljava/util/zip/ZipFile;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/google/android/play/core/splitcompat/h;

    invoke-direct {v1, v0, p2, p3}, Lcom/google/android/play/core/splitcompat/h;-><init>(Ljava/util/Set;Lcom/google/android/play/core/splitcompat/r;Ljava/util/zip/ZipFile;)V

    invoke-direct {p0, p2, p1, v1}, Lcom/google/android/play/core/splitcompat/l;->a(Lcom/google/android/play/core/splitcompat/r;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/j;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/play/core/splitcompat/l;Lcom/google/android/play/core/splitcompat/r;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/play/core/splitcompat/l;->a(Lcom/google/android/play/core/splitcompat/r;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/j;)V

    return-void
.end method

.method static a(Lcom/google/android/play/core/splitcompat/r;Lcom/google/android/play/core/splitcompat/i;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    .line 6000
    iget-object v1, p0, Lcom/google/android/play/core/splitcompat/r;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7000
    :try_start_1
    iget-object p0, p0, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/play/core/splitcompat/l;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v5

    aput-object v7, v9, v6

    aput-object v8, v9, v4

    const-string v4, "NativeLibraryExtractor: split \'%s\' has native library \'%s\' for ABI \'%s\'"

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v5, Lcom/google/android/play/core/splitcompat/k;

    invoke-direct {v5, v3, v7}, Lcom/google/android/play/core/splitcompat/k;-><init>(Ljava/util/zip/ZipEntry;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_6

    aget-object v8, v2, v7

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v5

    const-string v10, "NativeLibraryExtractor: there are native libraries for supported ABI %s; will use this ABI"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/play/core/splitcompat/k;

    iget-object v11, v10, Lcom/google/android/play/core/splitcompat/k;->a:Ljava/lang/String;

    invoke-interface {p0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-array v11, v4, [Ljava/lang/Object;

    iget-object v10, v10, Lcom/google/android/play/core/splitcompat/k;->a:Ljava/lang/String;

    aput-object v10, v11, v5

    aput-object v8, v11, v6

    const-string v10, "NativeLibraryExtractor: skipping library %s for ABI %s; already present for a better ABI"

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v11, v10, Lcom/google/android/play/core/splitcompat/k;->a:Ljava/lang/String;

    invoke-interface {p0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v11, v4, [Ljava/lang/Object;

    iget-object v10, v10, Lcom/google/android/play/core/splitcompat/k;->a:Ljava/lang/String;

    aput-object v10, v11, v5

    aput-object v8, v11, v6

    const-string v10, "NativeLibraryExtractor: using library %s for ABI %s"

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v5

    const-string v8, "NativeLibraryExtractor: there are no native libraries for supported ABI %s"

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/play/core/splitcompat/i;->a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/play/core/internal/ay;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    throw p0
.end method

.method private final a(Lcom/google/android/play/core/splitcompat/r;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/j;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/splitcompat/r;",
            "Ljava/util/Set<",
            "Lcom/google/android/play/core/splitcompat/k;",
            ">;",
            "Lcom/google/android/play/core/splitcompat/j;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitcompat/k;

    iget-object v1, p0, Lcom/google/android/play/core/splitcompat/l;->c:Lcom/google/android/play/core/splitcompat/d;

    .line 8000
    iget-object v2, p1, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/play/core/splitcompat/k;->a:Ljava/lang/String;

    .line 9000
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/splitcompat/d;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/android/play/core/splitcompat/d;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v2, v0, Lcom/google/android/play/core/splitcompat/k;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-interface {p3, v0, v1, v3}, Lcom/google/android/play/core/splitcompat/j;->a(Lcom/google/android/play/core/splitcompat/k;Ljava/io/File;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final a()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/l;->c:Lcom/google/android/play/core/splitcompat/d;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitcompat/d;->f()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitcompat/l;->c:Lcom/google/android/play/core/splitcompat/d;

    .line 1000
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/play/core/splitcompat/d;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/splitcompat/r;

    .line 2000
    iget-object v6, v6, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_3
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v5, "NativeLibraryExtractor: extracted split \'%s\' has no corresponding split; deleting"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/splitcompat/l;->c:Lcom/google/android/play/core/splitcompat/d;

    invoke-virtual {v4, v2}, Lcom/google/android/play/core/splitcompat/d;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/splitcompat/r;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Lcom/google/android/play/core/splitcompat/g;

    invoke-direct {v6, p0, v5, v2}, Lcom/google/android/play/core/splitcompat/g;-><init>(Lcom/google/android/play/core/splitcompat/l;Ljava/util/Set;Lcom/google/android/play/core/splitcompat/r;)V

    invoke-static {v2, v6}, Lcom/google/android/play/core/splitcompat/l;->a(Lcom/google/android/play/core/splitcompat/r;Lcom/google/android/play/core/splitcompat/i;)V

    iget-object v6, p0, Lcom/google/android/play/core/splitcompat/l;->c:Lcom/google/android/play/core/splitcompat/d;

    .line 3000
    iget-object v7, v2, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/play/core/splitcompat/d;->d(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 4000
    iget-object v9, v2, Lcom/google/android/play/core/splitcompat/r;->b:Ljava/lang/String;

    aput-object v9, v8, v4

    const/4 v9, 0x2

    .line 5000
    iget-object v10, v2, Lcom/google/android/play/core/splitcompat/r;->a:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "NativeLibraryExtractor: file \'%s\' found in split \'%s\' that is not in the split file \'%s\'; removing"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/play/core/splitcompat/l;->c:Lcom/google/android/play/core/splitcompat/d;

    invoke-virtual {v8, v7}, Lcom/google/android/play/core/splitcompat/d;->a(Ljava/io/File;)V

    goto :goto_3

    :cond_6
    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_7
    return-object v1
.end method
