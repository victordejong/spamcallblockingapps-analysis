.class public Lcom/b/a/a/af;
.super Lcom/googlecode/mp4parser/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/af$a;
    }
.end annotation


# static fields
.field static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Lcom/b/a/a/af$a;",
            ">;",
            "Ljava/lang/ref/SoftReference<",
            "[J>;>;"
        }
    .end annotation
.end field

.field static final synthetic c:Z

.field public static final d:Lorg/mp4parser/aspectj/lang/a$a;

.field public static final e:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final f:Lorg/mp4parser/aspectj/lang/a$a;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/a/af$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/b/a/a/af;->a()V

    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/b/a/a/af;->c:Z

    .line 126
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/b/a/a/af;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "stts"

    .line 50
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/af;->a:Ljava/util/List;

    return-void
.end method

.method private static a()V
    .locals 10

    .line 1
    new-instance v8, Lorg/mp4parser/aspectj/a/b/b;

    const-class v0, Lcom/b/a/a/af;

    const-string v1, "TimeToSampleBox.java"

    invoke-direct {v8, v1, v0}, Lorg/mp4parser/aspectj/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "getEntries"

    const-string v3, "com.coremedia.iso.boxes.TimeToSampleBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.util.List"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const-string v9, "method-execution"

    const/16 v1, 0x4f

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/af;->d:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setEntries"

    const-string v3, "com.coremedia.iso.boxes.TimeToSampleBox"

    const-string v4, "java.util.List"

    const-string v5, "entries"

    const-string v6, ""

    const-string/jumbo v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x53

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/af;->e:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.coremedia.iso.boxes.TimeToSampleBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x57

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/af;->f:Lorg/mp4parser/aspectj/lang/a$a;

    return-void
.end method

.method public static declared-synchronized a(Ljava/util/List;)[J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/a/af$a;",
            ">;)[J"
        }
    .end annotation

    const-class v0, Lcom/b/a/a/af;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/b/a/a/af;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 139
    monitor-exit v0

    return-object v1

    :cond_0
    const-wide/16 v1, 0x0

    .line 143
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 146
    sget-boolean v3, Lcom/b/a/a/af;->c:Z

    if-nez v3, :cond_2

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    long-to-int v2, v1

    .line 147
    new-array v1, v2, [J

    .line 152
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 157
    sget-object v2, Lcom/b/a/a/af;->b:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    monitor-exit v0

    return-object v1

    .line 152
    :cond_3
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/b/a/a/af$a;

    const/4 v6, 0x0

    :goto_3
    int-to-long v7, v6

    .line 3101
    iget-wide v9, v5, Lcom/b/a/a/af$a;->a:J

    cmp-long v11, v7, v9

    if-ltz v11, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 2105
    iget-wide v8, v5, Lcom/b/a/a/af$a;->b:J

    .line 154
    aput-wide v8, v1, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_3

    .line 143
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/b/a/a/af$a;

    .line 2101
    iget-wide v4, v4, Lcom/b/a/a/af$a;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-long/2addr v1, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 59
    invoke-virtual {p0, p1}, Lcom/b/a/a/af;->a(Ljava/nio/ByteBuffer;)J

    .line 60
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/b/a/a/af;->a:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/b/a/a/af;->a:Ljava/util/List;

    new-instance v3, Lcom/b/a/a/af$a;

    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/b/a/a/af$a;-><init>(JJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 71
    invoke-virtual {p0, p1}, Lcom/b/a/a/af;->b(Ljava/nio/ByteBuffer;)V

    .line 72
    iget-object v0, p0, Lcom/b/a/a/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 73
    iget-object v0, p0, Lcom/b/a/a/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b/a/a/af$a;

    .line 1101
    iget-wide v2, v1, Lcom/b/a/a/af$a;->a:J

    .line 74
    invoke-static {p1, v2, v3}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 1105
    iget-wide v1, v1, Lcom/b/a/a/af$a;->b:J

    .line 75
    invoke-static {p1, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_0
.end method

.method public getContentSize()J
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/b/a/a/af;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/b/a/a/af;->f:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeToSampleBox[entryCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/b/a/a/af;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
