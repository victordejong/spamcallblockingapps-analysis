.class final Lcom/google/android/gms/internal/measurement/hr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ia;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/ia<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/android/gms/internal/measurement/ho;

.field private final h:Z

.field private final i:Z

.field private final j:[I

.field private final k:I

.field private final l:I

.field private final m:Lcom/google/android/gms/internal/measurement/hd;

.field private final n:Lcom/google/android/gms/internal/measurement/im;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/im<",
            "**>;"
        }
    .end annotation
.end field

.field private final o:Lcom/google/android/gms/internal/measurement/fz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/fz<",
            "*>;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/android/gms/internal/measurement/hu;

.field private final q:Lcom/google/android/gms/internal/measurement/hj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/hr;->a:[I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ix;->c()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/ho;ZZ[IIILcom/google/android/gms/internal/measurement/hu;Lcom/google/android/gms/internal/measurement/hd;Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/hj;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/measurement/ho;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/measurement/hu;",
            "Lcom/google/android/gms/internal/measurement/hd;",
            "Lcom/google/android/gms/internal/measurement/im<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/fz<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/hj;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/hr;->d:[Ljava/lang/Object;

    move v3, p3

    iput v3, v0, Lcom/google/android/gms/internal/measurement/hr;->e:I

    move v3, p4

    iput v3, v0, Lcom/google/android/gms/internal/measurement/hr;->f:I

    move v3, p6

    iput-boolean v3, v0, Lcom/google/android/gms/internal/measurement/hr;->i:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1
    invoke-virtual {v2, p5}, Lcom/google/android/gms/internal/measurement/fz;->a(Lcom/google/android/gms/internal/measurement/ho;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, v0, Lcom/google/android/gms/internal/measurement/hr;->h:Z

    move-object v3, p8

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/hr;->j:[I

    move v3, p9

    iput v3, v0, Lcom/google/android/gms/internal/measurement/hr;->k:I

    move v3, p10

    iput v3, v0, Lcom/google/android/gms/internal/measurement/hr;->l:I

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/hr;->p:Lcom/google/android/gms/internal/measurement/hu;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/hr;->m:Lcom/google/android/gms/internal/measurement/hd;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/hr;->o:Lcom/google/android/gms/internal/measurement/fz;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/hr;->g:Lcom/google/android/gms/internal/measurement/ho;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/hr;->q:Lcom/google/android/gms/internal/measurement/hj;

    return-void
.end method

.method private static a(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final a(II)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/hr;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/hr;->f:I

    if-gt p1, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/hr;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final a(Ljava/lang/Object;IJ)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;IJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/hr;->b(I)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p1, p3, p4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 3
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/measurement/hi;

    .line 3000
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/hi;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hi;->a()Lcom/google/android/gms/internal/measurement/hi;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/hi;->b()Lcom/google/android/gms/internal/measurement/hi;

    move-result-object v1

    .line 5
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/measurement/hj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p1, p3, p4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/fa;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/measurement/fa;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    add-int/lit8 v13, v6, 0x2

    .line 1
    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_b

    .line 2
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v5

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/fb;->a(Lcom/google/android/gms/internal/measurement/ia;[BIIILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    .line 4
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 5
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v15, :cond_1

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 6
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 7
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/measurement/gt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    :goto_1
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_1
    if-nez v5, :cond_b

    .line 10
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/fa;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/fp;->a(J)J

    move-result-wide v3

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_2
    if-nez v5, :cond_b

    .line 13
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/measurement/fa;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/fp;->a(I)I

    move-result v3

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    if-nez v5, :cond_b

    .line 16
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/fa;->a:I

    .line 17
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->c(I)Lcom/google/android/gms/internal/measurement/gp;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 18
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/gp;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 21
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/hr;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/in;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/measurement/in;->a(ILjava/lang/Object;)V

    goto :goto_3

    .line 19
    :cond_3
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 20
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_3
    move v2, v3

    goto/16 :goto_a

    :pswitch_4
    if-ne v5, v15, :cond_b

    .line 22
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->e([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 23
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 24
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    if-ne v5, v15, :cond_b

    .line 25
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v2

    move/from16 v5, p4

    .line 26
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/fb;->a(Lcom/google/android/gms/internal/measurement/ia;[BIILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    .line 27
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 28
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    if-nez v15, :cond_5

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 29
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 32
    :cond_5
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 30
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/measurement/gt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 32
    :goto_5
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_b

    .line 33
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-nez v4, :cond_6

    const-string v3, ""

    .line 34
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_6
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_8

    add-int v5, v2, v4

    .line 35
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/measurement/jc;->a([BII)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_6

    .line 39
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->f()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 35
    :cond_8
    :goto_6
    new-instance v5, Ljava/lang/String;

    .line 36
    sget-object v6, Lcom/google/android/gms/internal/measurement/gt;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 37
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 38
    :goto_7
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_a

    :pswitch_7
    if-nez v5, :cond_b

    .line 40
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/fa;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_9

    const/4 v15, 0x1

    goto :goto_8

    :cond_9
    const/4 v15, 0x0

    .line 41
    :goto_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    if-ne v5, v7, :cond_b

    .line 43
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_9
    const/4 v2, 0x1

    if-ne v5, v2, :cond_b

    .line 45
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :pswitch_a
    if-nez v5, :cond_b

    .line 47
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/measurement/fa;->a:I

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    if-nez v5, :cond_b

    .line 50
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/fa;->b:J

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    if-eq v5, v7, :cond_a

    goto :goto_9

    .line 53
    :cond_a
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 55
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_d
    const/4 v2, 0x1

    if-ne v5, v2, :cond_b

    .line 56
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 58
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :cond_b
    :goto_9
    move v2, v4

    :goto_a
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/fa;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/measurement/fa;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/gs;

    .line 2
    invoke-interface {v12}, Lcom/google/android/gms/internal/measurement/gs;->a()Z

    move-result v13

    if-nez v13, :cond_1

    .line 3
    invoke-interface {v12}, Lcom/google/android/gms/internal/measurement/gs;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v13, v13

    .line 4
    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/measurement/gs;->a(I)Lcom/google/android/gms/internal/measurement/gs;

    move-result-object v12

    .line 5
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_46

    .line 6
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 7
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/fb;->a(Lcom/google/android/gms/internal/measurement/ia;[BIIILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 8
    invoke-interface {v12, v8}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    :pswitch_0
    if-ne v6, v14, :cond_4

    .line 12
    check-cast v12, Lcom/google/android/gms/internal/measurement/he;

    .line 13
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    add-int/2addr v2, v1

    :goto_1
    if-ge v1, v2, :cond_2

    .line 14
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/fa;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/fp;->a(J)J

    move-result-wide v4

    .line 15
    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/he;->a(J)V

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_27

    .line 16
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_46

    .line 17
    check-cast v12, Lcom/google/android/gms/internal/measurement/he;

    .line 18
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/fa;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/fp;->a(J)J

    move-result-wide v8

    .line 19
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/he;->a(J)V

    :goto_2
    if-ge v1, v5, :cond_6

    .line 20
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-eq v2, v6, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/fa;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/fp;->a(J)J

    move-result-wide v8

    .line 22
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/he;->a(J)V

    goto :goto_2

    :cond_6
    :goto_3
    return v1

    :pswitch_1
    if-ne v6, v14, :cond_9

    .line 23
    check-cast v12, Lcom/google/android/gms/internal/measurement/gm;

    .line 24
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_7

    .line 25
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fp;->a(I)I

    move-result v4

    .line 26
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/gm;->d(I)V

    goto :goto_4

    :cond_7
    if-ne v1, v2, :cond_8

    goto/16 :goto_27

    .line 27
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_9
    if-nez v6, :cond_46

    .line 28
    check-cast v12, Lcom/google/android/gms/internal/measurement/gm;

    .line 29
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fp;->a(I)I

    move-result v4

    .line 30
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/gm;->d(I)V

    :goto_5
    if-ge v1, v5, :cond_b

    .line 31
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-eq v2, v6, :cond_a

    goto :goto_6

    .line 32
    :cond_a
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fp;->a(I)I

    move-result v4

    .line 33
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/gm;->d(I)V

    goto :goto_5

    :cond_b
    :goto_6
    return v1

    :pswitch_2
    if-ne v6, v14, :cond_c

    .line 34
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/gs;Lcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    goto :goto_7

    :cond_c
    if-nez v6, :cond_46

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    .line 35
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/fb;->a(I[BIILcom/google/android/gms/internal/measurement/gs;Lcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    .line 36
    :goto_7
    check-cast v1, Lcom/google/android/gms/internal/measurement/gl;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/gl;->zzc:Lcom/google/android/gms/internal/measurement/in;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->a()Lcom/google/android/gms/internal/measurement/in;

    move-result-object v4

    if-ne v3, v4, :cond_d

    const/4 v3, 0x0

    .line 37
    :cond_d
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/hr;->c(I)Lcom/google/android/gms/internal/measurement/gp;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    move/from16 v6, p6

    .line 38
    invoke-static {v6, v12, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/gp;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/im;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    goto/16 :goto_11

    :cond_e
    check-cast v3, Lcom/google/android/gms/internal/measurement/in;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/gl;->zzc:Lcom/google/android/gms/internal/measurement/in;

    return v2

    :pswitch_3
    if-ne v6, v14, :cond_46

    .line 39
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-ltz v4, :cond_16

    .line 41
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_15

    if-nez v4, :cond_f

    .line 43
    sget-object v4, Lcom/google/android/gms/internal/measurement/fm;->b:Lcom/google/android/gms/internal/measurement/fm;

    invoke-interface {v12, v4}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 44
    :cond_f
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/fm;->a([BII)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v6

    invoke-interface {v12, v6}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v1, v4

    :goto_9
    if-ge v1, v5, :cond_14

    .line 45
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-eq v2, v6, :cond_10

    goto :goto_a

    .line 46
    :cond_10
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-ltz v4, :cond_13

    .line 47
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_12

    if-nez v4, :cond_11

    .line 51
    sget-object v4, Lcom/google/android/gms/internal/measurement/fm;->b:Lcom/google/android/gms/internal/measurement/fm;

    .line 48
    invoke-interface {v12, v4}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 49
    :cond_11
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/fm;->a([BII)Lcom/google/android/gms/internal/measurement/fm;

    move-result-object v6

    invoke-interface {v12, v6}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 51
    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 50
    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->b()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_14
    :goto_a
    return v1

    .line 42
    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 40
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->b()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :pswitch_4
    if-ne v6, v14, :cond_46

    .line 52
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    .line 53
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/measurement/fb;->a(Lcom/google/android/gms/internal/measurement/ia;I[BIILcom/google/android/gms/internal/measurement/gs;Lcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    return v1

    :pswitch_5
    if-ne v6, v14, :cond_46

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v10

    if-nez v6, :cond_1b

    .line 69
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-ltz v6, :cond_1a

    if-nez v6, :cond_17

    .line 71
    invoke-interface {v12, v1}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 78
    :cond_17
    new-instance v8, Ljava/lang/String;

    .line 72
    sget-object v9, Lcom/google/android/gms/internal/measurement/gt;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 73
    invoke-interface {v12, v8}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/2addr v4, v6

    :goto_c
    if-ge v4, v5, :cond_46

    .line 74
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-ne v2, v8, :cond_46

    .line 75
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-ltz v6, :cond_19

    if-nez v6, :cond_18

    .line 76
    invoke-interface {v12, v1}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    new-instance v8, Ljava/lang/String;

    .line 77
    sget-object v9, Lcom/google/android/gms/internal/measurement/gt;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 78
    invoke-interface {v12, v8}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 79
    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->b()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 70
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->b()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 54
    :cond_1b
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-ltz v6, :cond_21

    if-nez v6, :cond_1c

    .line 56
    invoke-interface {v12, v1}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1c
    add-int v8, v4, v6

    .line 57
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/measurement/jc;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 58
    new-instance v9, Ljava/lang/String;

    .line 59
    sget-object v10, Lcom/google/android/gms/internal/measurement/gt;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 60
    invoke-interface {v12, v9}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    :goto_d
    move v4, v8

    :goto_e
    if-ge v4, v5, :cond_46

    .line 61
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-ne v2, v8, :cond_46

    .line 62
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-ltz v6, :cond_1f

    if-nez v6, :cond_1d

    .line 63
    invoke-interface {v12, v1}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1d
    add-int v8, v4, v6

    .line 64
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/measurement/jc;->a([BII)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 68
    new-instance v9, Ljava/lang/String;

    .line 65
    sget-object v10, Lcom/google/android/gms/internal/measurement/gt;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 66
    invoke-interface {v12, v9}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 68
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->f()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 67
    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->b()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 58
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->f()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    .line 55
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->b()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :pswitch_6
    const/4 v1, 0x0

    if-ne v6, v14, :cond_25

    .line 80
    check-cast v12, Lcom/google/android/gms/internal/measurement/fc;

    .line 81
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    add-int/2addr v4, v2

    :goto_f
    if-ge v2, v4, :cond_23

    .line 82
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v2

    iget-wide v5, v7, Lcom/google/android/gms/internal/measurement/fa;->b:J

    cmp-long v8, v5, v10

    if-eqz v8, :cond_22

    const/4 v5, 0x1

    goto :goto_10

    :cond_22
    const/4 v5, 0x0

    .line 83
    :goto_10
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/fc;->a(Z)V

    goto :goto_f

    :cond_23
    if-ne v2, v4, :cond_24

    :goto_11
    move v1, v2

    goto/16 :goto_27

    .line 84
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_25
    if-nez v6, :cond_46

    .line 85
    check-cast v12, Lcom/google/android/gms/internal/measurement/fc;

    .line 86
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/fa;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_26

    const/4 v6, 0x1

    goto :goto_12

    :cond_26
    const/4 v6, 0x0

    .line 87
    :goto_12
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/fc;->a(Z)V

    :goto_13
    if-ge v4, v5, :cond_29

    .line 88
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-eq v2, v8, :cond_27

    goto :goto_15

    .line 89
    :cond_27
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/fa;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_28

    const/4 v6, 0x1

    goto :goto_14

    :cond_28
    const/4 v6, 0x0

    .line 90
    :goto_14
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/fc;->a(Z)V

    goto :goto_13

    :cond_29
    :goto_15
    return v4

    :pswitch_7
    if-ne v6, v14, :cond_2c

    .line 91
    check-cast v12, Lcom/google/android/gms/internal/measurement/gm;

    .line 92
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    add-int/2addr v2, v1

    :goto_16
    if-ge v1, v2, :cond_2a

    .line 93
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/gm;->d(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_16

    :cond_2a
    if-ne v1, v2, :cond_2b

    goto/16 :goto_27

    .line 94
    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_2c
    if-ne v6, v9, :cond_46

    .line 95
    check-cast v12, Lcom/google/android/gms/internal/measurement/gm;

    .line 96
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/gm;->d(I)V

    :goto_17
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_2e

    .line 97
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-eq v2, v6, :cond_2d

    goto :goto_18

    .line 98
    :cond_2d
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/gm;->d(I)V

    goto :goto_17

    :cond_2e
    :goto_18
    return v1

    :pswitch_8
    if-ne v6, v14, :cond_31

    .line 99
    check-cast v12, Lcom/google/android/gms/internal/measurement/he;

    .line 100
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_2f

    .line 101
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/he;->a(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_19

    :cond_2f
    if-ne v1, v2, :cond_30

    goto/16 :goto_27

    .line 102
    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_31
    if-ne v6, v13, :cond_46

    .line 103
    check-cast v12, Lcom/google/android/gms/internal/measurement/he;

    .line 104
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/he;->a(J)V

    :goto_1a
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_33

    .line 105
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-eq v2, v6, :cond_32

    goto :goto_1b

    .line 106
    :cond_32
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/he;->a(J)V

    goto :goto_1a

    :cond_33
    :goto_1b
    return v1

    :pswitch_9
    if-ne v6, v14, :cond_34

    .line 107
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/gs;Lcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    goto/16 :goto_27

    :cond_34
    if-nez v6, :cond_46

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    .line 108
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/measurement/fb;->a(I[BIILcom/google/android/gms/internal/measurement/gs;Lcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    return v1

    :pswitch_a
    if-ne v6, v14, :cond_37

    .line 109
    check-cast v12, Lcom/google/android/gms/internal/measurement/he;

    .line 110
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    add-int/2addr v2, v1

    :goto_1c
    if-ge v1, v2, :cond_35

    .line 111
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/fa;->b:J

    .line 112
    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/he;->a(J)V

    goto :goto_1c

    :cond_35
    if-ne v1, v2, :cond_36

    goto/16 :goto_27

    .line 113
    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_37
    if-nez v6, :cond_46

    .line 114
    check-cast v12, Lcom/google/android/gms/internal/measurement/he;

    .line 115
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/fa;->b:J

    .line 116
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/he;->a(J)V

    :goto_1d
    if-ge v1, v5, :cond_39

    .line 117
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-eq v2, v6, :cond_38

    goto :goto_1e

    .line 118
    :cond_38
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/fa;->b:J

    .line 119
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/he;->a(J)V

    goto :goto_1d

    :cond_39
    :goto_1e
    return v1

    :pswitch_b
    if-ne v6, v14, :cond_3c

    .line 120
    check-cast v12, Lcom/google/android/gms/internal/measurement/gf;

    .line 121
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_3a

    .line 122
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 123
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/gf;->a(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1f

    :cond_3a
    if-ne v1, v2, :cond_3b

    goto/16 :goto_27

    .line 124
    :cond_3b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_3c
    if-ne v6, v9, :cond_46

    .line 125
    check-cast v12, Lcom/google/android/gms/internal/measurement/gf;

    .line 126
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 127
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/gf;->a(F)V

    :goto_20
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_3e

    .line 128
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-eq v2, v6, :cond_3d

    goto :goto_21

    .line 129
    :cond_3d
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 130
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/gf;->a(F)V

    goto :goto_20

    :cond_3e
    :goto_21
    return v1

    :pswitch_c
    if-ne v6, v14, :cond_41

    .line 131
    check-cast v12, Lcom/google/android/gms/internal/measurement/fv;

    .line 132
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    add-int/2addr v2, v1

    :goto_22
    if-ge v1, v2, :cond_3f

    .line 133
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 134
    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/fv;->a(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_22

    :cond_3f
    if-ne v1, v2, :cond_40

    goto :goto_27

    .line 135
    :cond_40
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->a()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v1

    throw v1

    :cond_41
    if-ne v6, v13, :cond_46

    .line 136
    check-cast v12, Lcom/google/android/gms/internal/measurement/fv;

    .line 137
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 138
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/fv;->a(D)V

    :goto_23
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_43

    .line 139
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-eq v2, v6, :cond_42

    goto :goto_24

    .line 140
    :cond_42
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 141
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/fv;->a(D)V

    goto :goto_23

    :cond_43
    :goto_24
    return v1

    :goto_25
    if-ge v4, v5, :cond_45

    .line 9
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/measurement/fa;->a:I

    if-eq v2, v9, :cond_44

    goto :goto_26

    :cond_44
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 10
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/fb;->a(Lcom/google/android/gms/internal/measurement/ia;[BIIILcom/google/android/gms/internal/measurement/fa;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 11
    invoke-interface {v12, v8}, Lcom/google/android/gms/internal/measurement/gs;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_45
    :goto_26
    return v4

    :cond_46
    move v1, v4

    :goto_27
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Lcom/google/android/gms/internal/measurement/hl;Lcom/google/android/gms/internal/measurement/hu;Lcom/google/android/gms/internal/measurement/hd;Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/hj;)Lcom/google/android/gms/internal/measurement/hr;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/hl;",
            "Lcom/google/android/gms/internal/measurement/hu;",
            "Lcom/google/android/gms/internal/measurement/hd;",
            "Lcom/google/android/gms/internal/measurement/im<",
            "**>;",
            "Lcom/google/android/gms/internal/measurement/fz<",
            "*>;",
            "Lcom/google/android/gms/internal/measurement/hj;",
            ")",
            "Lcom/google/android/gms/internal/measurement/hr<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/hz;

    if-eqz v1, :cond_33

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/hz;

    .line 4001
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/hz;->c()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 5000
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/hz;->b:Ljava/lang/String;

    .line 4003
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 4004
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    .line 4005
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 4006
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    .line 4007
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_4
    if-nez v7, :cond_5

    sget-object v7, Lcom/google/android/gms/internal/measurement/hr;->a:[I

    move-object v14, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v7, v5, 0x1

    .line 4008
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v7, 0x1

    .line 4009
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_3

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7
    add-int/lit8 v9, v7, 0x1

    .line 4010
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    .line 4011
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9
    add-int/lit8 v10, v9, 0x1

    .line 4012
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    .line 4013
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_b
    add-int/lit8 v12, v10, 0x1

    .line 4014
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 4015
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    .line 4016
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 4017
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    .line 4018
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 4019
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    .line 4020
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 4021
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    .line 4022
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    .line 4023
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_14
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v17

    :cond_15
    add-int v3, v15, v13

    add-int/2addr v3, v14

    .line 4024
    new-array v3, v3, [I

    add-int v14, v5, v5

    add-int/2addr v14, v7

    move v7, v13

    move v13, v10

    move v10, v14

    move-object v14, v3

    move v3, v5

    move/from16 v5, v16

    .line 4007
    :goto_b
    sget-object v8, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    .line 6000
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/hz;->c:[Ljava/lang/Object;

    .line 7000
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/hz;->a:Lcom/google/android/gms/internal/measurement/ho;

    .line 4026
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v19, v5

    mul-int/lit8 v5, v12, 0x3

    .line 4027
    new-array v5, v5, [I

    add-int/2addr v12, v12

    .line 4028
    new-array v12, v12, [Ljava/lang/Object;

    add-int v20, v15, v7

    move/from16 v22, v15

    move/from16 v7, v19

    move/from16 v23, v20

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_c
    if-ge v7, v2, :cond_32

    add-int/lit8 v24, v7, 0x1

    .line 4029
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v7, v2, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v2, v24

    const/16 v24, 0xd

    :goto_d
    add-int/lit8 v26, v2, 0x1

    .line 4030
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v7, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v2, v26

    move/from16 v15, v27

    goto :goto_d

    :cond_16
    shl-int v2, v2, v24

    or-int/2addr v7, v2

    move/from16 v2, v26

    goto :goto_e

    :cond_17
    move/from16 v27, v15

    move/from16 v2, v24

    :goto_e
    add-int/lit8 v15, v2, 0x1

    .line 4031
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v2, v15, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_f
    add-int/lit8 v26, v15, 0x1

    .line 4032
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v13

    const v13, 0xd800

    if-lt v15, v13, :cond_18

    and-int/lit16 v13, v15, 0x1fff

    shl-int v13, v13, v24

    or-int/2addr v2, v13

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v13, v28

    goto :goto_f

    :cond_18
    shl-int v13, v15, v24

    or-int/2addr v2, v13

    move/from16 v15, v26

    goto :goto_10

    :cond_19
    move/from16 v28, v13

    move/from16 v15, v24

    :goto_10
    and-int/lit16 v13, v2, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v21, 0x1

    .line 4033
    aput v19, v14, v21

    move/from16 v21, v9

    :cond_1a
    const/16 v9, 0x33

    if-lt v13, v9, :cond_22

    add-int/lit8 v9, v15, 0x1

    .line 4034
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v26, v9

    const v9, 0xd800

    if-lt v15, v9, :cond_1c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    move/from16 v34, v26

    move/from16 v26, v15

    move/from16 v15, v34

    :goto_11
    add-int/lit8 v33, v15, 0x1

    .line 4035
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v9, :cond_1b

    and-int/lit16 v9, v15, 0x1fff

    shl-int v9, v9, v32

    or-int v26, v26, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v15, v33

    const v9, 0xd800

    goto :goto_11

    :cond_1b
    shl-int v9, v15, v32

    or-int v15, v26, v9

    move/from16 v9, v33

    goto :goto_12

    :cond_1c
    move/from16 v9, v26

    :goto_12
    move/from16 v26, v9

    add-int/lit8 v9, v13, -0x33

    move-object/from16 v32, v0

    const/16 v0, 0x9

    if-eq v9, v0, :cond_1e

    const/16 v0, 0x11

    if-ne v9, v0, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v0, 0xc

    if-ne v9, v0, :cond_1f

    if-nez v11, :cond_1f

    :cond_1e
    :goto_13
    div-int/lit8 v0, v19, 0x3

    add-int/lit8 v9, v10, 0x1

    add-int/2addr v0, v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 4036
    aget-object v10, v4, v10

    aput-object v10, v12, v0

    move v10, v9

    :cond_1f
    add-int/2addr v15, v15

    .line 4038
    aget-object v0, v4, v15

    .line 4039
    instance-of v9, v0, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_20

    .line 4040
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_14

    .line 4041
    :cond_20
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4042
    aput-object v0, v4, v15

    :goto_14
    move/from16 v29, v10

    .line 4043
    invoke-virtual {v8, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v0, v9

    add-int/lit8 v15, v15, 0x1

    .line 4044
    aget-object v9, v4, v15

    .line 4045
    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    .line 4046
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 4047
    :cond_21
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 4048
    aput-object v9, v4, v15

    .line 4049
    :goto_15
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    move-object/from16 v31, v1

    move/from16 v15, v26

    move/from16 v30, v29

    const/4 v9, 0x0

    const/16 v17, 0x1

    move/from16 v29, v10

    move v10, v0

    const v0, 0xd800

    goto/16 :goto_20

    :cond_22
    move-object/from16 v32, v0

    add-int/lit8 v0, v10, 0x1

    .line 4050
    aget-object v9, v4, v10

    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/16 v10, 0x9

    if-eq v13, v10, :cond_2a

    const/16 v10, 0x11

    if-ne v13, v10, :cond_23

    goto :goto_1a

    :cond_23
    const/16 v10, 0x1b

    if-eq v13, v10, :cond_29

    const/16 v10, 0x31

    if-ne v13, v10, :cond_24

    goto :goto_18

    :cond_24
    const/16 v10, 0xc

    if-eq v13, v10, :cond_28

    const/16 v10, 0x1e

    if-eq v13, v10, :cond_28

    const/16 v10, 0x2c

    if-ne v13, v10, :cond_25

    goto :goto_17

    :cond_25
    const/16 v10, 0x32

    if-ne v13, v10, :cond_27

    add-int/lit8 v10, v22, 0x1

    .line 4054
    aput v19, v14, v22

    div-int/lit8 v22, v19, 0x3

    add-int v22, v22, v22

    add-int/lit8 v29, v0, 0x1

    .line 4055
    aget-object v0, v4, v0

    aput-object v0, v12, v22

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_26

    add-int/lit8 v0, v29, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 4056
    aget-object v29, v4, v29

    aput-object v29, v12, v22

    move/from16 v22, v10

    goto :goto_16

    :cond_26
    move/from16 v22, v10

    move/from16 v0, v29

    :cond_27
    :goto_16
    const/16 v17, 0x1

    goto :goto_1b

    :cond_28
    :goto_17
    if-nez v11, :cond_27

    .line 4052
    div-int/lit8 v10, v19, 0x3

    add-int/lit8 v29, v0, 0x1

    add-int/2addr v10, v10

    const/16 v17, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 4053
    aget-object v0, v4, v0

    aput-object v0, v12, v10

    goto :goto_19

    :cond_29
    :goto_18
    const/16 v17, 0x1

    .line 4064
    div-int/lit8 v10, v19, 0x3

    add-int/lit8 v29, v0, 0x1

    add-int/2addr v10, v10

    add-int/lit8 v10, v10, 0x1

    .line 4052
    aget-object v0, v4, v0

    aput-object v0, v12, v10

    :goto_19
    move/from16 v0, v29

    goto :goto_1b

    :cond_2a
    :goto_1a
    const/16 v17, 0x1

    .line 4050
    div-int/lit8 v10, v19, 0x3

    add-int/2addr v10, v10

    add-int/lit8 v10, v10, 0x1

    .line 4051
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v29

    aput-object v29, v12, v10

    .line 4057
    :goto_1b
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    and-int/lit16 v9, v2, 0x1000

    const v29, 0xfffff

    move/from16 v30, v0

    const/16 v0, 0x1000

    if-ne v9, v0, :cond_2e

    const/16 v0, 0x11

    if-gt v13, v0, :cond_2e

    add-int/lit8 v0, v15, 0x1

    .line 4058
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v15, 0xd800

    if-lt v9, v15, :cond_2c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v18, 0xd

    :goto_1c
    add-int/lit8 v29, v0, 0x1

    .line 4059
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v15, :cond_2b

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v18

    or-int/2addr v9, v0

    add-int/lit8 v18, v18, 0xd

    move/from16 v0, v29

    goto :goto_1c

    :cond_2b
    shl-int v0, v0, v18

    or-int/2addr v9, v0

    goto :goto_1d

    :cond_2c
    move/from16 v29, v0

    :goto_1d
    add-int v0, v3, v3

    div-int/lit8 v18, v9, 0x20

    add-int v0, v0, v18

    .line 4060
    aget-object v15, v4, v0

    move-object/from16 v31, v1

    .line 4061
    instance-of v1, v15, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2d

    .line 4062
    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_1e

    .line 4063
    :cond_2d
    check-cast v15, Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 4064
    aput-object v15, v4, v0

    .line 4065
    :goto_1e
    invoke-virtual {v8, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit8 v9, v9, 0x20

    move/from16 v15, v29

    const v0, 0xd800

    move/from16 v29, v1

    goto :goto_1f

    :cond_2e
    move-object/from16 v31, v1

    const v0, 0xd800

    const/4 v9, 0x0

    :goto_1f
    const/16 v1, 0x12

    if-lt v13, v1, :cond_2f

    const/16 v1, 0x31

    if-gt v13, v1, :cond_2f

    add-int/lit8 v1, v23, 0x1

    .line 4066
    aput v10, v14, v23

    move/from16 v23, v1

    :cond_2f
    :goto_20
    add-int/lit8 v1, v19, 0x1

    .line 4067
    aput v7, v5, v19

    add-int/lit8 v7, v1, 0x1

    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_30

    const/high16 v0, 0x20000000

    goto :goto_21

    :cond_30
    const/4 v0, 0x0

    :goto_21
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_31

    const/high16 v2, 0x10000000

    goto :goto_22

    :cond_31
    const/4 v2, 0x0

    :goto_22
    or-int/2addr v0, v2

    shl-int/lit8 v2, v13, 0x14

    or-int/2addr v0, v2

    or-int/2addr v0, v10

    .line 4068
    aput v0, v5, v1

    add-int/lit8 v19, v7, 0x1

    shl-int/lit8 v0, v9, 0x14

    or-int v0, v0, v29

    .line 4069
    aput v0, v5, v7

    move v7, v15

    move/from16 v9, v24

    move/from16 v2, v25

    move/from16 v15, v27

    move/from16 v13, v28

    move/from16 v10, v30

    move-object/from16 v1, v31

    move-object/from16 v0, v32

    goto/16 :goto_c

    :cond_32
    move-object/from16 v32, v0

    move/from16 v24, v9

    move/from16 v28, v13

    move/from16 v27, v15

    .line 4056
    new-instance v0, Lcom/google/android/gms/internal/measurement/hr;

    move-object v1, v5

    move-object v5, v0

    move-object/from16 v2, v32

    .line 8000
    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/hz;->a:Lcom/google/android/gms/internal/measurement/ho;

    const/4 v2, 0x0

    move-object v3, v12

    move v12, v2

    const/16 v21, 0x0

    move-object v6, v1

    move-object v7, v3

    move/from16 v8, v24

    move/from16 v9, v28

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v20

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 4070
    invoke-direct/range {v5 .. v21}, Lcom/google/android/gms/internal/measurement/hr;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/ho;ZZ[IIILcom/google/android/gms/internal/measurement/hu;Lcom/google/android/gms/internal/measurement/hd;Lcom/google/android/gms/internal/measurement/im;Lcom/google/android/gms/internal/measurement/fz;Lcom/google/android/gms/internal/measurement/hj;[B)V

    return-object v0

    :cond_33
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method private final a(I)Lcom/google/android/gms/internal/measurement/ia;
    .locals 3

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->d:[Ljava/lang/Object;

    .line 1
    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/ia;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/hx;->a()Lcom/google/android/gms/internal/measurement/hx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/hr;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/hx;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/hr;->d:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/ft;->a(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/fm;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/ft;->a(ILcom/google/android/gms/internal/measurement/fm;)V

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/measurement/gt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    return-void

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 5
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method private final a(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/hr;->e(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v4

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v5

    :cond_1
    return v4

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v4

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v4

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v5

    :cond_5
    return v4

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v4

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/measurement/fm;->b:Lcom/google/android/gms/internal/measurement/fm;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/fm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v4

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v4

    .line 15
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/fm;

    if-eqz p2, :cond_c

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/measurement/fm;->b:Lcom/google/android/gms/internal/measurement/fm;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/fm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v4

    .line 27
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 18
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 19
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v5

    :cond_d
    return v4

    .line 20
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v5

    :cond_e
    return v4

    .line 21
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v5

    :cond_f
    return v4

    .line 22
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v5

    :cond_10
    return v4

    .line 23
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v5

    :cond_11
    return v4

    .line 24
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v5

    :cond_12
    return v4

    .line 25
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_13

    return v5

    :cond_13
    return v4

    .line 27
    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v5

    :cond_15
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/hr;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final a(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/ia;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/measurement/ia;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final b(II)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 1
    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final b(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 1
    aget-object p1, v0, p1

    return-object p1
.end method

.method private final b(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/hr;->e(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/hr;->e(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 2
    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 3
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/measurement/gt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;II)V

    return-void

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 7
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;II)V

    :cond_4
    return-void
.end method

.method private static c(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final c(I)Lcom/google/android/gms/internal/measurement/gp;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 1
    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/gp;

    return-object p1
.end method

.method private final c(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/hr;->b(I)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final d(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    add-int/lit8 p1, p1, 0x1

    .line 1
    aget p1, v0, p1

    return p1
.end method

.method private static d(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final e(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    add-int/lit8 p1, p1, 0x2

    .line 1
    aget p1, v0, p1

    return p1
.end method

.method private static e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/in;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/gl;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gl;->zzc:Lcom/google/android/gms/internal/measurement/in;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->a()Lcom/google/android/gms/internal/measurement/in;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Lcom/google/android/gms/internal/measurement/in;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/gl;->zzc:Lcom/google/android/gms/internal/measurement/in;

    :cond_0
    return-object v0
.end method

.method private static e(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static f(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final g(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/hr;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/hr;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 2
    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 4
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 7
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 11
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->e(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/gt;->a(Z)I

    move-result v3

    goto/16 :goto_2

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 28
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 30
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 32
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 34
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto/16 :goto_2

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 43
    :pswitch_14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 52
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 54
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/gt;->a(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 63
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/gt;->a(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    .line 64
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/hr;->h:Z

    if-nez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    .line 65
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/fa;)I
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/measurement/fa;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_1d

    add-int/lit8 v1, v0, 0x1

    .line 1
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 2
    invoke-static {v0, v12, v1, v9}, Lcom/google/android/gms/internal/measurement/fb;->a(I[BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/fa;->a:I

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v2, :cond_1

    div-int/2addr v3, v8

    .line 3
    invoke-direct {v15, v0, v3}, Lcom/google/android/gms/internal/measurement/hr;->a(II)I

    move-result v2

    goto :goto_2

    .line 4
    :cond_1
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/measurement/hr;->g(I)I

    move-result v2

    :goto_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move/from16 p3, v0

    move v2, v1

    move v8, v4

    move/from16 v20, v5

    move-object/from16 v26, v10

    move v7, v11

    move-object v14, v15

    const/4 v10, 0x0

    const/16 v25, -0x1

    goto/16 :goto_11

    .line 59
    :cond_2
    iget-object v3, v15, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    add-int/lit8 v20, v2, 0x1

    .line 5
    aget v3, v3, v20

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result v8

    move/from16 v20, v0

    const v18, 0xfffff

    and-int v0, v3, v18

    move/from16 v22, v3

    move/from16 v21, v4

    int-to-long v3, v0

    const/16 v0, 0x11

    if-gt v8, v0, :cond_e

    iget-object v0, v15, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    add-int/lit8 v23, v2, 0x2

    .line 6
    aget v0, v0, v23

    ushr-int/lit8 v23, v0, 0x14

    const/4 v11, 0x1

    shl-int v23, v11, v23

    const v11, 0xfffff

    and-int/2addr v0, v11

    if-eq v0, v6, :cond_4

    if-eq v6, v11, :cond_3

    int-to-long v11, v6

    .line 7
    invoke-virtual {v10, v14, v11, v12, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_3
    int-to-long v5, v0

    .line 8
    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v11, v0

    goto :goto_3

    :cond_4
    move v11, v6

    :goto_3
    move v6, v5

    const/4 v0, 0x5

    packed-switch v8, :pswitch_data_0

    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x3

    const/16 v19, -0x1

    move v2, v1

    if-ne v7, v0, :cond_d

    .line 9
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    shl-int/lit8 v1, v20, 0x3

    or-int/lit8 v5, v1, 0x4

    move-object/from16 v1, p2

    move-wide v12, v3

    move/from16 v3, p4

    move v4, v5

    move-object/from16 v5, p6

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/fb;->a(Lcom/google/android/gms/internal/measurement/ia;[BIIILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_c

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 11
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_0
    if-nez v7, :cond_5

    move-object/from16 v12, p2

    .line 15
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v7

    iget-wide v0, v9, Lcom/google/android/gms/internal/measurement/fa;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/fp;->a(J)J

    move-result-wide v24

    move/from16 v8, v20

    move-object v0, v10

    move-object/from16 v1, p1

    move v5, v2

    const/16 v19, -0x1

    move-wide v2, v3

    move/from16 p3, v11

    move/from16 v11, v21

    move v8, v5

    move-wide/from16 v4, v24

    .line 16
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_8

    :cond_5
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    goto/16 :goto_7

    :pswitch_1
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-nez v7, :cond_b

    .line 17
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/fa;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/fp;->a(I)I

    move-result v1

    .line 18
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_2
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-nez v7, :cond_b

    .line 19
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/fa;->a:I

    .line 20
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/hr;->c(I)Lcom/google/android/gms/internal/measurement/gp;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 21
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/gp;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 23
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/hr;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/in;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Lcom/google/android/gms/internal/measurement/in;->a(ILjava/lang/Object;)V

    move v5, v6

    move v3, v8

    move v1, v11

    move/from16 v2, v20

    move/from16 v6, p3

    goto/16 :goto_e

    .line 22
    :cond_7
    :goto_4
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_3
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x2

    const/16 v19, -0x1

    if-ne v7, v0, :cond_b

    .line 24
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/fb;->e([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 25
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_4
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x2

    const/16 v19, -0x1

    if-ne v7, v0, :cond_b

    .line 26
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    .line 27
    invoke-static {v0, v12, v1, v13, v9}, Lcom/google/android/gms/internal/measurement/fb;->a(Lcom/google/android/gms/internal/measurement/ia;[BIILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    and-int v1, v6, v23

    if-nez v1, :cond_8

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 28
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    .line 29
    :cond_8
    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 30
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/gt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x2

    const/16 v19, -0x1

    if-ne v7, v0, :cond_b

    const/high16 v0, 0x20000000

    and-int v0, v22, v0

    if-nez v0, :cond_9

    .line 32
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/fb;->c([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    goto :goto_5

    .line 33
    :cond_9
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/fb;->d([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    .line 32
    :goto_5
    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 34
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_6
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-nez v7, :cond_b

    .line 35
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/measurement/fa;->b:J

    const-wide/16 v21, 0x0

    cmp-long v5, v1, v21

    if-eqz v5, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    .line 36
    :goto_6
    invoke-static {v14, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JZ)V

    goto/16 :goto_9

    :pswitch_7
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    if-ne v7, v0, :cond_b

    .line 37
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v1, 0x4

    goto/16 :goto_9

    :pswitch_8
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x1

    const/16 v19, -0x1

    if-ne v7, v0, :cond_b

    .line 38
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v21

    move-object v0, v10

    move v7, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v21

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_9

    :cond_b
    :goto_7
    move v2, v1

    goto/16 :goto_c

    :pswitch_9
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    move v2, v1

    if-nez v7, :cond_d

    .line 39
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/measurement/fa;->a:I

    .line 40
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_a
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    move v2, v1

    if-nez v7, :cond_d

    .line 41
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v7

    iget-wide v1, v9, Lcom/google/android/gms/internal/measurement/fa;->b:J

    move-object v0, v10

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v21

    .line 42
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_8
    or-int v5, v6, v23

    move/from16 v6, p3

    move v0, v7

    goto :goto_a

    :pswitch_b
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/16 v19, -0x1

    move v2, v1

    if-ne v7, v0, :cond_d

    .line 43
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 44
    invoke-static {v14, v3, v4, v0}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v2, 0x4

    goto :goto_9

    :pswitch_c
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v21

    const/4 v0, 0x1

    const/16 v19, -0x1

    move v2, v1

    if-ne v7, v0, :cond_d

    .line 45
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 46
    invoke-static {v14, v3, v4, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v2, 0x8

    :goto_9
    or-int v5, v6, v23

    move/from16 v6, p3

    :goto_a
    move v3, v8

    move v1, v11

    move/from16 v2, v20

    goto/16 :goto_e

    .line 12
    :cond_c
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/gt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_b
    or-int v5, v6, v23

    move-object/from16 v12, p2

    move/from16 v6, p3

    move/from16 v13, p4

    goto :goto_a

    :cond_d
    :goto_c
    move/from16 v7, p5

    move-object/from16 v26, v10

    move-object v14, v15

    const/16 v25, -0x1

    move v10, v8

    move v8, v11

    move/from16 v27, v6

    move/from16 v6, p3

    move/from16 p3, v20

    move/from16 v20, v27

    goto/16 :goto_11

    :cond_e
    move-wide v12, v3

    move v3, v8

    move/from16 v4, v20

    move/from16 v11, v21

    const/16 v19, -0x1

    move v8, v2

    move v2, v1

    const/16 v0, 0x1b

    if-ne v3, v0, :cond_12

    const/4 v0, 0x2

    if-ne v7, v0, :cond_11

    .line 47
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/gs;

    .line 48
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->a()Z

    move-result v1

    if-nez v1, :cond_10

    .line 49
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->size()I

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xa

    goto :goto_d

    :cond_f
    add-int/2addr v1, v1

    .line 50
    :goto_d
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/gs;->a(I)Lcom/google/android/gms/internal/measurement/gs;

    move-result-object v0

    .line 51
    invoke-virtual {v10, v14, v12, v13, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_10
    move-object v7, v0

    .line 52
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    move v1, v11

    move v3, v2

    move-object/from16 v2, p2

    move v12, v4

    move/from16 v4, p4

    move/from16 v20, v5

    move-object v5, v7

    move/from16 v21, v6

    move-object/from16 v6, p6

    .line 53
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/fb;->a(Lcom/google/android/gms/internal/measurement/ia;I[BIILcom/google/android/gms/internal/measurement/gs;Lcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    move/from16 v13, p4

    move v3, v8

    move v2, v12

    move/from16 v5, v20

    move/from16 v6, v21

    move-object/from16 v12, p2

    :goto_e
    move/from16 v11, p5

    goto/16 :goto_0

    :cond_11
    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 p3, v4

    move-object/from16 v26, v10

    move/from16 v22, v11

    const/16 v25, -0x1

    move v11, v2

    move v10, v8

    move-object/from16 v27, v15

    move-object v15, v14

    move-object/from16 v14, v27

    goto/16 :goto_f

    :cond_12
    move/from16 v20, v5

    move/from16 v21, v6

    move v5, v2

    move v6, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_15

    move/from16 v4, v22

    int-to-long v1, v4

    move-object/from16 v0, p0

    move-wide/from16 v22, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v24, v3

    move v3, v5

    move/from16 v4, p4

    move v15, v5

    move v5, v11

    move/from16 p3, v6

    move/from16 v18, v8

    move/from16 v19, v24

    const/16 v25, -0x1

    move-object/from16 v26, v10

    move-wide/from16 v9, v22

    move/from16 v22, v11

    move/from16 v11, v19

    move-object/from16 v14, p6

    .line 54
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    if-eq v0, v15, :cond_13

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v18

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v1, v22

    move-object/from16 v10, v26

    goto/16 :goto_0

    :cond_13
    move-object/from16 v14, p0

    :cond_14
    move/from16 v7, p5

    move v2, v0

    move/from16 v10, v18

    goto :goto_10

    :cond_15
    move/from16 v19, v3

    move v15, v5

    move/from16 p3, v6

    move/from16 v18, v8

    move-object/from16 v26, v10

    move/from16 v4, v22

    const/16 v25, -0x1

    move/from16 v22, v11

    const/16 v0, 0x32

    move/from16 v9, v19

    if-ne v9, v0, :cond_18

    const/4 v0, 0x2

    if-ne v7, v0, :cond_17

    move-object/from16 v14, p0

    move v11, v15

    move/from16 v10, v18

    move-object/from16 v15, p1

    .line 55
    invoke-direct {v14, v15, v10, v12, v13}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;IJ)I

    move-result v0

    if-eq v0, v11, :cond_16

    move-object/from16 v12, p2

    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move v3, v10

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v1, v22

    move-object/from16 v10, v26

    move-object/from16 v27, v15

    move-object v15, v14

    move-object/from16 v14, v27

    goto/16 :goto_0

    :cond_16
    move/from16 v7, p5

    move v2, v0

    goto :goto_10

    :cond_17
    move-object/from16 v14, p0

    move v11, v15

    move/from16 v10, v18

    move-object/from16 v15, p1

    :goto_f
    move/from16 v7, p5

    move v2, v11

    :goto_10
    move/from16 v6, v21

    move/from16 v8, v22

    goto :goto_11

    :cond_18
    move-object/from16 v14, p0

    move v11, v15

    move/from16 v10, v18

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v4

    move v3, v11

    move/from16 v4, p4

    move/from16 v5, v22

    move/from16 v6, p3

    move v15, v11

    move-wide v10, v12

    move/from16 v12, v18

    move-object/from16 v13, p6

    .line 56
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    if-eq v0, v15, :cond_14

    move-object/from16 v12, p2

    move/from16 v2, p3

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move-object v15, v14

    move/from16 v3, v18

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v1, v22

    move-object/from16 v10, v26

    move-object/from16 v14, p1

    goto/16 :goto_0

    :goto_11
    if-ne v8, v7, :cond_19

    if-eqz v7, :cond_19

    move v0, v2

    move v1, v8

    move/from16 v5, v20

    goto/16 :goto_14

    .line 73
    :cond_19
    iget-boolean v0, v14, Lcom/google/android/gms/internal/measurement/hr;->h:Z

    if-eqz v0, :cond_1c

    move-object/from16 v9, p6

    iget-object v0, v9, Lcom/google/android/gms/internal/measurement/fa;->d:Lcom/google/android/gms/internal/measurement/fy;

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fy;->a()Lcom/google/android/gms/internal/measurement/fy;

    move-result-object v1

    if-eq v0, v1, :cond_1b

    iget-object v0, v14, Lcom/google/android/gms/internal/measurement/hr;->g:Lcom/google/android/gms/internal/measurement/ho;

    iget-object v1, v9, Lcom/google/android/gms/internal/measurement/fa;->d:Lcom/google/android/gms/internal/measurement/fy;

    move/from16 v11, p3

    .line 60
    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/measurement/fy;->a(Lcom/google/android/gms/internal/measurement/ho;I)Lcom/google/android/gms/internal/measurement/gk;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 61
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/hr;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/in;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/fb;->a(I[BIILcom/google/android/gms/internal/measurement/in;Lcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    goto :goto_13

    .line 74
    :cond_1a
    throw v17

    :cond_1b
    move/from16 v11, p3

    goto :goto_12

    :cond_1c
    move/from16 v11, p3

    move-object/from16 v9, p6

    .line 58
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/hr;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/in;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/fb;->a(I[BIILcom/google/android/gms/internal/measurement/in;Lcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    :goto_13
    move-object/from16 v12, p2

    move/from16 v13, p4

    move v1, v8

    move v3, v10

    move v2, v11

    move-object v15, v14

    move/from16 v5, v20

    move-object/from16 v10, v26

    move-object/from16 v14, p1

    move v11, v7

    goto/16 :goto_0

    :cond_1d
    move/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v26, v10

    move v7, v11

    move-object v14, v15

    :goto_14
    const v2, 0xfffff

    if-eq v6, v2, :cond_1e

    int-to-long v3, v6

    move-object/from16 v6, p1

    move-object/from16 v8, v26

    .line 63
    invoke-virtual {v8, v6, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_15

    :cond_1e
    move-object/from16 v6, p1

    :goto_15
    iget v3, v14, Lcom/google/android/gms/internal/measurement/hr;->k:I

    :goto_16
    iget v4, v14, Lcom/google/android/gms/internal/measurement/hr;->l:I

    if-ge v3, v4, :cond_21

    iget-object v4, v14, Lcom/google/android/gms/internal/measurement/hr;->j:[I

    .line 64
    aget v4, v4, v3

    .line 66
    invoke-direct {v14, v4}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v5

    and-int/2addr v5, v2

    int-to-long v8, v5

    .line 67
    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1f

    goto :goto_17

    .line 68
    :cond_1f
    invoke-direct {v14, v4}, Lcom/google/android/gms/internal/measurement/hr;->c(I)Lcom/google/android/gms/internal/measurement/gp;

    move-result-object v5

    if-nez v5, :cond_20

    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 70
    :cond_20
    invoke-direct {v14, v4}, Lcom/google/android/gms/internal/measurement/hr;->b(I)Ljava/lang/Object;

    .line 71
    throw v17

    :cond_21
    if-nez v7, :cond_23

    move/from16 v2, p4

    if-ne v0, v2, :cond_22

    goto :goto_18

    .line 72
    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->e()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    throw v0

    :cond_23
    move/from16 v2, p4

    if-gt v0, v2, :cond_24

    if-ne v1, v7, :cond_24

    :goto_18
    return v0

    .line 73
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->e()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->g:Lcom/google/android/gms/internal/measurement/ho;

    check-cast v0, Lcom/google/android/gms/internal/measurement/gl;

    const/4 v1, 0x4

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/gl;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/ft;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/hr;->i:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0xfffff

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/hr;->h:Z

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    array-length v3, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 1
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v8

    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 2
    aget v9, v9, v4

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    .line 102
    :pswitch_0
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 103
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 104
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v10

    .line 105
    invoke-virtual {v2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/ft;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_1

    .line 106
    :pswitch_1
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 107
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->e(IJ)V

    goto/16 :goto_1

    .line 108
    :pswitch_2
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 109
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->f(II)V

    goto/16 :goto_1

    .line 110
    :pswitch_3
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 111
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->b(IJ)V

    goto/16 :goto_1

    .line 112
    :pswitch_4
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 113
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->a(II)V

    goto/16 :goto_1

    .line 114
    :pswitch_5
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 115
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->b(II)V

    goto/16 :goto_1

    .line 116
    :pswitch_6
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 117
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->e(II)V

    goto/16 :goto_1

    .line 118
    :pswitch_7
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 119
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/fm;

    .line 120
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->a(ILcom/google/android/gms/internal/measurement/fm;)V

    goto/16 :goto_1

    .line 121
    :pswitch_8
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 122
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 123
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v10

    invoke-virtual {v2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/ft;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_1

    .line 124
    :pswitch_9
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 125
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V

    goto/16 :goto_1

    .line 126
    :pswitch_a
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 127
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->e(Ljava/lang/Object;J)Z

    move-result v8

    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->a(IZ)V

    goto/16 :goto_1

    .line 128
    :pswitch_b
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 129
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->d(II)V

    goto/16 :goto_1

    .line 130
    :pswitch_c
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 131
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->d(IJ)V

    goto/16 :goto_1

    .line 132
    :pswitch_d
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 133
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->c(II)V

    goto/16 :goto_1

    .line 134
    :pswitch_e
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 135
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->c(IJ)V

    goto/16 :goto_1

    .line 136
    :pswitch_f
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 137
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->a(IJ)V

    goto/16 :goto_1

    .line 138
    :pswitch_10
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 139
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;J)F

    move-result v8

    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->a(IF)V

    goto/16 :goto_1

    .line 140
    :pswitch_11
    invoke-direct {v0, v1, v9, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 141
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->a(ID)V

    goto/16 :goto_1

    :pswitch_12
    and-int/2addr v8, v7

    int-to-long v8, v8

    .line 101
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v8, v4}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 96
    :pswitch_13
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 97
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 98
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 99
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v10

    .line 100
    invoke-static {v9, v8, v2, v10}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_1

    .line 93
    :pswitch_14
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 94
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 95
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 96
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 90
    :pswitch_15
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 91
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 92
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 93
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 87
    :pswitch_16
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 88
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 89
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 90
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 84
    :pswitch_17
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 85
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 86
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 87
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 81
    :pswitch_18
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 82
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 83
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 84
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 78
    :pswitch_19
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 79
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 80
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 81
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 75
    :pswitch_1a
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 76
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 77
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 78
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 72
    :pswitch_1b
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 73
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 74
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 75
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 69
    :pswitch_1c
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 70
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 71
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 72
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 66
    :pswitch_1d
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 67
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 68
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 69
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 63
    :pswitch_1e
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 64
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 65
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 66
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 60
    :pswitch_1f
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 61
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 62
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 63
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 57
    :pswitch_20
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 58
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 59
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 60
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 54
    :pswitch_21
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 55
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 56
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 57
    invoke-static {v9, v8, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 51
    :pswitch_22
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 52
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 53
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 54
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 48
    :pswitch_23
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 49
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 50
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 51
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 45
    :pswitch_24
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 46
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 47
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 48
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 42
    :pswitch_25
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 43
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 44
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 45
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 39
    :pswitch_26
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 40
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 41
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 42
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 36
    :pswitch_27
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 37
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 38
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 39
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 33
    :pswitch_28
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 34
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 35
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 36
    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;)V

    goto/16 :goto_1

    .line 29
    :pswitch_29
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 30
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 31
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 32
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v10

    .line 33
    invoke-static {v9, v8, v2, v10}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_1

    .line 26
    :pswitch_2a
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 27
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 28
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 29
    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;)V

    goto/16 :goto_1

    .line 23
    :pswitch_2b
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 24
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 25
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 26
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 20
    :pswitch_2c
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 21
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 22
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 23
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 17
    :pswitch_2d
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 18
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 19
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 20
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 14
    :pswitch_2e
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 15
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 16
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 17
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 11
    :pswitch_2f
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 12
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 13
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 14
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 8
    :pswitch_30
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 9
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 10
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 11
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 5
    :pswitch_31
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 6
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 7
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 8
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 2
    :pswitch_32
    iget-object v9, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 3
    aget v9, v9, v4

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 4
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 5
    invoke-static {v9, v8, v2, v6}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_1

    .line 142
    :pswitch_33
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 143
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 144
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v10

    .line 145
    invoke-virtual {v2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/ft;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_1

    .line 146
    :pswitch_34
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 147
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 148
    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->e(IJ)V

    goto/16 :goto_1

    .line 149
    :pswitch_35
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 150
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 151
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->f(II)V

    goto/16 :goto_1

    .line 152
    :pswitch_36
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 153
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 154
    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->b(IJ)V

    goto/16 :goto_1

    .line 155
    :pswitch_37
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 156
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 157
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->a(II)V

    goto/16 :goto_1

    .line 158
    :pswitch_38
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 159
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 160
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->b(II)V

    goto/16 :goto_1

    .line 161
    :pswitch_39
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 162
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 163
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->e(II)V

    goto/16 :goto_1

    .line 164
    :pswitch_3a
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 165
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/fm;

    .line 166
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->a(ILcom/google/android/gms/internal/measurement/fm;)V

    goto/16 :goto_1

    .line 167
    :pswitch_3b
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 168
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 169
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v10

    invoke-virtual {v2, v9, v8, v10}, Lcom/google/android/gms/internal/measurement/ft;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_1

    .line 170
    :pswitch_3c
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 171
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, v2}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V

    goto/16 :goto_1

    .line 172
    :pswitch_3d
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 173
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->c(Ljava/lang/Object;J)Z

    move-result v8

    .line 174
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->a(IZ)V

    goto/16 :goto_1

    .line 175
    :pswitch_3e
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 176
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 177
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->d(II)V

    goto :goto_1

    .line 178
    :pswitch_3f
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 179
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 180
    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->d(IJ)V

    goto :goto_1

    .line 181
    :pswitch_40
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 182
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 183
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->c(II)V

    goto :goto_1

    .line 184
    :pswitch_41
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 185
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 186
    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->c(IJ)V

    goto :goto_1

    .line 187
    :pswitch_42
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 188
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 189
    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->a(IJ)V

    goto :goto_1

    .line 190
    :pswitch_43
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 191
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->d(Ljava/lang/Object;J)F

    move-result v8

    .line 192
    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/internal/measurement/ft;->a(IF)V

    goto :goto_1

    .line 193
    :pswitch_44
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_0

    and-int/2addr v8, v7

    int-to-long v10, v8

    .line 194
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/measurement/ix;->e(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 195
    invoke-virtual {v2, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/ft;->a(ID)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    .line 196
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V

    return-void

    .line 198
    :cond_2
    throw v4

    .line 199
    :cond_3
    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/hr;->h:Z

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    array-length v3, v3

    sget-object v4, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0xfffff

    :goto_2
    if-ge v8, v3, :cond_8

    .line 8001
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8002
    aget v12, v12, v8

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result v13

    const/16 v14, 0x11

    if-gt v13, v14, :cond_5

    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    add-int/lit8 v15, v8, 0x2

    .line 8003
    aget v14, v14, v15

    and-int v15, v14, v7

    if-eq v15, v10, :cond_4

    int-to-long v9, v15

    .line 8004
    invoke-virtual {v4, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    move v10, v15

    :cond_4
    ushr-int/lit8 v14, v14, 0x14

    shl-int v14, v5, v14

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    and-int/2addr v11, v7

    int-to-long v6, v11

    packed-switch v13, :pswitch_data_1

    :cond_6
    :goto_4
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 8103
    :pswitch_45
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8104
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v7

    .line 8105
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)V

    goto :goto_4

    .line 8106
    :pswitch_46
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8107
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->e(IJ)V

    goto :goto_4

    .line 8108
    :pswitch_47
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8109
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->f(II)V

    goto :goto_4

    .line 8110
    :pswitch_48
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8111
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->b(IJ)V

    goto :goto_4

    .line 8112
    :pswitch_49
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8113
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->a(II)V

    goto :goto_4

    .line 8114
    :pswitch_4a
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8115
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->b(II)V

    goto :goto_4

    .line 8116
    :pswitch_4b
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8117
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->e(II)V

    goto :goto_4

    .line 8118
    :pswitch_4c
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8119
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/fm;

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->a(ILcom/google/android/gms/internal/measurement/fm;)V

    goto :goto_4

    .line 8120
    :pswitch_4d
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8121
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 8122
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_4

    .line 8123
    :pswitch_4e
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8124
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V

    goto/16 :goto_4

    .line 8125
    :pswitch_4f
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8126
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->e(Ljava/lang/Object;J)Z

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->a(IZ)V

    goto/16 :goto_4

    .line 8127
    :pswitch_50
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8128
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->d(II)V

    goto/16 :goto_4

    .line 8129
    :pswitch_51
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8130
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->d(IJ)V

    goto/16 :goto_4

    .line 8131
    :pswitch_52
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8132
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->c(II)V

    goto/16 :goto_4

    .line 8133
    :pswitch_53
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8134
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->c(IJ)V

    goto/16 :goto_4

    .line 8135
    :pswitch_54
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8136
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->a(IJ)V

    goto/16 :goto_4

    .line 8137
    :pswitch_55
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8138
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;J)F

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->a(IF)V

    goto/16 :goto_4

    .line 8139
    :pswitch_56
    invoke-direct {v0, v1, v12, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8140
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->a(ID)V

    goto/16 :goto_4

    .line 8141
    :pswitch_57
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v6, v8}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;I)V

    goto/16 :goto_4

    .line 8098
    :pswitch_58
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8099
    aget v11, v11, v8

    .line 8100
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8101
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v7

    .line 8102
    invoke-static {v11, v6, v2, v7}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_4

    .line 8095
    :pswitch_59
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8096
    aget v11, v11, v8

    .line 8097
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8098
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8092
    :pswitch_5a
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8093
    aget v11, v11, v8

    .line 8094
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8095
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8089
    :pswitch_5b
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8090
    aget v11, v11, v8

    .line 8091
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8092
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8086
    :pswitch_5c
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8087
    aget v11, v11, v8

    .line 8088
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8089
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8083
    :pswitch_5d
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8084
    aget v11, v11, v8

    .line 8085
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8086
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8080
    :pswitch_5e
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8081
    aget v11, v11, v8

    .line 8082
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8083
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8077
    :pswitch_5f
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8078
    aget v11, v11, v8

    .line 8079
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8080
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8074
    :pswitch_60
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8075
    aget v11, v11, v8

    .line 8076
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8077
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8071
    :pswitch_61
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8072
    aget v11, v11, v8

    .line 8073
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8074
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8068
    :pswitch_62
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8069
    aget v11, v11, v8

    .line 8070
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8071
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8065
    :pswitch_63
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8066
    aget v11, v11, v8

    .line 8067
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8068
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8062
    :pswitch_64
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8063
    aget v11, v11, v8

    .line 8064
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8065
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8059
    :pswitch_65
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8060
    aget v11, v11, v8

    .line 8061
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8062
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8056
    :pswitch_66
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8057
    aget v11, v11, v8

    .line 8058
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8059
    invoke-static {v11, v6, v2, v5}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8053
    :pswitch_67
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8054
    aget v11, v11, v8

    .line 8055
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v12, 0x0

    .line 8056
    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/ic;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    :pswitch_68
    const/4 v12, 0x0

    .line 8050
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8051
    aget v11, v11, v8

    .line 8052
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8053
    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/ic;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    :pswitch_69
    const/4 v12, 0x0

    .line 8047
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8048
    aget v11, v11, v8

    .line 8049
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8050
    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/ic;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    :pswitch_6a
    const/4 v12, 0x0

    .line 8044
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8045
    aget v11, v11, v8

    .line 8046
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8047
    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/ic;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    :pswitch_6b
    const/4 v12, 0x0

    .line 8041
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8042
    aget v11, v11, v8

    .line 8043
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8044
    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/ic;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    :pswitch_6c
    const/4 v12, 0x0

    .line 8038
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8039
    aget v11, v11, v8

    .line 8040
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8041
    invoke-static {v11, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/ic;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_4

    .line 8035
    :pswitch_6d
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8036
    aget v11, v11, v8

    .line 8037
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8038
    invoke-static {v11, v6, v2}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;)V

    goto/16 :goto_4

    .line 8031
    :pswitch_6e
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8032
    aget v11, v11, v8

    .line 8033
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8034
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v7

    .line 8035
    invoke-static {v11, v6, v2, v7}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_4

    .line 8028
    :pswitch_6f
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8029
    aget v11, v11, v8

    .line 8030
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8031
    invoke-static {v11, v6, v2}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;)V

    goto/16 :goto_4

    .line 8025
    :pswitch_70
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8026
    aget v11, v11, v8

    .line 8027
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v13, 0x0

    .line 8028
    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/ic;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_5

    :pswitch_71
    const/4 v13, 0x0

    .line 8022
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8023
    aget v11, v11, v8

    .line 8024
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8025
    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/ic;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_5

    :pswitch_72
    const/4 v13, 0x0

    .line 8019
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8020
    aget v11, v11, v8

    .line 8021
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8022
    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/ic;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_5

    :pswitch_73
    const/4 v13, 0x0

    .line 8016
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8017
    aget v11, v11, v8

    .line 8018
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8019
    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/ic;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_5

    :pswitch_74
    const/4 v13, 0x0

    .line 8013
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8014
    aget v11, v11, v8

    .line 8015
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8016
    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/ic;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_5

    :pswitch_75
    const/4 v13, 0x0

    .line 8010
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8011
    aget v11, v11, v8

    .line 8012
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8013
    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/ic;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_5

    :pswitch_76
    const/4 v13, 0x0

    .line 8007
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8008
    aget v11, v11, v8

    .line 8009
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8010
    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_5

    :pswitch_77
    const/4 v13, 0x0

    .line 8004
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 8005
    aget v11, v11, v8

    .line 8006
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 8007
    invoke-static {v11, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ft;Z)V

    goto/16 :goto_5

    :pswitch_78
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8142
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v7

    .line 8143
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_5

    :pswitch_79
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8144
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->e(IJ)V

    goto/16 :goto_5

    :pswitch_7a
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8145
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->f(II)V

    goto/16 :goto_5

    :pswitch_7b
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8146
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->b(IJ)V

    goto/16 :goto_5

    :pswitch_7c
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8147
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->a(II)V

    goto/16 :goto_5

    :pswitch_7d
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8148
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->b(II)V

    goto/16 :goto_5

    :pswitch_7e
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8149
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->e(II)V

    goto/16 :goto_5

    :pswitch_7f
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8150
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/fm;

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->a(ILcom/google/android/gms/internal/measurement/fm;)V

    goto/16 :goto_5

    :pswitch_80
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8151
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 8152
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v7

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)V

    goto/16 :goto_5

    :pswitch_81
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8153
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v12, v6, v2}, Lcom/google/android/gms/internal/measurement/hr;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V

    goto/16 :goto_5

    :pswitch_82
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8154
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/ix;->c(Ljava/lang/Object;J)Z

    move-result v6

    .line 8155
    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->a(IZ)V

    goto :goto_5

    :pswitch_83
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8156
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->d(II)V

    goto :goto_5

    :pswitch_84
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8157
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->d(IJ)V

    goto :goto_5

    :pswitch_85
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8158
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->c(II)V

    goto :goto_5

    :pswitch_86
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8159
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->c(IJ)V

    goto :goto_5

    :pswitch_87
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8160
    invoke-virtual {v4, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->a(IJ)V

    goto :goto_5

    :pswitch_88
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8161
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/ix;->d(Ljava/lang/Object;J)F

    move-result v6

    .line 8162
    invoke-virtual {v2, v12, v6}, Lcom/google/android/gms/internal/measurement/ft;->a(IF)V

    goto :goto_5

    :pswitch_89
    const/4 v13, 0x0

    and-int v11, v9, v14

    if-eqz v11, :cond_7

    .line 8163
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/measurement/ix;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    .line 8164
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/ft;->a(ID)V

    :cond_7
    :goto_5
    add-int/lit8 v8, v8, 0x3

    const/4 v6, 0x0

    const v7, 0xfffff

    goto/16 :goto_2

    .line 8167
    :cond_8
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    .line 8165
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V

    return-void

    .line 8167
    :cond_9
    throw v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/fa;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/fa;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/android/gms/internal/measurement/hr;->i:Z

    if-eqz v0, :cond_1b

    .line 1
    sget-object v9, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_18

    add-int/lit8 v3, v0, 0x1

    .line 3001
    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 3002
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/measurement/fb;->a(I[BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/measurement/fa;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    :cond_0
    move/from16 v17, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    .line 3003
    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/measurement/hr;->a(II)I

    move-result v0

    goto :goto_2

    .line 3004
    :cond_1
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/measurement/hr;->g(I)I

    move-result v0

    :goto_2
    move v2, v0

    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v20, v5

    move-object/from16 v28, v9

    move-object v15, v14

    const/4 v13, 0x0

    :goto_3
    const/16 v18, -0x1

    goto/16 :goto_12

    .line 3049
    :cond_2
    iget-object v0, v15, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    add-int/lit8 v1, v2, 0x1

    .line 3005
    aget v1, v0, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result v0

    and-int v10, v1, v8

    move-object/from16 v19, v9

    int-to-long v8, v10

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_d

    iget-object v10, v15, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    add-int/lit8 v21, v2, 0x2

    .line 3006
    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-eq v10, v7, :cond_5

    move/from16 v23, v1

    move/from16 v20, v2

    if-eq v7, v13, :cond_3

    int-to-long v1, v7

    move-object/from16 v7, v19

    .line 3007
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    :cond_3
    move-object/from16 v7, v19

    :goto_4
    if-eq v10, v13, :cond_4

    int-to-long v1, v10

    .line 3008
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_4
    move/from16 v30, v10

    move-object v10, v7

    move/from16 v7, v30

    goto :goto_5

    :cond_5
    move/from16 v23, v1

    move/from16 v20, v2

    move-object/from16 v10, v19

    :goto_5
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    goto/16 :goto_c

    :pswitch_0
    if-nez v3, :cond_6

    .line 3009
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v17

    iget-wide v0, v11, Lcom/google/android/gms/internal/measurement/fa;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/fp;->a(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v13, v20

    move-wide v2, v8

    move/from16 v20, p3

    .line 3010
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_a

    :cond_6
    move/from16 v13, v20

    move/from16 v20, p3

    goto :goto_6

    :pswitch_1
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_9

    .line 3011
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/fa;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/fp;->a(I)I

    move-result v1

    .line 3012
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_2
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_9

    .line 3013
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/fa;->a:I

    .line 3014
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    :pswitch_3
    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_9

    .line 3015
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->e([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 3016
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_4
    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_8

    .line 3017
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    move/from16 v2, p4

    const v19, 0xfffff

    .line 3018
    invoke-static {v0, v12, v4, v2, v11}, Lcom/google/android/gms/internal/measurement/fb;->a(Lcom/google/android/gms/internal/measurement/ia;[BIILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    .line 3019
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 3020
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :cond_7
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 3021
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/gt;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3022
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :cond_8
    move/from16 v2, p4

    :cond_9
    :goto_6
    const v19, 0xfffff

    goto/16 :goto_c

    :pswitch_5
    move/from16 v2, p4

    move/from16 v13, v20

    const/4 v0, 0x2

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v0, :cond_c

    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_a

    .line 3023
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->c([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    goto :goto_7

    .line 3024
    :cond_a
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->d([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    .line 3023
    :goto_7
    iget-object v1, v11, Lcom/google/android/gms/internal/measurement/fa;->c:Ljava/lang/Object;

    .line 3025
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :pswitch_6
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_c

    .line 3026
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/fa;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    .line 3027
    :goto_8
    invoke-static {v14, v8, v9, v5}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JZ)V

    goto :goto_9

    :pswitch_7
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v1, :cond_c

    .line 3028
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_9
    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v30, v13

    move v13, v2

    move/from16 v2, v30

    goto/16 :goto_0

    :pswitch_8
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v5, :cond_c

    .line 3029
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto :goto_b

    :pswitch_9
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_c

    .line 3030
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->a([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/measurement/fa;->a:I

    .line 3031
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_a
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_c

    .line 3032
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/measurement/fb;->b([BILcom/google/android/gms/internal/measurement/fa;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/android/gms/internal/measurement/fa;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    .line 3033
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_a
    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    goto/16 :goto_f

    :pswitch_b
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v1, :cond_c

    .line 3034
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/fb;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 3035
    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_b

    :pswitch_c
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v5, :cond_c

    .line 3036
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/fb;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 3037
    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_b
    or-int v6, v6, v21

    goto :goto_e

    :cond_c
    :goto_c
    move v2, v4

    move-object/from16 v28, v10

    move-object v15, v14

    goto/16 :goto_3

    :cond_d
    move/from16 v20, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v19

    const v19, 0xfffff

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_11

    const/4 v1, 0x2

    if-ne v3, v1, :cond_10

    .line 3038
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/gs;

    .line 3039
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->a()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3040
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/gs;->size()I

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xa

    goto :goto_d

    :cond_e
    add-int/2addr v1, v1

    .line 3041
    :goto_d
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/gs;->a(I)Lcom/google/android/gms/internal/measurement/gs;

    move-result-object v0

    .line 3042
    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_f
    move-object v5, v0

    .line 3043
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    .line 3044
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/fb;->a(Lcom/google/android/gms/internal/measurement/ia;I[BIILcom/google/android/gms/internal/measurement/gs;Lcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    move v6, v8

    :goto_e
    move-object v9, v10

    move v2, v13

    :goto_f
    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_13

    :cond_10
    move v12, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-object/from16 v30, v15

    move-object v15, v14

    move-object/from16 v14, v30

    goto/16 :goto_10

    :cond_11
    const/16 v1, 0x31

    if-gt v0, v1, :cond_13

    move/from16 v1, v23

    int-to-long v1, v1

    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v20

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    const v9, 0xfffff

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v29, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    .line 3045
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    if-eq v0, v15, :cond_12

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    move/from16 v2, v29

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_12
    move-object/from16 v15, p1

    move v2, v0

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v13, v29

    goto/16 :goto_12

    :cond_13
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v29, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_16

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_15

    move-object/from16 v14, p0

    move v12, v15

    move-wide/from16 v10, v26

    move/from16 v13, v29

    move-object/from16 v15, p1

    .line 3046
    invoke-direct {v14, v15, v13, v10, v11}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;IJ)I

    move-result v0

    if-eq v0, v12, :cond_14

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move v2, v13

    move/from16 v1, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    move-object/from16 v30, v15

    move-object v15, v14

    move-object/from16 v14, v30

    goto/16 :goto_0

    :cond_14
    move v2, v0

    goto :goto_11

    :cond_15
    move-object/from16 v14, p0

    move v12, v15

    move/from16 v13, v29

    move-object/from16 v15, p1

    :goto_10
    move v2, v12

    :goto_11
    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_12

    :cond_16
    move-object/from16 v14, p0

    move/from16 v7, p3

    move v12, v15

    move-wide/from16 v10, v26

    move/from16 v13, v29

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v20

    move v14, v12

    move v12, v13

    move/from16 v19, v13

    move-object/from16 v13, p5

    .line 3047
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    if-eq v0, v14, :cond_17

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object v14, v15

    move/from16 v2, v19

    move/from16 v1, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const v8, 0xfffff

    const/4 v10, -0x1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_17
    move v2, v0

    move/from16 v13, v19

    goto :goto_11

    .line 3048
    :goto_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/hr;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/in;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 3049
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/fb;->a(I[BIILcom/google/android/gms/internal/measurement/in;Lcom/google/android/gms/internal/measurement/fa;)I

    move-result v0

    move-object/from16 v12, p2

    move-object/from16 v11, p5

    move v2, v13

    move-object v14, v15

    move/from16 v1, v20

    move-object/from16 v9, v28

    const v8, 0xfffff

    const/4 v10, -0x1

    move-object/from16 v15, p0

    :goto_13
    move/from16 v13, p4

    goto/16 :goto_0

    :cond_18
    move/from16 v24, v6

    move-object/from16 v28, v9

    move-object v15, v14

    const v1, 0xfffff

    if-eq v7, v1, :cond_19

    int-to-long v1, v7

    move/from16 v6, v24

    move-object/from16 v3, v28

    .line 3050
    invoke-virtual {v3, v15, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_19
    move/from16 v4, p4

    if-ne v0, v4, :cond_1a

    return-void

    .line 3051
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->e()Lcom/google/android/gms/internal/measurement/zzib;

    move-result-object v0

    throw v0

    :cond_1b
    move v4, v13

    move-object v15, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/fa;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/hr;->e(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    .line 3
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v7

    .line 4
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_0

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 13
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 19
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 28
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 31
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->c(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto/16 :goto_3

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 49
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 52
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/ix;->e(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    .line 54
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/hr;->h:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    .line 58
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/hr;->i:Z

    const/16 v3, 0x3f

    const v4, 0xfffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    array-length v8, v8

    if-ge v6, v8, :cond_4

    .line 1001
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 1002
    aget v10, v10, v6

    and-int/2addr v8, v4

    int-to-long v11, v8

    .line 1003
    sget-object v8, Lcom/google/android/gms/internal/measurement/ge;->zzJ:Lcom/google/android/gms/internal/measurement/ge;

    .line 1004
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ge;->zza()I

    move-result v8

    if-lt v9, v8, :cond_0

    sget-object v8, Lcom/google/android/gms/internal/measurement/ge;->zzW:Lcom/google/android/gms/internal/measurement/ge;

    .line 1003
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ge;->zza()I

    :cond_0
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_a

    .line 1044
    :pswitch_0
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1045
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/ho;

    .line 1046
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v9

    .line 1047
    invoke-static {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/fs;->a(ILcom/google/android/gms/internal/measurement/ho;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v8

    goto/16 :goto_2

    .line 1048
    :pswitch_1
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1049
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v8

    shl-int/lit8 v10, v10, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    add-long v11, v8, v8

    shr-long/2addr v8, v3

    xor-long/2addr v8, v11

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v8

    goto/16 :goto_7

    .line 1050
    :pswitch_2
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1051
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v8

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    add-int v10, v8, v8

    shr-int/lit8 v8, v8, 0x1f

    xor-int/2addr v8, v10

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_5

    .line 1052
    :pswitch_3
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1053
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_9

    .line 1054
    :pswitch_4
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1055
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_8

    .line 1056
    :pswitch_5
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1057
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v8

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->e(I)I

    move-result v8

    goto/16 :goto_5

    .line 1058
    :pswitch_6
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1059
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v8

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_5

    .line 1060
    :pswitch_7
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1061
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/fm;

    shl-int/lit8 v9, v10, 0x3

    .line 1062
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    .line 1063
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/fm;->a()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto/16 :goto_3

    .line 1064
    :pswitch_8
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1065
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1066
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v9

    invoke-static {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v8

    goto/16 :goto_2

    .line 1067
    :pswitch_9
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1068
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1069
    instance-of v9, v8, Lcom/google/android/gms/internal/measurement/fm;

    if-eqz v9, :cond_1

    .line 1070
    check-cast v8, Lcom/google/android/gms/internal/measurement/fm;

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    .line 1071
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/fm;->a()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto/16 :goto_3

    .line 1072
    :cond_1
    check-cast v8, Ljava/lang/String;

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    .line 1073
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->a(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_5

    .line 1074
    :pswitch_a
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1075
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_4

    .line 1076
    :pswitch_b
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1077
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_8

    .line 1078
    :pswitch_c
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1079
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_9

    .line 1080
    :pswitch_d
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1081
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v8

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->e(I)I

    move-result v8

    goto/16 :goto_5

    .line 1082
    :pswitch_e
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1083
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v8

    shl-int/lit8 v10, v10, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v8

    goto/16 :goto_7

    .line 1084
    :pswitch_f
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1085
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v8

    shl-int/lit8 v10, v10, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v8

    goto/16 :goto_7

    .line 1086
    :pswitch_10
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1087
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_8

    .line 1088
    :pswitch_11
    invoke-direct {v0, v1, v10, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1089
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_9

    .line 1090
    :pswitch_12
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->b(I)Ljava/lang/Object;

    .line 1091
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/hj;->a(Ljava/lang/Object;)I

    goto/16 :goto_a

    .line 1041
    :pswitch_13
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1042
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v9

    .line 1043
    invoke-static {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v8

    goto/16 :goto_2

    .line 1092
    :pswitch_14
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1093
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->c(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1094
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto/16 :goto_1

    .line 1095
    :pswitch_15
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1096
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->g(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1097
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto/16 :goto_1

    .line 1098
    :pswitch_16
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1099
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1100
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto/16 :goto_1

    .line 1101
    :pswitch_17
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1102
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1103
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto/16 :goto_1

    .line 1104
    :pswitch_18
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1105
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->d(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1106
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto/16 :goto_1

    .line 1107
    :pswitch_19
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1108
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->f(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1109
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto/16 :goto_1

    .line 1110
    :pswitch_1a
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1111
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->j(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1112
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto/16 :goto_1

    .line 1113
    :pswitch_1b
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1114
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1115
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto/16 :goto_1

    .line 1116
    :pswitch_1c
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1117
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1118
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto :goto_1

    .line 1119
    :pswitch_1d
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1120
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->e(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1121
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto :goto_1

    .line 1122
    :pswitch_1e
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1123
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->b(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1124
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto :goto_1

    .line 1125
    :pswitch_1f
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1126
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1127
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto :goto_1

    .line 1128
    :pswitch_20
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1129
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1130
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto :goto_1

    .line 1131
    :pswitch_21
    invoke-virtual {v2, v1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1132
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ic;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_3

    .line 1133
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    :goto_1
    add-int/2addr v9, v10

    goto/16 :goto_5

    .line 1039
    :pswitch_22
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1040
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->c(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_2

    .line 1037
    :pswitch_23
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1038
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->g(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_2

    .line 1035
    :pswitch_24
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1036
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->i(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_2

    .line 1033
    :pswitch_25
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1034
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->h(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_2

    .line 1031
    :pswitch_26
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1032
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->d(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_2

    .line 1029
    :pswitch_27
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1030
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->f(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_2

    .line 1027
    :pswitch_28
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1028
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->l(ILjava/util/List;)I

    move-result v8

    goto/16 :goto_2

    .line 1024
    :pswitch_29
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1025
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v9

    .line 1026
    invoke-static {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v8

    goto :goto_2

    .line 1022
    :pswitch_2a
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1023
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->k(ILjava/util/List;)I

    move-result v8

    goto :goto_2

    .line 1020
    :pswitch_2b
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1021
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->j(ILjava/util/List;)I

    move-result v8

    goto :goto_2

    .line 1018
    :pswitch_2c
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1019
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->h(ILjava/util/List;)I

    move-result v8

    goto :goto_2

    .line 1016
    :pswitch_2d
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1017
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->i(ILjava/util/List;)I

    move-result v8

    goto :goto_2

    .line 1014
    :pswitch_2e
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1015
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->e(ILjava/util/List;)I

    move-result v8

    goto :goto_2

    .line 1012
    :pswitch_2f
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1013
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;)I

    move-result v8

    goto :goto_2

    .line 1010
    :pswitch_30
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1011
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;)I

    move-result v8

    goto :goto_2

    .line 1008
    :pswitch_31
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1009
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->h(ILjava/util/List;)I

    move-result v8

    goto :goto_2

    .line 1006
    :pswitch_32
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1007
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/measurement/ic;->i(ILjava/util/List;)I

    move-result v8

    :goto_2
    add-int/2addr v7, v8

    goto/16 :goto_a

    .line 1134
    :pswitch_33
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1135
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/ho;

    .line 1136
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v9

    .line 1137
    invoke-static {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/fs;->a(ILcom/google/android/gms/internal/measurement/ho;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v8

    goto :goto_2

    .line 1138
    :pswitch_34
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1139
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    shl-int/lit8 v10, v10, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    add-long v11, v8, v8

    shr-long/2addr v8, v3

    xor-long/2addr v8, v11

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v8

    goto/16 :goto_7

    .line 1140
    :pswitch_35
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1141
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v8

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    add-int v10, v8, v8

    shr-int/lit8 v8, v8, 0x1f

    xor-int/2addr v8, v10

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_5

    .line 1142
    :pswitch_36
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1143
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_9

    .line 1144
    :pswitch_37
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1145
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_8

    .line 1146
    :pswitch_38
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1147
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v8

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->e(I)I

    move-result v8

    goto/16 :goto_5

    .line 1148
    :pswitch_39
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1149
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v8

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto/16 :goto_5

    .line 1150
    :pswitch_3a
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1151
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/fm;

    shl-int/lit8 v9, v10, 0x3

    .line 1152
    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    .line 1153
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/fm;->a()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    :goto_3
    add-int/2addr v10, v8

    add-int/2addr v9, v10

    goto/16 :goto_6

    .line 1154
    :pswitch_3b
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1155
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1156
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v9

    invoke-static {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v8

    goto/16 :goto_2

    .line 1157
    :pswitch_3c
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1158
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1159
    instance-of v9, v8, Lcom/google/android/gms/internal/measurement/fm;

    if-eqz v9, :cond_2

    .line 1160
    check-cast v8, Lcom/google/android/gms/internal/measurement/fm;

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    .line 1161
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/fm;->a()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    goto :goto_3

    .line 1162
    :cond_2
    check-cast v8, Ljava/lang/String;

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    .line 1163
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->a(Ljava/lang/String;)I

    move-result v8

    goto :goto_5

    .line 1164
    :pswitch_3d
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1165
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    :goto_4
    add-int/2addr v8, v5

    goto/16 :goto_2

    .line 1166
    :pswitch_3e
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1167
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto :goto_8

    .line 1168
    :pswitch_3f
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1169
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    goto :goto_9

    .line 1170
    :pswitch_40
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1171
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v8

    shl-int/lit8 v9, v10, 0x3

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v9

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->e(I)I

    move-result v8

    :goto_5
    add-int/2addr v9, v8

    :goto_6
    add-int/2addr v7, v9

    goto :goto_a

    .line 1172
    :pswitch_41
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1173
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    shl-int/lit8 v10, v10, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v8

    goto :goto_7

    .line 1174
    :pswitch_42
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1175
    invoke-static {v1, v11, v12}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v8

    shl-int/lit8 v10, v10, 0x3

    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v10

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v8

    :goto_7
    add-int/2addr v10, v8

    add-int/2addr v7, v10

    goto :goto_a

    .line 1176
    :pswitch_43
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1177
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    :goto_8
    add-int/lit8 v8, v8, 0x4

    goto/16 :goto_2

    .line 1178
    :pswitch_44
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    shl-int/lit8 v8, v10, 0x3

    .line 1179
    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v8

    :goto_9
    add-int/lit8 v8, v8, 0x8

    goto/16 :goto_2

    :cond_3
    :goto_a
    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_0

    .line 1177
    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    .line 1180
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1181
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/im;->d(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v7, v1

    goto/16 :goto_1b

    .line 1
    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0xfffff

    :goto_b
    iget-object v11, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    array-length v11, v11

    if-ge v7, v11, :cond_c

    .line 2001
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 2002
    aget v12, v12, v7

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result v13

    const/16 v14, 0x11

    if-gt v13, v14, :cond_6

    iget-object v14, v0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    add-int/lit8 v15, v7, 0x2

    .line 2003
    aget v14, v14, v15

    and-int v15, v14, v4

    ushr-int/lit8 v14, v14, 0x14

    shl-int v14, v5, v14

    if-eq v15, v10, :cond_7

    int-to-long v9, v15

    .line 2004
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    move v10, v15

    goto :goto_c

    :cond_6
    const/4 v14, 0x0

    :cond_7
    :goto_c
    and-int/2addr v11, v4

    int-to-long v4, v11

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_f

    .line 2005
    :pswitch_45
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2006
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ho;

    .line 2007
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v5

    .line 2008
    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/fs;->a(ILcom/google/android/gms/internal/measurement/ho;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v4

    goto/16 :goto_e

    .line 2009
    :pswitch_46
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2010
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v11, v12, 0x3

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    add-long v12, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v12

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v4

    goto/16 :goto_10

    .line 2011
    :pswitch_47
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2012
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    add-int v11, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v11

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto/16 :goto_13

    .line 2013
    :pswitch_48
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    shl-int/lit8 v4, v12, 0x3

    .line 2014
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto/16 :goto_11

    .line 2015
    :pswitch_49
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    shl-int/lit8 v4, v12, 0x3

    .line 2016
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto/16 :goto_12

    .line 2017
    :pswitch_4a
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2018
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->e(I)I

    move-result v4

    goto/16 :goto_13

    .line 2019
    :pswitch_4b
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2020
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto/16 :goto_13

    .line 2021
    :pswitch_4c
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2022
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/fm;

    shl-int/lit8 v5, v12, 0x3

    .line 2023
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    .line 2024
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/fm;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto/16 :goto_14

    .line 2025
    :pswitch_4d
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2026
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2027
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v5

    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v4

    goto/16 :goto_e

    .line 2028
    :pswitch_4e
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2029
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2030
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/fm;

    if-eqz v5, :cond_8

    .line 2031
    check-cast v4, Lcom/google/android/gms/internal/measurement/fm;

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    .line 2032
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/fm;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto/16 :goto_14

    .line 2033
    :cond_8
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    .line 2034
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->a(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_13

    .line 2035
    :pswitch_4f
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    shl-int/lit8 v4, v12, 0x3

    .line 2036
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto/16 :goto_e

    .line 2037
    :pswitch_50
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    shl-int/lit8 v4, v12, 0x3

    .line 2038
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto/16 :goto_12

    .line 2039
    :pswitch_51
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    shl-int/lit8 v4, v12, 0x3

    .line 2040
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto/16 :goto_11

    .line 2041
    :pswitch_52
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2042
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/hr;->c(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->e(I)I

    move-result v4

    goto/16 :goto_13

    .line 2043
    :pswitch_53
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2044
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v11, v12, 0x3

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v4

    goto/16 :goto_10

    .line 2045
    :pswitch_54
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2046
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/measurement/hr;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v11, v12, 0x3

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v4

    goto/16 :goto_10

    .line 2047
    :pswitch_55
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    shl-int/lit8 v4, v12, 0x3

    .line 2048
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto/16 :goto_12

    .line 2049
    :pswitch_56
    invoke-direct {v0, v1, v12, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    shl-int/lit8 v4, v12, 0x3

    .line 2050
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto/16 :goto_11

    .line 2051
    :pswitch_57
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/hr;->b(I)Ljava/lang/Object;

    .line 2052
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/hj;->a(Ljava/lang/Object;)I

    goto/16 :goto_f

    .line 2053
    :pswitch_58
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2054
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v5

    .line 2055
    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v4

    goto/16 :goto_e

    .line 2056
    :pswitch_59
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2057
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2058
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto/16 :goto_d

    .line 2059
    :pswitch_5a
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2060
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2061
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto/16 :goto_d

    .line 2062
    :pswitch_5b
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2063
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2064
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto/16 :goto_d

    .line 2065
    :pswitch_5c
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2066
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2067
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto/16 :goto_d

    .line 2068
    :pswitch_5d
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2069
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->d(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2070
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto/16 :goto_d

    .line 2071
    :pswitch_5e
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2072
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->f(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2073
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto/16 :goto_d

    .line 2074
    :pswitch_5f
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2075
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2076
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto/16 :goto_d

    .line 2077
    :pswitch_60
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2078
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2079
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto/16 :goto_d

    .line 2080
    :pswitch_61
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2081
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2082
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto :goto_d

    .line 2083
    :pswitch_62
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2084
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2085
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto :goto_d

    .line 2086
    :pswitch_63
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2087
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2088
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto :goto_d

    .line 2089
    :pswitch_64
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2090
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2091
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto :goto_d

    .line 2092
    :pswitch_65
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2093
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2094
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto :goto_d

    .line 2095
    :pswitch_66
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2096
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/ic;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_9

    .line 2097
    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->d(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    :goto_d
    add-int/2addr v5, v11

    goto/16 :goto_13

    .line 2098
    :pswitch_67
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2099
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->c(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 2100
    :pswitch_68
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2101
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->g(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 2102
    :pswitch_69
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2103
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->i(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 2104
    :pswitch_6a
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2105
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->h(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 2106
    :pswitch_6b
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2107
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->d(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 2108
    :pswitch_6c
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2109
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->f(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 2110
    :pswitch_6d
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2111
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->l(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_e

    .line 2112
    :pswitch_6e
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v5

    .line 2113
    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v4

    goto :goto_e

    .line 2114
    :pswitch_6f
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->k(ILjava/util/List;)I

    move-result v4

    goto :goto_e

    .line 2115
    :pswitch_70
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2116
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->j(ILjava/util/List;)I

    move-result v4

    goto :goto_e

    .line 2117
    :pswitch_71
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2118
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->h(ILjava/util/List;)I

    move-result v4

    goto :goto_e

    .line 2119
    :pswitch_72
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2120
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->i(ILjava/util/List;)I

    move-result v4

    goto :goto_e

    .line 2121
    :pswitch_73
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2122
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->e(ILjava/util/List;)I

    move-result v4

    goto :goto_e

    .line 2123
    :pswitch_74
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2124
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->b(ILjava/util/List;)I

    move-result v4

    goto :goto_e

    .line 2125
    :pswitch_75
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2126
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/util/List;)I

    move-result v4

    goto :goto_e

    .line 2127
    :pswitch_76
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2128
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->h(ILjava/util/List;)I

    move-result v4

    goto :goto_e

    .line 2129
    :pswitch_77
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2130
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/measurement/ic;->i(ILjava/util/List;)I

    move-result v4

    :goto_e
    add-int/2addr v8, v4

    :cond_9
    :goto_f
    const/4 v11, 0x1

    goto/16 :goto_1a

    :pswitch_78
    and-int v11, v9, v14

    if-eqz v11, :cond_9

    .line 2131
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ho;

    .line 2132
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v5

    .line 2133
    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/fs;->a(ILcom/google/android/gms/internal/measurement/ho;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v4

    goto :goto_e

    :pswitch_79
    and-int v11, v9, v14

    if-eqz v11, :cond_9

    .line 2134
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v11, v12, 0x3

    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    add-long v12, v4, v4

    shr-long/2addr v4, v3

    xor-long/2addr v4, v12

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v4

    :goto_10
    add-int/2addr v11, v4

    add-int/2addr v8, v11

    goto :goto_f

    :pswitch_7a
    and-int v11, v9, v14

    if-eqz v11, :cond_9

    .line 2135
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    add-int v11, v4, v4

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v11

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto :goto_13

    :pswitch_7b
    and-int v4, v9, v14

    if-eqz v4, :cond_9

    shl-int/lit8 v4, v12, 0x3

    .line 2136
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    :goto_11
    add-int/lit8 v4, v4, 0x8

    goto :goto_e

    :pswitch_7c
    and-int v4, v9, v14

    if-eqz v4, :cond_9

    shl-int/lit8 v4, v12, 0x3

    .line 2137
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    :goto_12
    add-int/lit8 v4, v4, 0x4

    goto :goto_e

    :pswitch_7d
    and-int v11, v9, v14

    if-eqz v11, :cond_9

    .line 2138
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->e(I)I

    move-result v4

    goto :goto_13

    :pswitch_7e
    and-int v11, v9, v14

    if-eqz v11, :cond_9

    .line 2139
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    :goto_13
    add-int/2addr v5, v4

    goto :goto_15

    :pswitch_7f
    and-int v11, v9, v14

    if-eqz v11, :cond_9

    .line 2140
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/fm;

    shl-int/lit8 v5, v12, 0x3

    .line 2141
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    .line 2142
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/fm;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    :goto_14
    add-int/2addr v11, v4

    add-int/2addr v5, v11

    :goto_15
    add-int/2addr v8, v5

    goto/16 :goto_f

    :pswitch_80
    and-int v11, v9, v14

    if-eqz v11, :cond_9

    .line 2143
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2144
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v5

    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/ic;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)I

    move-result v4

    goto/16 :goto_e

    :pswitch_81
    and-int v11, v9, v14

    if-eqz v11, :cond_9

    .line 2145
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2146
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/fm;

    if-eqz v5, :cond_a

    .line 2147
    check-cast v4, Lcom/google/android/gms/internal/measurement/fm;

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    .line 2148
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/fm;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v11

    goto :goto_14

    .line 2149
    :cond_a
    check-cast v4, Ljava/lang/String;

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    .line 2150
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->a(Ljava/lang/String;)I

    move-result v4

    goto :goto_13

    :pswitch_82
    and-int v4, v9, v14

    if-eqz v4, :cond_9

    shl-int/lit8 v4, v12, 0x3

    .line 2151
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    const/4 v11, 0x1

    add-int/2addr v4, v11

    goto/16 :goto_19

    :pswitch_83
    const/4 v11, 0x1

    and-int v4, v9, v14

    if-eqz v4, :cond_b

    shl-int/lit8 v4, v12, 0x3

    .line 2152
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto :goto_17

    :pswitch_84
    const/4 v11, 0x1

    and-int v4, v9, v14

    if-eqz v4, :cond_b

    shl-int/lit8 v4, v12, 0x3

    .line 2153
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    goto :goto_18

    :pswitch_85
    const/4 v11, 0x1

    and-int v13, v9, v14

    if-eqz v13, :cond_b

    .line 2154
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v12, 0x3

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->e(I)I

    move-result v4

    add-int/2addr v5, v4

    add-int/2addr v8, v5

    goto :goto_1a

    :pswitch_86
    const/4 v11, 0x1

    and-int v13, v9, v14

    if-eqz v13, :cond_b

    .line 2155
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v12, v12, 0x3

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v12

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v4

    goto :goto_16

    :pswitch_87
    const/4 v11, 0x1

    and-int v13, v9, v14

    if-eqz v13, :cond_b

    .line 2156
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    shl-int/lit8 v12, v12, 0x3

    invoke-static {v12}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v12

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/fs;->c(J)I

    move-result v4

    :goto_16
    add-int/2addr v12, v4

    add-int/2addr v8, v12

    goto :goto_1a

    :pswitch_88
    const/4 v11, 0x1

    and-int v4, v9, v14

    if-eqz v4, :cond_b

    shl-int/lit8 v4, v12, 0x3

    .line 2157
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    :goto_17
    add-int/lit8 v4, v4, 0x4

    goto :goto_19

    :pswitch_89
    const/4 v11, 0x1

    and-int v4, v9, v14

    if-eqz v4, :cond_b

    shl-int/lit8 v4, v12, 0x3

    .line 2158
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    :goto_18
    add-int/lit8 v4, v4, 0x8

    :goto_19
    add-int/2addr v8, v4

    :cond_b
    :goto_1a
    add-int/lit8 v7, v7, 0x3

    const v4, 0xfffff

    const/4 v5, 0x1

    goto/16 :goto_b

    .line 2157
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    .line 2159
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/im;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2160
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/im;->d(Ljava/lang/Object;)I

    move-result v1

    add-int v7, v8, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/hr;->h:Z

    if-nez v1, :cond_d

    :goto_1b
    return v7

    :cond_d
    const/4 v1, 0x0

    .line 2161
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 65
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 2
    aget v4, v4, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 4
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 7
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 8
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 11
    :pswitch_4
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ic;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/hr;->m:Lcom/google/android/gms/internal/measurement/hd;

    .line 12
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/hd;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 13
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 14
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JJ)V

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 17
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JI)V

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 20
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JJ)V

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 23
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JI)V

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 26
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JI)V

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 29
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JI)V

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 32
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 35
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 36
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 39
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JZ)V

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 42
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JI)V

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 45
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JJ)V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 48
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JI)V

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 51
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JJ)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 54
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JJ)V

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 57
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JF)V

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    goto :goto_1

    .line 60
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JD)V

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hr;->b(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    .line 63
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/ic;->a(Lcom/google/android/gms/internal/measurement/im;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/hr;->h:Z

    if-eqz p1, :cond_2

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ic;->d()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/measurement/hr;->k:I

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/hr;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/hr;->j:[I

    .line 1
    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/measurement/hi;

    const/4 v5, 0x0

    .line 4000
    iput-boolean v5, v4, Lcom/google/android/gms/internal/measurement/hi;->a:Z

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ix;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->j:[I

    .line 5
    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/hr;->m:Lcom/google/android/gms/internal/measurement/hd;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/hr;->j:[I

    .line 6
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/measurement/hd;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/hr;->n:Lcom/google/android/gms/internal/measurement/im;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/im;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/hr;->h:Z

    if-eqz p1, :cond_3

    :cond_3
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/measurement/hr;->k:I

    const/4 v11, 0x0

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/hr;->j:[I

    .line 1
    aget v12, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    .line 2
    aget v13, v2, v12

    .line 3
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/hr;->d(I)I

    move-result v14

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/hr;->c:[I

    add-int/lit8 v4, v12, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/hr;->b:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 5
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v4

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v9

    :cond_3
    :goto_2
    invoke-static {v14}, Lcom/google/android/gms/internal/measurement/hr;->f(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto :goto_4

    :cond_4
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 13
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/measurement/hi;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 20
    :cond_5
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/hr;->b(I)Ljava/lang/Object;

    .line 21
    throw v11

    .line 16
    :cond_6
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/ia;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_7
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/measurement/ix;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 9
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/measurement/ia;->d(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v9

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/measurement/hr;->a(I)Lcom/google/android/gms/internal/measurement/ia;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/measurement/hr;->a(Ljava/lang/Object;ILcom/google/android/gms/internal/measurement/ia;)Z

    move-result v0

    if-nez v0, :cond_a

    return v9

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/measurement/hr;->h:Z

    if-nez v0, :cond_c

    return v3

    .line 22
    :cond_c
    throw v11
.end method
