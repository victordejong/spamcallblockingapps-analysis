.class public abstract Lcom/googlecode/mp4parser/c;
.super Lcom/googlecode/mp4parser/a;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/l;


# static fields
.field private static final c:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final d:Lorg/mp4parser/aspectj/lang/a$a;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/googlecode/mp4parser/c;->a()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/a;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method private static a()V
    .locals 10

    .line 1
    new-instance v8, Lorg/mp4parser/aspectj/a/b/b;

    const-class v0, Lcom/googlecode/mp4parser/c;

    const-string v1, "AbstractFullBox.java"

    invoke-direct {v8, v1, v0}, Lorg/mp4parser/aspectj/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "setVersion"

    const-string v3, "com.googlecode.mp4parser.AbstractFullBox"

    const-string v4, "int"

    const-string v5, "version"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const-string v9, "method-execution"

    const/16 v1, 0x33

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/c;->c:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setFlags"

    const-string v3, "com.googlecode.mp4parser.AbstractFullBox"

    const-string v4, "int"

    const-string v5, "flags"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/c;->d:Lorg/mp4parser/aspectj/lang/a$a;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 2068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    .line 76
    iput v0, p0, Lcom/googlecode/mp4parser/c;->a:I

    .line 77
    invoke-static {p1}, Lcom/b/a/e;->b(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/c;->b:I

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public final b(I)V
    .locals 2

    sget-object v0, Lcom/googlecode/mp4parser/c;->c:Lorg/mp4parser/aspectj/lang/a$a;

    .line 1023
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput p1, p0, Lcom/googlecode/mp4parser/c;->a:I

    return-void
.end method

.method protected final b(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 82
    iget v0, p0, Lcom/googlecode/mp4parser/c;->a:I

    invoke-static {p1, v0}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 83
    iget v0, p0, Lcom/googlecode/mp4parser/c;->b:I

    invoke-static {p1, v0}, Lcom/b/a/f;->a(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public final c(I)V
    .locals 2

    sget-object v0, Lcom/googlecode/mp4parser/c;->d:Lorg/mp4parser/aspectj/lang/a$a;

    .line 2023
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iput p1, p0, Lcom/googlecode/mp4parser/c;->b:I

    return-void
.end method

.method public final h()I
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/c;->isParsed:Z

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->parseDetails()V

    .line 48
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/c;->a:I

    return v0
.end method

.method public final i()I
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/googlecode/mp4parser/c;->isParsed:Z

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->parseDetails()V

    .line 61
    :cond_0
    iget v0, p0, Lcom/googlecode/mp4parser/c;->b:I

    return v0
.end method
