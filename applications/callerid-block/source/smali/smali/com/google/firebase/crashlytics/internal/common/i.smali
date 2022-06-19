.class Lcom/google/firebase/crashlytics/internal/common/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final t:Ljava/io/FilenameFilter;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/firebase/crashlytics/internal/common/q;

.field private final c:Lcom/google/firebase/crashlytics/internal/common/l;

.field private final d:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

.field private final e:Lcom/google/firebase/crashlytics/internal/common/g;

.field private final f:Lcom/google/firebase/crashlytics/internal/common/t;

.field private final g:Lcom/google/firebase/crashlytics/d/j/h;

.field private final h:Lcom/google/firebase/crashlytics/internal/common/a;

.field private final i:Lcom/google/firebase/crashlytics/d/g/b$b;

.field private final j:Lcom/google/firebase/crashlytics/d/g/b;

.field private final k:Lcom/google/firebase/crashlytics/d/a;

.field private final l:Ljava/lang/String;

.field private final m:Lcom/google/firebase/crashlytics/d/e/a;

.field private final n:Lcom/google/firebase/crashlytics/internal/common/b0;

.field private o:Lcom/google/firebase/crashlytics/internal/common/o;

.field final p:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final q:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final r:Lcom/google/android/gms/tasks/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/h;->a()Ljava/io/FilenameFilter;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/common/i;->t:Ljava/io/FilenameFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/g;Lcom/google/firebase/crashlytics/internal/common/t;Lcom/google/firebase/crashlytics/internal/common/q;Lcom/google/firebase/crashlytics/d/j/h;Lcom/google/firebase/crashlytics/internal/common/l;Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;Lcom/google/firebase/crashlytics/d/g/b;Lcom/google/firebase/crashlytics/d/g/b$b;Lcom/google/firebase/crashlytics/internal/common/b0;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/crashlytics/d/e/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->p:Lcom/google/android/gms/tasks/h;

    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->q:Lcom/google/android/gms/tasks/h;

    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->r:Lcom/google/android/gms/tasks/h;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/i;->e:Lcom/google/firebase/crashlytics/internal/common/g;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/i;->f:Lcom/google/firebase/crashlytics/internal/common/t;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/i;->b:Lcom/google/firebase/crashlytics/internal/common/q;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/i;->g:Lcom/google/firebase/crashlytics/d/j/h;

    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/i;->c:Lcom/google/firebase/crashlytics/internal/common/l;

    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/i;->h:Lcom/google/firebase/crashlytics/internal/common/a;

    iput-object p8, p0, Lcom/google/firebase/crashlytics/internal/common/i;->d:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    iput-object p9, p0, Lcom/google/firebase/crashlytics/internal/common/i;->j:Lcom/google/firebase/crashlytics/d/g/b;

    iput-object p10, p0, Lcom/google/firebase/crashlytics/internal/common/i;->i:Lcom/google/firebase/crashlytics/d/g/b$b;

    iput-object p12, p0, Lcom/google/firebase/crashlytics/internal/common/i;->k:Lcom/google/firebase/crashlytics/d/a;

    iget-object p1, p7, Lcom/google/firebase/crashlytics/internal/common/a;->g:Lcom/google/firebase/crashlytics/d/m/b;

    invoke-interface {p1}, Lcom/google/firebase/crashlytics/d/m/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/firebase/crashlytics/internal/common/i;->m:Lcom/google/firebase/crashlytics/d/e/a;

    iput-object p11, p0, Lcom/google/firebase/crashlytics/internal/common/i;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    return-void
.end method

.method private static A()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private B()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method private C()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/b0;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static D()J
    .locals 2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/i;->H(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method static F(Lcom/google/firebase/crashlytics/d/d;Ljava/lang/String;Ljava/io/File;[B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/d;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "[B)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/w;

    invoke-direct {v0, p2}, Lcom/google/firebase/crashlytics/internal/common/w;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/w;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/w;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/e;

    const-string v2, "logs_file"

    const-string v3, "logs"

    invoke-direct {v1, v2, v3, p3}, Lcom/google/firebase/crashlytics/internal/common/e;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/s;

    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->f()Ljava/io/File;

    move-result-object v1

    const-string v2, "crash_meta_file"

    const-string v3, "metadata"

    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/s;

    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->e()Ljava/io/File;

    move-result-object v1

    const-string v2, "session_meta_file"

    const-string v3, "session"

    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/s;

    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "app_meta_file"

    const-string v3, "app"

    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/s;

    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "device_meta_file"

    const-string v3, "device"

    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/s;

    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->b()Ljava/io/File;

    move-result-object v1

    const-string v2, "os_meta_file"

    const-string v3, "os"

    invoke-direct {p3, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/google/firebase/crashlytics/internal/common/s;

    invoke-interface {p0}, Lcom/google/firebase/crashlytics/d/d;->d()Ljava/io/File;

    move-result-object p0

    const-string v1, "minidump_file"

    const-string v2, "minidump"

    invoke-direct {p3, v1, v2, p0}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/s;

    const-string p3, "user_meta_file"

    const-string v1, "user"

    invoke-direct {p0, p3, v1, p2}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/s;

    const-string p2, "keys_file"

    const-string p3, "keys"

    invoke-direct {p0, p2, p3, p1}, Lcom/google/firebase/crashlytics/internal/common/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static H(Ljava/util/Date;)J
    .locals 4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic K(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".ae"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static M(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->x([Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private N(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->E()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/i;->M(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private O(J)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Logging app exception event to Firebase Analytics"

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/i$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/i$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/i;J)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/j;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method private P()Lcom/google/android/gms/tasks/g;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->L()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/google/firebase/crashlytics/internal/common/i;->O(J)Lcom/google/android/gms/tasks/g;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not parse app exception timestamp from file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->f(Ljava/util/Collection;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method private W()Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->b:Lcom/google/firebase/crashlytics/internal/common/q;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Automatic data collection is enabled. Allowing upload."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->p:Lcom/google/android/gms/tasks/h;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Automatic data collection is disabled."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Notifying that unsent reports are available."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->p:Lcom/google/android/gms/tasks/h;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->b:Lcom/google/firebase/crashlytics/internal/common/q;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/q;->i()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/i$d;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/i$d;-><init>(Lcom/google/firebase/crashlytics/internal/common/i;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->p(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v2, "Waiting for send/deleteUnsentReports to be called."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->q:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/e0;->d(Lcom/google/android/gms/tasks/g;Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method private X(Ljava/lang/String;J)V
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/k;->l()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Crashlytics Android SDK/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v1, p1, v0, p2, p3}, Lcom/google/firebase/crashlytics/d/a;->d(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private Z(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->f:Lcom/google/firebase/crashlytics/internal/common/t;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/t;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->h:Lcom/google/firebase/crashlytics/internal/common/a;

    iget-object v4, v0, Lcom/google/firebase/crashlytics/internal/common/a;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/firebase/crashlytics/internal/common/a;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->f:Lcom/google/firebase/crashlytics/internal/common/t;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/t;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->h:Lcom/google/firebase/crashlytics/internal/common/a;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/common/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->determineFrom(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/DeliveryMechanism;->getId()I

    move-result v7

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->k:Lcom/google/firebase/crashlytics/d/a;

    iget-object v8, p0, Lcom/google/firebase/crashlytics/internal/common/i;->l:Ljava/lang/String;

    move-object v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/google/firebase/crashlytics/d/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Date;)J
    .locals 2

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->H(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a0(Ljava/lang/String;)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/crashlytics/internal/common/i;->B()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->l()I

    move-result v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->t()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v10, v1

    mul-long v10, v10, v2

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->z(Landroid/content/Context;)Z

    move-result v12

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->m(Landroid/content/Context;)I

    move-result v13

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/firebase/crashlytics/internal/common/i;->k:Lcom/google/firebase/crashlytics/d/a;

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v15}, Lcom/google/firebase/crashlytics/d/a;->b(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/firebase/crashlytics/internal/common/i;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->C()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b0(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->B()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->A(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/i;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v3, p1, v0, v1, v2}, Lcom/google/firebase/crashlytics/d/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic c(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/d/g/b;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->j:Lcom/google/firebase/crashlytics/d/g/b;

    return-object p0
.end method

.method static synthetic d(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/d/e/a;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->m:Lcom/google/firebase/crashlytics/d/e/a;

    return-object p0
.end method

.method static synthetic e(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/l;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->c:Lcom/google/firebase/crashlytics/internal/common/l;

    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/b0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    return-object p0
.end method

.method static synthetic g(Lcom/google/firebase/crashlytics/internal/common/i;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/i;->v(J)V

    return-void
.end method

.method static synthetic h(Lcom/google/firebase/crashlytics/internal/common/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->u()V

    return-void
.end method

.method static synthetic i(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/q;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->b:Lcom/google/firebase/crashlytics/internal/common/q;

    return-object p0
.end method

.method static synthetic j(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/firebase/crashlytics/internal/common/g;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->e:Lcom/google/firebase/crashlytics/internal/common/g;

    return-object p0
.end method

.method static synthetic k(Lcom/google/firebase/crashlytics/internal/common/i;)Lcom/google/android/gms/tasks/g;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->P()Lcom/google/android/gms/tasks/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l([Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->p([Ljava/io/File;)V

    return-void
.end method

.method private m(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->e:Lcom/google/firebase/crashlytics/internal/common/g;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/i$i;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/i$i;-><init>(Lcom/google/firebase/crashlytics/internal/common/i;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/g;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method private n(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->e:Lcom/google/firebase/crashlytics/internal/common/g;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/i$h;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/i$h;-><init>(Lcom/google/firebase/crashlytics/internal/common/i;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/g;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method private static p([Ljava/io/File;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private t(Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/b0;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "No open sessions to be closed."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/i;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v2, v1}, Lcom/google/firebase/crashlytics/d/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/common/i;->y(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/i;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v2, v1}, Lcom/google/firebase/crashlytics/d/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not finalize native session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->D()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/firebase/crashlytics/internal/common/b0;->d(JLjava/lang/String;)V

    return-void
.end method

.method private u()V
    .locals 6

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/i;->D()J

    move-result-wide v0

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/f;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/i;->f:Lcom/google/firebase/crashlytics/internal/common/t;

    invoke-direct {v2, v3}, Lcom/google/firebase/crashlytics/internal/common/f;-><init>(Lcom/google/firebase/crashlytics/internal/common/t;)V

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening a new session with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/i;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v3, v2}, Lcom/google/firebase/crashlytics/d/a;->h(Ljava/lang/String;)Z

    invoke-direct {p0, v2, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/i;->X(Ljava/lang/String;J)V

    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/i;->Z(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/i;->b0(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/i;->a0(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/i;->j:Lcom/google/firebase/crashlytics/d/g/b;

    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/d/g/b;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/i;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    invoke-virtual {v3, v2, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/b0;->i(Ljava/lang/String;J)V

    return-void
.end method

.method private v(J)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->E()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".ae"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p2

    const-string v0, "Could not create app exception marker file."

    invoke-virtual {p2, v0, p1}, Lcom/google/firebase/crashlytics/d/b;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static x([Ljava/io/File;)[Ljava/io/File;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method private y(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing native report for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v0, p1}, Lcom/google/firebase/crashlytics/d/a;->g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/d;->d()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    new-instance v3, Lcom/google/firebase/crashlytics/d/g/b;

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/i;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/common/i;->i:Lcom/google/firebase/crashlytics/d/g/b$b;

    invoke-direct {v3, v4, v5, p1}, Lcom/google/firebase/crashlytics/d/g/b;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/d/g/b$b;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->G()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Couldn\'t create directory to store native session files, aborting."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/i;->v(J)V

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->E()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/d/g/b;->b()[B

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/google/firebase/crashlytics/internal/common/i;->F(Lcom/google/firebase/crashlytics/d/d;Ljava/lang/String;Ljava/io/File;[B)Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/firebase/crashlytics/internal/common/y;->b(Ljava/io/File;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    invoke-virtual {v1, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/b0;->c(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/d/g/b;->a()V

    return-void

    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No minidump data found for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method E()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->g:Lcom/google/firebase/crashlytics/d/j/h;

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/d/j/h;->b()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method G()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->E()Ljava/io/File;

    move-result-object v1

    const-string v2, "native-sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method declared-synchronized I(Lcom/google/firebase/crashlytics/internal/settings/d;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling uncaught exception \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->e:Lcom/google/firebase/crashlytics/internal/common/g;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/i$c;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/crashlytics/internal/common/i$c;-><init>(Lcom/google/firebase/crashlytics/internal/common/i;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Lcom/google/firebase/crashlytics/internal/settings/d;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/g;->i(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/e0;->a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p2

    const-string p3, "Error handling uncaught exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/firebase/crashlytics/d/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method J()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->o:Lcom/google/firebase/crashlytics/internal/common/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method L()[Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/common/i;->t:Ljava/io/FilenameFilter;

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/i;->N(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method Q()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->e:Lcom/google/firebase/crashlytics/internal/common/g;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/i$j;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/i$j;-><init>(Lcom/google/firebase/crashlytics/internal/common/i;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/g;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method R()Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->q:Lcom/google/android/gms/tasks/h;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->r:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->d:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->d:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->c()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/i;->m(Ljava/util/Map;)V

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/i;->a:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->x(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string p2, "Attempting to set custom attribute with null key, ignoring."

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/d/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method T(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->d:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->h(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->d:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->c()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/i;->m(Ljava/util/Map;)V

    return-void
.end method

.method U(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->d:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->j(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->d:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/i;->n(Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V

    return-void
.end method

.method V(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/crashlytics/internal/settings/h/a;",
            ">;)",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->n:Lcom/google/firebase/crashlytics/internal/common/b0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/b0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "No crash reports are available to be sent."

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->p:Lcom/google/android/gms/tasks/h;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "Crash reports are available to be sent."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->W()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/i$e;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/i$e;-><init>(Lcom/google/firebase/crashlytics/internal/common/i;Lcom/google/android/gms/tasks/g;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/g;->p(Lcom/google/android/gms/tasks/f;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method Y(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->e:Lcom/google/firebase/crashlytics/internal/common/g;

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/i$g;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/google/firebase/crashlytics/internal/common/i$g;-><init>(Lcom/google/firebase/crashlytics/internal/common/i;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/common/g;->g(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method c0(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->e:Lcom/google/firebase/crashlytics/internal/common/g;

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/i$f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/i$f;-><init>(Lcom/google/firebase/crashlytics/internal/common/i;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/g;->h(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/g;

    return-void
.end method

.method o()Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v1, "checkForUnsentReports should only be called once per execution."

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->e(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->p:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method q()Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->q:Lcom/google/android/gms/tasks/h;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->e(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->r:Lcom/google/android/gms/tasks/h;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method r()Z
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->c:Lcom/google/firebase/crashlytics/internal/common/l;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/l;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/i;->k:Lcom/google/firebase/crashlytics/d/a;

    invoke-interface {v2, v0}, Lcom/google/firebase/crashlytics/d/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Found previous crash marker."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->c:Lcom/google/firebase/crashlytics/internal/common/l;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/l;->d()Z

    return v1
.end method

.method s()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/i;->t(Z)V

    return-void
.end method

.method w(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/google/firebase/crashlytics/internal/settings/d;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->Q()V

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/i$b;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/common/i$b;-><init>(Lcom/google/firebase/crashlytics/internal/common/i;)V

    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/o;

    invoke-direct {v1, v0, p2, p1}, Lcom/google/firebase/crashlytics/internal/common/o;-><init>(Lcom/google/firebase/crashlytics/internal/common/o$a;Lcom/google/firebase/crashlytics/internal/settings/d;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/i;->o:Lcom/google/firebase/crashlytics/internal/common/o;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method z()Z
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/i;->e:Lcom/google/firebase/crashlytics/internal/common/g;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/g;->b()V

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/common/i;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Skipping session finalization because a crash has already occurred."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->k(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Finalizing previously open sessions."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/i;->t(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v2, "Closed all previously open sessions."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v2

    const-string v3, "Unable to finalize previously open sessions."

    invoke-virtual {v2, v3, v0}, Lcom/google/firebase/crashlytics/d/b;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
