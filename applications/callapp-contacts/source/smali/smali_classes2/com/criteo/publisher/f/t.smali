.class final Lcom/criteo/publisher/f/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/criteo/publisher/f/v;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/criteo/publisher/m0/g;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/m0/g;Lcom/criteo/publisher/f/v;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/criteo/publisher/f/t;->b:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/criteo/publisher/f/t;->c:Lcom/criteo/publisher/m0/g;

    .line 52
    iput-object p3, p0, Lcom/criteo/publisher/f/t;->a:Lcom/criteo/publisher/f/v;

    return-void
.end method

.method private b()Ljava/io/File;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/criteo/publisher/f/t;->b:Landroid/content/Context;

    invoke-static {}, Lcom/criteo/publisher/m0/g;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".csm"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 72
    invoke-static {p1}, Lcom/criteo/publisher/f/t;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/criteo/publisher/f/t;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method final a()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/criteo/publisher/f/t;->b()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/criteo/publisher/f/t$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/f/t$a;-><init>(Lcom/criteo/publisher/f/t;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
