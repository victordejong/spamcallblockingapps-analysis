.class public Lcom/googlecode/mp4parser/b/b/b;
.super Lcom/googlecode/mp4parser/b/b/a;
.source "SourceFile"


# static fields
.field private static final c:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final d:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final e:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final f:Lorg/mp4parser/aspectj/lang/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/googlecode/mp4parser/b/b/b;->c()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "esds"

    .line 32
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/b/b/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static c()V
    .locals 10

    .line 1
    new-instance v8, Lorg/mp4parser/aspectj/a/b/b;

    const-class v0, Lcom/googlecode/mp4parser/b/b/b;

    const-string v1, "ESDescriptorBox.java"

    invoke-direct {v8, v1, v0}, Lorg/mp4parser/aspectj/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "getEsDescriptor"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const-string v9, "method-execution"

    const/16 v1, 0x23

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b;->c:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setEsDescriptor"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox"

    const-string v4, "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.ESDescriptor"

    const-string v5, "esDescriptor"

    const-string v6, ""

    const-string/jumbo v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b;->d:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "equals"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox"

    const-string v4, "java.lang.Object"

    const-string v5, "o"

    const-string v6, ""

    const-string v7, "boolean"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b;->e:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "hashCode"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.ESDescriptorBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b;->f:Lorg/mp4parser/aspectj/lang/a$a;

    return-void
.end method


# virtual methods
.method public final b()Lcom/googlecode/mp4parser/b/b/a/h;
    .locals 1

    sget-object v0, Lcom/googlecode/mp4parser/b/b/b;->c:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    invoke-super {p0}, Lcom/googlecode/mp4parser/b/b/a;->a()Lcom/googlecode/mp4parser/b/b/a/b;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/b/b/a/h;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    sget-object v0, Lcom/googlecode/mp4parser/b/b/b;->e:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0, p1}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/b/b/b;

    .line 50
    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/b;->b:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/b;->b:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/googlecode/mp4parser/b/b/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/googlecode/mp4parser/b/b/b;->b:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p1

    .line 70
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/b/b/b;->b(Ljava/nio/ByteBuffer;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/b/b/b;->b()Lcom/googlecode/mp4parser/b/b/a/h;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1139
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/a/h;->b()I

    move-result v2

    new-array v2, v2, [B

    .line 1140
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x3

    .line 1141
    invoke-static {v2, v3}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 1142
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/a/h;->a()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/googlecode/mp4parser/b/b/a/h;->a(Ljava/nio/ByteBuffer;I)V

    .line 1143
    iget v4, v1, Lcom/googlecode/mp4parser/b/b/a/h;->a:I

    invoke-static {v2, v4}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 1144
    iget v4, v1, Lcom/googlecode/mp4parser/b/b/a/h;->b:I

    shl-int/lit8 v4, v4, 0x7

    iget v5, v1, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    const/4 v6, 0x6

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    iget v5, v1, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    const/4 v7, 0x5

    shl-int/2addr v5, v7

    or-int/2addr v4, v5

    iget v5, v1, Lcom/googlecode/mp4parser/b/b/a/h;->e:I

    and-int/lit8 v5, v5, 0x1f

    or-int/2addr v4, v5

    .line 1145
    invoke-static {v2, v4}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 1146
    iget v4, v1, Lcom/googlecode/mp4parser/b/b/a/h;->b:I

    if-lez v4, :cond_0

    .line 1147
    iget v4, v1, Lcom/googlecode/mp4parser/b/b/a/h;->i:I

    invoke-static {v2, v4}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 1149
    :cond_0
    iget v4, v1, Lcom/googlecode/mp4parser/b/b/a/h;->c:I

    if-lez v4, :cond_1

    .line 1150
    iget v4, v1, Lcom/googlecode/mp4parser/b/b/a/h;->f:I

    invoke-static {v2, v4}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 1151
    iget-object v4, v1, Lcom/googlecode/mp4parser/b/b/a/h;->g:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1153
    :cond_1
    iget v4, v1, Lcom/googlecode/mp4parser/b/b/a/h;->d:I

    if-lez v4, :cond_2

    .line 1154
    iget v4, v1, Lcom/googlecode/mp4parser/b/b/a/h;->j:I

    invoke-static {v2, v4}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 1157
    :cond_2
    iget-object v4, v1, Lcom/googlecode/mp4parser/b/b/a/h;->k:Lcom/googlecode/mp4parser/b/b/a/e;

    .line 2112
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/b/b/a/e;->b()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2113
    iget v8, v4, Lcom/googlecode/mp4parser/b/b/a/e;->Y:I

    invoke-static {v5, v8}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 2114
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/b/b/a/e;->a()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Lcom/googlecode/mp4parser/b/b/a/e;->a(Ljava/nio/ByteBuffer;I)V

    .line 2115
    iget v8, v4, Lcom/googlecode/mp4parser/b/b/a/e;->a:I

    invoke-static {v5, v8}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 2116
    iget v8, v4, Lcom/googlecode/mp4parser/b/b/a/e;->b:I

    const/4 v9, 0x2

    shl-int/2addr v8, v9

    iget v10, v4, Lcom/googlecode/mp4parser/b/b/a/e;->c:I

    const/4 v11, 0x1

    shl-int/2addr v10, v11

    or-int/2addr v8, v10

    or-int/2addr v8, v11

    .line 2117
    invoke-static {v5, v8}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 2118
    iget v8, v4, Lcom/googlecode/mp4parser/b/b/a/e;->d:I

    invoke-static {v5, v8}, Lcom/b/a/f;->a(Ljava/nio/ByteBuffer;I)V

    .line 2119
    iget-wide v12, v4, Lcom/googlecode/mp4parser/b/b/a/e;->e:J

    invoke-static {v5, v12, v13}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 2120
    iget-wide v12, v4, Lcom/googlecode/mp4parser/b/b/a/e;->f:J

    invoke-static {v5, v12, v13}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 2121
    iget-object v8, v4, Lcom/googlecode/mp4parser/b/b/a/e;->g:Lcom/googlecode/mp4parser/b/b/a/f;

    if-eqz v8, :cond_3

    .line 2122
    iget-object v8, v4, Lcom/googlecode/mp4parser/b/b/a/e;->g:Lcom/googlecode/mp4parser/b/b/a/f;

    .line 3056
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/b/b/a/f;->b()I

    move-result v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 3057
    iget v12, v8, Lcom/googlecode/mp4parser/b/b/a/f;->Y:I

    invoke-static {v10, v12}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 4052
    iget-object v12, v8, Lcom/googlecode/mp4parser/b/b/a/f;->a:[B

    array-length v12, v12

    .line 3058
    invoke-virtual {v8, v10, v12}, Lcom/googlecode/mp4parser/b/b/a/f;->a(Ljava/nio/ByteBuffer;I)V

    .line 3059
    iget-object v8, v8, Lcom/googlecode/mp4parser/b/b/a/f;->a:[B

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3060
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    .line 2123
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 2125
    :cond_3
    iget-object v8, v4, Lcom/googlecode/mp4parser/b/b/a/e;->h:Lcom/googlecode/mp4parser/b/b/a/a;

    if-eqz v8, :cond_1b

    .line 2126
    iget-object v8, v4, Lcom/googlecode/mp4parser/b/b/a/e;->h:Lcom/googlecode/mp4parser/b/b/a/a;

    .line 4812
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/b/b/a/a;->b()I

    move-result v12

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 4813
    iget v13, v8, Lcom/googlecode/mp4parser/b/b/a/a;->Y:I

    invoke-static {v12, v13}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 4814
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/b/b/a/a;->a()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Lcom/googlecode/mp4parser/b/b/a/a;->a(Ljava/nio/ByteBuffer;I)V

    .line 4820
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/b/b/a/a;->a()I

    move-result v13

    new-array v13, v13, [B

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 4821
    new-instance v14, Lcom/googlecode/mp4parser/b/b/a/d;

    invoke-direct {v14, v13}, Lcom/googlecode/mp4parser/b/b/a/d;-><init>(Ljava/nio/ByteBuffer;)V

    .line 4822
    iget v15, v8, Lcom/googlecode/mp4parser/b/b/a/a;->e:I

    invoke-static {v15, v14}, Lcom/googlecode/mp4parser/b/b/a/a;->a(ILcom/googlecode/mp4parser/b/b/a/d;)V

    .line 4823
    iget v15, v8, Lcom/googlecode/mp4parser/b/b/a/a;->f:I

    const/4 v9, 0x4

    invoke-virtual {v14, v15, v9}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4825
    iget v15, v8, Lcom/googlecode/mp4parser/b/b/a/a;->f:I

    const/16 v3, 0x18

    const/16 v10, 0xf

    if-ne v15, v10, :cond_4

    .line 4826
    iget v15, v8, Lcom/googlecode/mp4parser/b/b/a/a;->g:I

    invoke-virtual {v14, v15, v3}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4829
    :cond_4
    iget v15, v8, Lcom/googlecode/mp4parser/b/b/a/a;->h:I

    invoke-virtual {v14, v15, v9}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4831
    iget v15, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    const/16 v6, 0x1d

    const/16 v3, 0x16

    if-eq v15, v7, :cond_5

    .line 4832
    iget v15, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    if-ne v15, v6, :cond_8

    .line 4833
    :cond_5
    iput v7, v8, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    .line 4834
    iput-boolean v11, v8, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    .line 4835
    iget v15, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    if-ne v15, v6, :cond_6

    .line 4836
    iput-boolean v11, v8, Lcom/googlecode/mp4parser/b/b/a/a;->k:Z

    .line 4838
    :cond_6
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    invoke-virtual {v14, v6, v9}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4839
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    if-ne v6, v10, :cond_7

    .line 4840
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->m:I

    const/16 v15, 0x18

    invoke-virtual {v14, v6, v15}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4841
    :cond_7
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    invoke-static {v6, v14}, Lcom/googlecode/mp4parser/b/b/a/a;->a(ILcom/googlecode/mp4parser/b/b/a/d;)V

    .line 4842
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    if-ne v6, v3, :cond_8

    .line 4843
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->n:I

    invoke-virtual {v14, v6, v9}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4845
    :cond_8
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    const/16 v15, 0x11

    const/16 v10, 0xb

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4929
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t parse SymbolicMusicSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4924
    :pswitch_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write ELDSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4920
    :pswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write SLSSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4914
    :pswitch_4
    iget v0, v8, Lcom/googlecode/mp4parser/b/b/a/a;->p:I

    invoke-virtual {v14, v0, v7}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4915
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write ALSSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4910
    :pswitch_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write DSTSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4906
    :pswitch_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write MPEG_1_2_SpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4899
    :pswitch_7
    iget v0, v8, Lcom/googlecode/mp4parser/b/b/a/a;->o:I

    invoke-virtual {v14, v0, v11}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4900
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write SpatialSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4895
    :pswitch_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write SSCSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4890
    :pswitch_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write parseParametricSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4885
    :pswitch_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write ErrorResilientHvxcSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4881
    :pswitch_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write ErrorResilientCelpSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4877
    :pswitch_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write StructuredAudioSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4870
    :pswitch_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write TTSSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4866
    :pswitch_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write HvxcSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4862
    :pswitch_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t write CelpSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5057
    :pswitch_10
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->v:I

    invoke-virtual {v14, v6, v11}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 5058
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->w:I

    invoke-virtual {v14, v6, v11}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 5059
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->w:I

    if-ne v6, v11, :cond_9

    .line 5060
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->x:I

    const/16 v9, 0xe

    invoke-virtual {v14, v6, v9}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 5062
    :cond_9
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->y:I

    invoke-virtual {v14, v6, v11}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 5063
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->h:I

    if-eqz v6, :cond_10

    .line 5067
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    const/4 v9, 0x6

    if-eq v6, v9, :cond_a

    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    const/16 v9, 0x14

    if-ne v6, v9, :cond_b

    .line 5068
    :cond_a
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->z:I

    const/4 v9, 0x3

    invoke-virtual {v14, v6, v9}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 5070
    :cond_b
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->y:I

    if-ne v6, v11, :cond_11

    .line 5071
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    if-ne v6, v3, :cond_c

    .line 5072
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->A:I

    invoke-virtual {v14, v6, v7}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 5073
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->B:I

    invoke-virtual {v14, v6, v10}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 5075
    :cond_c
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    if-eq v6, v15, :cond_d

    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    const/16 v9, 0x13

    if-eq v6, v9, :cond_d

    .line 5076
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    const/16 v9, 0x14

    if-eq v6, v9, :cond_d

    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    const/16 v9, 0x17

    if-ne v6, v9, :cond_e

    .line 5077
    :cond_d
    iget-boolean v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->C:Z

    invoke-virtual {v14, v6}, Lcom/googlecode/mp4parser/b/b/a/d;->a(Z)V

    .line 5078
    iget-boolean v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->D:Z

    invoke-virtual {v14, v6}, Lcom/googlecode/mp4parser/b/b/a/d;->a(Z)V

    .line 5079
    iget-boolean v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->E:Z

    invoke-virtual {v14, v6}, Lcom/googlecode/mp4parser/b/b/a/d;->a(Z)V

    .line 5081
    :cond_e
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->F:I

    invoke-virtual {v14, v6, v11}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 5082
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->F:I

    if-eq v6, v11, :cond_f

    goto :goto_0

    .line 5083
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5064
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t parse program_config_element yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4936
    :cond_11
    :goto_0
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->d:I

    if-eq v6, v15, :cond_12

    const/16 v9, 0x27

    if-eq v6, v9, :cond_12

    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 4948
    :cond_12
    :pswitch_11
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->q:I

    const/4 v9, 0x2

    invoke-virtual {v14, v6, v9}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4949
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->q:I

    if-eq v6, v9, :cond_1a

    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->q:I

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1a

    .line 4953
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->q:I

    if-ne v6, v9, :cond_14

    .line 4954
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->r:I

    invoke-virtual {v14, v6, v11}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4955
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->r:I

    if-eqz v6, :cond_13

    goto :goto_1

    .line 4957
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4962
    :cond_14
    :goto_1
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->u:I

    if-ltz v6, :cond_19

    .line 4963
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->u:I

    invoke-virtual {v14, v6, v10}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4964
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->u:I

    const/16 v9, 0x2b7

    if-ne v6, v9, :cond_19

    .line 4965
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    invoke-static {v6, v14}, Lcom/googlecode/mp4parser/b/b/a/a;->a(ILcom/googlecode/mp4parser/b/b/a/d;)V

    .line 4966
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    if-ne v6, v7, :cond_16

    .line 4967
    iget-boolean v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    invoke-virtual {v14, v6}, Lcom/googlecode/mp4parser/b/b/a/d;->a(Z)V

    .line 4968
    iget-boolean v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    if-eqz v6, :cond_16

    .line 4969
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    const/4 v7, 0x4

    invoke-virtual {v14, v6, v7}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4970
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    const/16 v7, 0xf

    if-ne v6, v7, :cond_15

    .line 4971
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->m:I

    const/16 v7, 0x18

    invoke-virtual {v14, v6, v7}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4973
    :cond_15
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->t:I

    if-ltz v6, :cond_16

    .line 4974
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->t:I

    invoke-virtual {v14, v6, v10}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4975
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->s:I

    const/16 v7, 0x548

    if-ne v6, v7, :cond_16

    .line 4976
    iget-boolean v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->k:Z

    invoke-virtual {v14, v6}, Lcom/googlecode/mp4parser/b/b/a/d;->a(Z)V

    .line 4981
    :cond_16
    iget v6, v8, Lcom/googlecode/mp4parser/b/b/a/a;->i:I

    if-ne v6, v3, :cond_19

    .line 4982
    iget-boolean v3, v8, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    invoke-virtual {v14, v3}, Lcom/googlecode/mp4parser/b/b/a/d;->a(Z)V

    .line 4983
    iget-boolean v3, v8, Lcom/googlecode/mp4parser/b/b/a/a;->j:Z

    if-eqz v3, :cond_17

    .line 4984
    iget v3, v8, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    const/4 v6, 0x4

    invoke-virtual {v14, v3, v6}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4985
    iget v3, v8, Lcom/googlecode/mp4parser/b/b/a/a;->l:I

    const/16 v7, 0xf

    if-ne v3, v7, :cond_18

    .line 4986
    iget v3, v8, Lcom/googlecode/mp4parser/b/b/a/a;->m:I

    const/16 v7, 0x18

    invoke-virtual {v14, v3, v7}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    goto :goto_2

    :cond_17
    const/4 v6, 0x4

    .line 4989
    :cond_18
    :goto_2
    iget v3, v8, Lcom/googlecode/mp4parser/b/b/a/a;->n:I

    invoke-virtual {v14, v3, v6}, Lcom/googlecode/mp4parser/b/b/a/d;->a(II)V

    .line 4994
    :cond_19
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 4815
    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4816
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 2127
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 4950
    :cond_1a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t parse ErrorProtectionSpecificConfig yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2129
    :cond_1b
    :goto_3
    iget-object v3, v4, Lcom/googlecode/mp4parser/b/b/a/e;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2132
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 1158
    iget-object v1, v1, Lcom/googlecode/mp4parser/b/b/a/h;->l:Lcom/googlecode/mp4parser/b/b/a/n;

    .line 6085
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/a/n;->b()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v6, 0x6

    .line 6086
    invoke-static {v4, v6}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 6087
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/a/n;->a()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/googlecode/mp4parser/b/b/a/n;->a(Ljava/nio/ByteBuffer;I)V

    .line 6088
    iget v1, v1, Lcom/googlecode/mp4parser/b/b/a/n;->a:I

    invoke-static {v4, v1}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 1159
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1160
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_1c
    const/4 v6, 0x6

    .line 2129
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/b/b/a/m;

    .line 6046
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/b/b/a/m;->b()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    const/16 v8, 0x14

    .line 6047
    invoke-static {v7, v8}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 6048
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/b/b/a/m;->a()I

    move-result v9

    invoke-virtual {v4, v7, v9}, Lcom/googlecode/mp4parser/b/b/a/m;->a(Ljava/nio/ByteBuffer;I)V

    .line 6049
    iget v4, v4, Lcom/googlecode/mp4parser/b/b/a/m;->a:I

    invoke-static {v7, v4}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 2130
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_1d
    move-object/from16 v4, p0

    .line 75
    iget-object v1, v4, Lcom/googlecode/mp4parser/b/b/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_10
        :pswitch_0
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public getContentSize()J
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b;->b()Lcom/googlecode/mp4parser/b/b/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/b/b/a/h;->b()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    sget-object v0, Lcom/googlecode/mp4parser/b/b/b;->f:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
