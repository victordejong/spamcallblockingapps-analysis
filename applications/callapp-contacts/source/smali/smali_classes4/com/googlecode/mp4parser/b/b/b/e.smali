.class public Lcom/googlecode/mp4parser/b/b/b/e;
.super Lcom/googlecode/mp4parser/c;
.source "SourceFile"


# static fields
.field public static final c:Lorg/mp4parser/aspectj/lang/a$a;

.field public static final d:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final f:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final g:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final h:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final i:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final j:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final k:Lorg/mp4parser/aspectj/lang/a$a;

.field private static final l:Lorg/mp4parser/aspectj/lang/a$a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/b/b/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/googlecode/mp4parser/b/b/b/e;->c()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "sgpd"

    .line 53
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/b/b/b/e;->b(I)V

    return-void
.end method

.method private static c()V
    .locals 10

    .line 1
    new-instance v8, Lorg/mp4parser/aspectj/a/b/b;

    const-class v0, Lcom/googlecode/mp4parser/b/b/b/e;

    const-string v1, "SampleGroupDescriptionBox.java"

    invoke-direct {v8, v1, v0}, Lorg/mp4parser/aspectj/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "getGroupingType"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const-string v9, "method-execution"

    const/16 v1, 0x39

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->f:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setGroupingType"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, "java.lang.String"

    const-string v5, "groupingType"

    const-string v6, ""

    const-string/jumbo v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->c:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "getDefaultLength"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x99

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->g:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setDefaultLength"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, "int"

    const-string v5, "defaultLength"

    const-string v6, ""

    const-string/jumbo v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0x9d

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->h:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "getGroupEntries"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.util.List"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->i:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "setGroupEntries"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, "java.util.List"

    const-string v5, "groupEntries"

    const-string v6, ""

    const-string/jumbo v7, "void"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->d:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "equals"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, "java.lang.Object"

    const-string v5, "o"

    const-string v6, ""

    const-string v7, "boolean"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->j:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "hashCode"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "int"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0xbf

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->k:Lorg/mp4parser/aspectj/lang/a$a;

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const/16 v1, 0xc7

    invoke-virtual {v8, v9, v0, v1}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->l:Lorg/mp4parser/aspectj/lang/a$a;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 99
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/b/b/b/e;->a(Ljava/nio/ByteBuffer;)J

    .line 100
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b/e;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 103
    invoke-static {p1}, Lcom/b/a/e;->h(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->a:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b/e;->h()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 105
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->e:I

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_1

    return-void

    .line 109
    :cond_1
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->e:I

    .line 110
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b/e;->h()I

    move-result v2

    if-ne v2, v1, :cond_c

    .line 111
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/b/e;->e:I

    if-nez v2, :cond_2

    .line 112
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    .line 117
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    .line 118
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 119
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 120
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    iget-object v6, p0, Lcom/googlecode/mp4parser/b/b/b/e;->a:Ljava/lang/String;

    const-string v7, "roll"

    .line 1128
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1129
    new-instance v6, Lcom/googlecode/mp4parser/b/b/b/d;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/b/b/b/d;-><init>()V

    goto/16 :goto_1

    :cond_3
    const-string v7, "rash"

    .line 1130
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1131
    new-instance v6, Lcom/googlecode/mp4parser/b/b/b/c;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/b/b/b/c;-><init>()V

    goto/16 :goto_1

    :cond_4
    const-string v7, "seig"

    .line 1132
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1133
    new-instance v6, Lcom/googlecode/mp4parser/b/b/b/a;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/b/b/b/a;-><init>()V

    goto :goto_1

    :cond_5
    const-string v7, "rap "

    .line 1134
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1135
    new-instance v6, Lcom/googlecode/mp4parser/b/b/b/i;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/b/b/b/i;-><init>()V

    goto :goto_1

    :cond_6
    const-string v7, "tele"

    .line 1136
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1137
    new-instance v6, Lcom/googlecode/mp4parser/b/b/b/g;

    invoke-direct {v6}, Lcom/googlecode/mp4parser/b/b/b/g;-><init>()V

    goto :goto_1

    :cond_7
    const-string v7, "sync"

    .line 1138
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1139
    new-instance v6, Lcom/mp4parser/iso14496/part15/b;

    invoke-direct {v6}, Lcom/mp4parser/iso14496/part15/b;-><init>()V

    goto :goto_1

    :cond_8
    const-string v7, "tscl"

    .line 1140
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1141
    new-instance v6, Lcom/mp4parser/iso14496/part15/c;

    invoke-direct {v6}, Lcom/mp4parser/iso14496/part15/c;-><init>()V

    goto :goto_1

    :cond_9
    const-string v7, "tsas"

    .line 1142
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1143
    new-instance v6, Lcom/mp4parser/iso14496/part15/d;

    invoke-direct {v6}, Lcom/mp4parser/iso14496/part15/d;-><init>()V

    goto :goto_1

    :cond_a
    const-string v7, "stsa"

    .line 1144
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1145
    new-instance v6, Lcom/mp4parser/iso14496/part15/a;

    invoke-direct {v6}, Lcom/mp4parser/iso14496/part15/a;-><init>()V

    goto :goto_1

    .line 1147
    :cond_b
    new-instance v7, Lcom/googlecode/mp4parser/b/b/b/h;

    invoke-direct {v7, v6}, Lcom/googlecode/mp4parser/b/b/b/h;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 1149
    :goto_1
    invoke-virtual {v6, v3}, Lcom/googlecode/mp4parser/b/b/b/b;->a(Ljava/nio/ByteBuffer;)V

    .line 120
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-wide v2, v4

    goto/16 :goto_0

    .line 115
    :cond_c
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "This should be implemented"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "SampleGroupDescriptionBox are only supported in version 1"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->f:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/b/b/b/b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->i:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    sget-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->j:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0, p1}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    check-cast p1, Lcom/googlecode/mp4parser/b/b/b/e;

    .line 180
    iget v2, p0, Lcom/googlecode/mp4parser/b/b/b/e;->e:I

    iget v3, p1, Lcom/googlecode/mp4parser/b/b/b/e;->e:I

    if-eq v2, v3, :cond_2

    return v1

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 83
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/b/b/b/e;->b(Ljava/nio/ByteBuffer;)V

    .line 84
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b/e;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->e:I

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 89
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/b/b/b/b;

    .line 90
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b/e;->h()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget v3, p0, Lcom/googlecode/mp4parser/b/b/b/e;->e:I

    if-nez v3, :cond_2

    .line 91
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b/b/b/b;->b()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 93
    :cond_2
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b/b/b/b;->b()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public getContentSize()J
    .locals 8

    .line 68
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b/e;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v2, 0xc

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x8

    :goto_0
    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    .line 72
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    return-wide v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/b/b/b/b;

    .line 73
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b/e;->h()I

    move-result v7

    if-ne v7, v1, :cond_2

    iget v7, p0, Lcom/googlecode/mp4parser/b/b/b/e;->e:I

    if-nez v7, :cond_2

    add-long/2addr v2, v4

    .line 76
    :cond_2
    invoke-virtual {v6}, Lcom/googlecode/mp4parser/b/b/b/b;->c()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    sget-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->k:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 192
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    .line 193
    iget v0, p0, Lcom/googlecode/mp4parser/b/b/b/e;->e:I

    const/4 v1, 0x0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 194
    iget-object v2, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/googlecode/mp4parser/b/b/b/e;->l:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 200
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SampleGroupDescriptionBox{groupingType=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/b/b/b/b;

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/b/b/b/b;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "????"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", defaultLength="

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/b/b/b/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groupEntries="

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/b/b/b/e;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
