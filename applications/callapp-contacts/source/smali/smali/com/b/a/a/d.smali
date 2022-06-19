.class public Lcom/b/a/a/d;
.super Lcom/googlecode/mp4parser/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/d$a;
    }
.end annotation


# static fields
.field static final synthetic b:Z

.field public static final c:Lorg/mp4parser/aspectj/lang/a$a;

.field public static final d:Lorg/mp4parser/aspectj/lang/a$a;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/a/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/b/a/a/d;->a()V

    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/b/a/a/d;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "ctts"

    .line 50
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/d;->a:Ljava/util/List;

    return-void
.end method

.method private static a()V
    .locals 10

    .line 1
    new-instance v8, Lorg/mp4parser/aspectj/a/b/b;

    const-class v0, Lcom/b/a/a/d;

    const-string v1, "CompositionTimeToSample.java"

    invoke-direct {v8, v1, v0}, Lorg/mp4parser/aspectj/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "getEntries"

    const-string v3, "com.coremedia.iso.boxes.CompositionTimeToSample"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.util.List"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const-string v9, "method-execution"

    const/16 v1, 0x39

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/d;->c:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setEntries"

    const-string v3, "com.coremedia.iso.boxes.CompositionTimeToSample"

    const-string v4, "java.util.List"

    const-string v5, "entries"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/d;->d:Lorg/mp4parser/aspectj/lang/a$a;

    return-void
.end method

.method public static a(Ljava/util/List;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/b/a/a/d$a;",
            ">;)[I"
        }
    .end annotation

    .line 131
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 134
    sget-boolean v0, Lcom/b/a/a/d;->b:Z

    if-nez v0, :cond_1

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_1
    long-to-int v0, v1

    .line 135
    new-array v3, v0, [I

    .line 140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 p0, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/b/a/a/d$a;

    const/4 v0, 0x0

    .line 3099
    :goto_3
    iget v1, v6, Lcom/b/a/a/d$a;->a:I

    if-lt v0, v1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, p0, 0x1

    .line 2103
    iget v2, v6, Lcom/b/a/a/d$a;->b:I

    .line 142
    aput v2, v3, p0

    add-int/lit8 v0, v0, 0x1

    move p0, v1

    goto :goto_3

    .line 131
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/d$a;

    .line 2099
    iget v3, v3, Lcom/b/a/a/d$a;->a:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 67
    invoke-virtual {p0, p1}, Lcom/b/a/a/d;->a(Ljava/nio/ByteBuffer;)J

    .line 68
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/b/a/a/d;->a:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v2, Lcom/b/a/a/d$a;

    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/b/a/a/d$a;-><init>(II)V

    .line 72
    iget-object v3, p0, Lcom/b/a/a/d;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 78
    invoke-virtual {p0, p1}, Lcom/b/a/a/d;->b(Ljava/nio/ByteBuffer;)V

    .line 79
    iget-object v0, p0, Lcom/b/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 81
    iget-object v0, p0, Lcom/b/a/a/d;->a:Ljava/util/List;

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

    check-cast v1, Lcom/b/a/a/d$a;

    .line 1099
    iget v2, v1, Lcom/b/a/a/d$a;->a:I

    int-to-long v2, v2

    .line 82
    invoke-static {p1, v2, v3}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 1103
    iget v1, v1, Lcom/b/a/a/d$a;->b:I

    .line 83
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public getContentSize()J
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/b/a/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    return-wide v0
.end method
