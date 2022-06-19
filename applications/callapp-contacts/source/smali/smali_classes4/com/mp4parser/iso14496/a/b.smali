.class public Lcom/mp4parser/iso14496/a/b;
.super Lcom/googlecode/mp4parser/c;
.source "SourceFile"


# static fields
.field static final synthetic e:Z

.field public static final f:Lorg/mp4parser/aspectj/lang/a$a;

.field public static final g:Lorg/mp4parser/aspectj/lang/a$a;

.field public static final h:Lorg/mp4parser/aspectj/lang/a$a;

.field public static final i:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final k:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final l:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final m:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final n:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final o:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final p:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final q:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final r:Lorg/mp4parser/aspectj/lang/a$a;


# instance fields
.field public a:S

.field public b:[S

.field public c:I

.field public d:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/mp4parser/iso14496/a/b;->d()V

    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/mp4parser/iso14496/a/b;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "saiz"

    .line 42
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [S

    .line 36
    iput-object v0, p0, Lcom/mp4parser/iso14496/a/b;->b:[S

    return-void
.end method

.method private static d()V
    .locals 10

    .line 1
    new-instance v8, Lorg/mp4parser/aspectj/a/b/b;

    const-class v0, Lcom/mp4parser/iso14496/a/b;

    const-string v1, "SampleAuxiliaryInformationSizesBox.java"

    invoke-direct {v8, v1, v0}, Lorg/mp4parser/aspectj/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "getSize"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, "int"

    const-string v5, "index"

    const-string v6, ""

    const-string v7, "short"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const-string v9, "method-execution"

    const/16 v1, 0x39

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->k:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "getAuxInfoType"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->l:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setSampleCount"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, "int"

    const-string v5, "sampleCount"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x92

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->i:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x97

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->r:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setAuxInfoType"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, "java.lang.String"

    const-string v5, "auxInfoType"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->f:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "getAuxInfoTypeParameter"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->m:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setAuxInfoTypeParameter"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, "java.lang.String"

    const-string v5, "auxInfoTypeParameter"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x76

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->n:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "getDefaultSampleInfoSize"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x7a

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->o:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setDefaultSampleInfoSize"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, "int"

    const-string v5, "defaultSampleInfoSize"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->g:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "getSampleInfoSizes"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "[S"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x83

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->h:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setSampleInfoSizes"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, "[S"

    const-string v5, "sampleInfoSizes"

    const-string v6, ""

    const-string v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x89

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->p:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "getSampleCount"

    const-string v3, "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x8e

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/mp4parser/iso14496/a/b;->q:Lorg/mp4parser/aspectj/lang/a$a;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 88
    invoke-virtual {p0, p1}, Lcom/mp4parser/iso14496/a/b;->a(Ljava/nio/ByteBuffer;)J

    .line 89
    invoke-virtual {p0}, Lcom/mp4parser/iso14496/a/b;->i()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 90
    invoke-static {p1}, Lcom/b/a/e;->h(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mp4parser/iso14496/a/b;->d:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/b/a/e;->h(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mp4parser/iso14496/a/b;->j:Ljava/lang/String;

    .line 1068
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    int-to-short v0, v0

    .line 94
    iput-short v0, p0, Lcom/mp4parser/iso14496/a/b;->a:S

    .line 95
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    iput v0, p0, Lcom/mp4parser/iso14496/a/b;->c:I

    .line 98
    iget-short v1, p0, Lcom/mp4parser/iso14496/a/b;->a:S

    if-nez v1, :cond_2

    .line 99
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/mp4parser/iso14496/a/b;->b:[S

    const/4 v0, 0x0

    .line 100
    :goto_0
    iget v1, p0, Lcom/mp4parser/iso14496/a/b;->c:I

    if-lt v0, v1, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/mp4parser/iso14496/a/b;->b:[S

    .line 2068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/b/a/e;->a(B)I

    move-result v2

    int-to-short v2, v2

    .line 101
    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mp4parser/iso14496/a/b;->l:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 107
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v0, p0, Lcom/mp4parser/iso14496/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)S
    .locals 2

    sget-object v0, Lcom/mp4parser/iso14496/a/b;->k:Lorg/mp4parser/aspectj/lang/a$a;

    .line 1023
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p0, p0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    invoke-virtual {p0}, Lcom/mp4parser/iso14496/a/b;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mp4parser/iso14496/a/b;->b:[S

    aget-short p1, v0, p1

    return p1

    .line 61
    :cond_0
    iget-short p1, p0, Lcom/mp4parser/iso14496/a/b;->a:S

    return p1
.end method

.method public final b()I
    .locals 1

    sget-object v0, Lcom/mp4parser/iso14496/a/b;->o:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-short v0, p0, Lcom/mp4parser/iso14496/a/b;->a:S

    return v0
.end method

.method public final c()I
    .locals 1

    sget-object v0, Lcom/mp4parser/iso14496/a/b;->q:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 143
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget v0, p0, Lcom/mp4parser/iso14496/a/b;->c:I

    return v0
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 68
    invoke-virtual {p0, p1}, Lcom/mp4parser/iso14496/a/b;->b(Ljava/nio/ByteBuffer;)V

    .line 69
    invoke-virtual {p0}, Lcom/mp4parser/iso14496/a/b;->i()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mp4parser/iso14496/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 71
    iget-object v0, p0, Lcom/mp4parser/iso14496/a/b;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 74
    :cond_0
    iget-short v0, p0, Lcom/mp4parser/iso14496/a/b;->a:S

    invoke-static {p1, v0}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 76
    iget-short v0, p0, Lcom/mp4parser/iso14496/a/b;->a:S

    if-nez v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/mp4parser/iso14496/a/b;->b:[S

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 78
    iget-object v0, p0, Lcom/mp4parser/iso14496/a/b;->b:[S

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    aget-short v3, v0, v2

    .line 79
    invoke-static {p1, v3}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_2
    iget v0, p0, Lcom/mp4parser/iso14496/a/b;->c:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method public getContentSize()J
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/mp4parser/iso14496/a/b;->i()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v0, v0, 0x5

    .line 53
    iget-short v1, p0, Lcom/mp4parser/iso14496/a/b;->a:S

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mp4parser/iso14496/a/b;->b:[S

    array-length v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/mp4parser/iso14496/a/b;->r:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 152
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SampleAuxiliaryInformationSizesBox{defaultSampleInfoSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    iget-short v1, p0, Lcom/mp4parser/iso14496/a/b;->a:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleCount="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/a/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", auxInfoType=\'"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mp4parser/iso14496/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", auxInfoTypeParameter=\'"

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mp4parser/iso14496/a/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
