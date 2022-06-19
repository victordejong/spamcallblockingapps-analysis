.class public Lcom/callapp/contacts/framework/log/FileLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/framework/log/FileLogger$Level;
    }
.end annotation


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yy HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/framework/log/FileLogger;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/framework/log/FileLogger;->c:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/framework/log/FileLogger;->b:Ljava/io/File;

    return-void
.end method

.method private declared-synchronized a(Lcom/callapp/contacts/framework/log/FileLogger$Level;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 111
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/callapp/contacts/framework/log/FileLogger;->a:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/callapp/contacts/framework/log/FileLogger$Level;->display:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object p1, p0, Lcom/callapp/contacts/framework/log/FileLogger;->c:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/callapp/contacts/framework/log/FileLogger;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/callapp/contacts/framework/log/FileLogger;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/framework/log/FileLogger;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/callapp/contacts/framework/log/FileLogger;
    .locals 2

    .line 127
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v1

    .line 129
    :goto_0
    new-instance v0, Lcom/callapp/contacts/framework/log/FileLogger;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/framework/log/FileLogger;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/framework/log/FileLogger;->b:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/framework/log/FileLogger;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/framework/log/FileLogger;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x400000

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 78
    iget-object v0, p0, Lcom/callapp/contacts/framework/log/FileLogger;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-direct {p0, v0}, Lcom/callapp/contacts/framework/log/FileLogger;->a(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    iget-object v1, p0, Lcom/callapp/contacts/framework/log/FileLogger;->b:Ljava/io/File;

    sget-object v2, Lcom/google/api/client/a/g;->a:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2}, Lcom/callapp/common/util/Files;->a(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :catch_0
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/callapp/contacts/framework/log/FileLogger;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 67
    sget-object v0, Lcom/callapp/contacts/framework/log/FileLogger$Level;->ERROR:Lcom/callapp/contacts/framework/log/FileLogger$Level;

    invoke-direct {p0, v0, p1}, Lcom/callapp/contacts/framework/log/FileLogger;->a(Lcom/callapp/contacts/framework/log/FileLogger$Level;Ljava/lang/String;)V

    return-void
.end method
