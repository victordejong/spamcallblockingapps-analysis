.class public Lcom/b/a/a/ac;
.super Lcom/googlecode/mp4parser/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/ac$a;
    }
.end annotation


# static fields
.field private static final b:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final c:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final d:Lorg/mp4parser/aspectj/lang/a$a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/a/ac$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/b/a/a/ac;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "subs"

    .line 47
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/ac;->a:Ljava/util/List;

    return-void
.end method

.method private static b()V
    .locals 10

    .line 1
    new-instance v8, Lorg/mp4parser/aspectj/a/b/b;

    const-class v0, Lcom/b/a/a/ac;

    const-string v1, "SubSampleInformationBox.java"

    invoke-direct {v8, v1, v0}, Lorg/mp4parser/aspectj/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "getEntries"

    const-string v3, "com.coremedia.iso.boxes.SubSampleInformationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.util.List"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const-string v9, "method-execution"

    const/16 v1, 0x32

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/ac;->b:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setEntries"

    const-string v3, "com.coremedia.iso.boxes.SubSampleInformationBox"

    const-string v4, "java.util.List"

    const-string v5, "entries"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/ac;->c:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.coremedia.iso.boxes.SubSampleInformationBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/ac;->d:Lorg/mp4parser/aspectj/lang/a$a;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 81
    invoke-virtual {p0, p1}, Lcom/b/a/a/ac;->a(Ljava/nio/ByteBuffer;)J

    .line 83
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    int-to-long v4, v3

    cmp-long v6, v4, v0

    if-ltz v6, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v4, Lcom/b/a/a/ac$a;

    invoke-direct {v4}, Lcom/b/a/a/ac$a;-><init>()V

    .line 87
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v5

    .line 2140
    iput-wide v5, v4, Lcom/b/a/a/ac$a;->a:J

    .line 88
    invoke-static {p1}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-lt v6, v5, :cond_1

    .line 97
    iget-object v5, p0, Lcom/b/a/a/ac;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    :cond_1
    new-instance v7, Lcom/b/a/a/ac$a$a;

    invoke-direct {v7}, Lcom/b/a/a/ac$a$a;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/b/a/a/ac;->h()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v8

    int-to-long v8, v8

    .line 2162
    :goto_2
    iput-wide v8, v7, Lcom/b/a/a/ac$a$a;->a:J

    .line 3068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    invoke-static {v8}, Lcom/b/a/e;->a(B)I

    move-result v8

    .line 3170
    iput v8, v7, Lcom/b/a/a/ac$a$a;->b:I

    .line 4068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    invoke-static {v8}, Lcom/b/a/e;->a(B)I

    move-result v8

    .line 4178
    iput v8, v7, Lcom/b/a/a/ac$a$a;->c:I

    .line 94
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    .line 4186
    iput-wide v8, v7, Lcom/b/a/a/ac$a$a;->d:J

    .line 5148
    iget-object v8, v4, Lcom/b/a/a/ac$a;->b:Ljava/util/List;

    .line 95
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/b/a/a/ac$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/b/a/a/ac;->b:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v0, p0, Lcom/b/a/a/ac;->a:Ljava/util/List;

    return-object v0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 104
    invoke-virtual {p0, p1}, Lcom/b/a/a/ac;->b(Ljava/nio/ByteBuffer;)V

    .line 105
    iget-object v0, p0, Lcom/b/a/a/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 106
    iget-object v0, p0, Lcom/b/a/a/ac;->a:Ljava/util/List;

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

    check-cast v1, Lcom/b/a/a/ac$a;

    .line 6136
    iget-wide v2, v1, Lcom/b/a/a/ac$a;->a:J

    .line 107
    invoke-static {p1, v2, v3}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 6144
    iget-object v2, v1, Lcom/b/a/a/ac$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 108
    invoke-static {p1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 6148
    iget-object v1, v1, Lcom/b/a/a/ac$a;->b:Ljava/util/List;

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b/a/a/ac$a$a;

    .line 111
    invoke-virtual {p0}, Lcom/b/a/a/ac;->h()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 6158
    iget-wide v3, v2, Lcom/b/a/a/ac$a$a;->a:J

    .line 112
    invoke-static {p1, v3, v4}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 7158
    :cond_2
    iget-wide v3, v2, Lcom/b/a/a/ac$a$a;->a:J

    .line 114
    invoke-static {v3, v4}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v3

    invoke-static {p1, v3}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 7166
    :goto_2
    iget v3, v2, Lcom/b/a/a/ac$a$a;->b:I

    .line 116
    invoke-static {p1, v3}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 7174
    iget v3, v2, Lcom/b/a/a/ac$a$a;->c:I

    .line 117
    invoke-static {p1, v3}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 7182
    iget-wide v2, v2, Lcom/b/a/a/ac$a$a;->d:J

    .line 118
    invoke-static {p1, v2, v3}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_1
.end method

.method public getContentSize()J
    .locals 11

    .line 62
    iget-object v0, p0, Lcom/b/a/a/ac;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x8

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/b/a/a/ac$a;

    const-wide/16 v4, 0x4

    add-long/2addr v1, v4

    const-wide/16 v6, 0x2

    add-long/2addr v1, v6

    const/4 v8, 0x0

    .line 1148
    :goto_1
    iget-object v9, v3, Lcom/b/a/a/ac$a;->b:Ljava/util/List;

    .line 65
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/b/a/a/ac;->h()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    add-long/2addr v1, v4

    goto :goto_2

    :cond_2
    add-long/2addr v1, v6

    :goto_2
    add-long/2addr v1, v6

    add-long/2addr v1, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/b/a/a/ac;->d:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubSampleInformationBox{entryCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/b/a/a/ac;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", entries="

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/a/ac;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
