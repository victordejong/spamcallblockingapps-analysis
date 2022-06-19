.class public Ld2/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ld2/h0;


# direct methods
.method public constructor <init>(Ld2/h0;ILjava/lang/String;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/i0;->e:Ld2/h0;

    iput p2, p0, Ld2/i0;->a:I

    iput-object p3, p0, Ld2/i0;->b:Ljava/lang/String;

    iput p4, p0, Ld2/i0;->c:I

    iput-boolean p5, p0, Ld2/i0;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Ld2/i0;->e:Ld2/h0;

    iget v1, p0, Ld2/i0;->a:I

    iget-object v2, p0, Ld2/i0;->b:Ljava/lang/String;

    iget v3, p0, Ld2/i0;->c:I

    .line 2
    iget-object v4, v0, Ld2/h0;->d:Ld2/d2;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne v3, v7, :cond_2

    .line 3
    iget-object v4, v0, Ld2/h0;->a:Ld2/f4;

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 5
    invoke-virtual {v4, v9}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v4

    .line 6
    invoke-virtual {v0, v4, v7}, Ld2/h0;->a(Ld2/f4;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    iget-object v0, v0, Ld2/h0;->d:Ld2/d2;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Ld2/x;

    invoke-direct {v1}, Ld2/x;-><init>()V

    .line 10
    iput v7, v1, Ld2/x;->b:I

    .line 11
    iget-object v3, v0, Ld2/d2;->f:Lj4/h0;

    .line 12
    iput-object v3, v1, Ld2/x;->c:Lj4/h0;

    .line 13
    iput-object v2, v1, Ld2/x;->d:Ljava/lang/String;

    .line 14
    iget-object v2, v1, Ld2/x;->a:Ljava/util/Date;

    if-nez v2, :cond_1

    .line 15
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 16
    iput-object v2, v1, Ld2/x;->a:Ljava/util/Date;

    .line 17
    :cond_1
    invoke-virtual {v0, v1}, Ld2/d2;->b(Ld2/x;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    if-ne v3, v6, :cond_4

    .line 18
    iget-object v4, v0, Ld2/h0;->a:Ld2/f4;

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-virtual {v4, v9}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v4

    .line 21
    invoke-virtual {v0, v4, v6}, Ld2/h0;->a(Ld2/f4;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 22
    iget-object v0, v0, Ld2/h0;->d:Ld2/d2;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_1
    new-instance v1, Ld2/x;

    invoke-direct {v1}, Ld2/x;-><init>()V

    .line 25
    iput v6, v1, Ld2/x;->b:I

    .line 26
    iget-object v3, v0, Ld2/d2;->f:Lj4/h0;

    .line 27
    iput-object v3, v1, Ld2/x;->c:Lj4/h0;

    .line 28
    iput-object v2, v1, Ld2/x;->d:Ljava/lang/String;

    .line 29
    iget-object v2, v1, Ld2/x;->a:Ljava/util/Date;

    if-nez v2, :cond_3

    .line 30
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 31
    iput-object v2, v1, Ld2/x;->a:Ljava/util/Date;

    .line 32
    :cond_3
    invoke-virtual {v0, v1}, Ld2/d2;->b(Ld2/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_4
    if-ne v3, v8, :cond_6

    .line 33
    iget-object v4, v0, Ld2/h0;->a:Ld2/f4;

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 35
    invoke-virtual {v4, v9}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v4

    .line 36
    invoke-virtual {v0, v4, v8}, Ld2/h0;->a(Ld2/f4;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 37
    iget-object v0, v0, Ld2/h0;->d:Ld2/d2;

    .line 38
    monitor-enter v0

    .line 39
    :try_start_2
    new-instance v1, Ld2/x;

    invoke-direct {v1}, Ld2/x;-><init>()V

    .line 40
    iput v8, v1, Ld2/x;->b:I

    .line 41
    iget-object v3, v0, Ld2/d2;->f:Lj4/h0;

    .line 42
    iput-object v3, v1, Ld2/x;->c:Lj4/h0;

    .line 43
    iput-object v2, v1, Ld2/x;->d:Ljava/lang/String;

    .line 44
    iget-object v2, v1, Ld2/x;->a:Ljava/util/Date;

    if-nez v2, :cond_5

    .line 45
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 46
    iput-object v2, v1, Ld2/x;->a:Ljava/util/Date;

    .line 47
    :cond_5
    invoke-virtual {v0, v1}, Ld2/d2;->b(Ld2/x;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_6
    if-nez v3, :cond_8

    .line 48
    iget-object v3, v0, Ld2/h0;->a:Ld2/f4;

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v3, v1}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1, v5}, Ld2/h0;->a(Ld2/f4;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 52
    iget-object v0, v0, Ld2/h0;->d:Ld2/d2;

    .line 53
    monitor-enter v0

    .line 54
    :try_start_3
    new-instance v1, Ld2/x;

    invoke-direct {v1}, Ld2/x;-><init>()V

    .line 55
    iput v5, v1, Ld2/x;->b:I

    .line 56
    iget-object v3, v0, Ld2/d2;->f:Lj4/h0;

    .line 57
    iput-object v3, v1, Ld2/x;->c:Lj4/h0;

    .line 58
    iput-object v2, v1, Ld2/x;->d:Ljava/lang/String;

    .line 59
    iget-object v2, v1, Ld2/x;->a:Ljava/util/Date;

    if-nez v2, :cond_7

    .line 60
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 61
    iput-object v2, v1, Ld2/x;->a:Ljava/util/Date;

    .line 62
    :cond_7
    invoke-virtual {v0, v1}, Ld2/d2;->b(Ld2/x;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v0

    goto :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_8
    :goto_0
    const/4 v0, 0x0

    .line 63
    :cond_9
    :goto_1
    iget-object v1, p0, Ld2/i0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0xfa0

    if-gt v0, v1, :cond_e

    mul-int/lit16 v1, v0, 0xfa0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v2, v0, 0xfa0

    .line 64
    iget-object v3, p0, Ld2/i0;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 65
    iget v3, p0, Ld2/i0;->c:I

    if-ne v3, v7, :cond_a

    iget-object v3, p0, Ld2/i0;->e:Ld2/h0;

    .line 66
    iget-object v4, v3, Ld2/h0;->a:Ld2/f4;

    .line 67
    iget v9, p0, Ld2/i0;->a:I

    .line 68
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-virtual {v4, v9}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v4

    .line 70
    iget-boolean v9, p0, Ld2/i0;->d:Z

    invoke-virtual {v3, v4, v7, v9}, Ld2/h0;->b(Ld2/f4;IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 71
    iget-object v3, p0, Ld2/i0;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_1

    .line 72
    :cond_a
    iget v3, p0, Ld2/i0;->c:I

    if-ne v3, v6, :cond_b

    iget-object v3, p0, Ld2/i0;->e:Ld2/h0;

    .line 73
    iget-object v4, v3, Ld2/h0;->a:Ld2/f4;

    .line 74
    iget v9, p0, Ld2/i0;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 75
    invoke-virtual {v4, v9}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v4

    .line 76
    iget-boolean v9, p0, Ld2/i0;->d:Z

    invoke-virtual {v3, v4, v6, v9}, Ld2/h0;->b(Ld2/f4;IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 77
    iget-object v3, p0, Ld2/i0;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdColony [INFO]"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    :cond_b
    iget v3, p0, Ld2/i0;->c:I

    if-ne v3, v8, :cond_c

    iget-object v3, p0, Ld2/i0;->e:Ld2/h0;

    .line 79
    iget-object v4, v3, Ld2/h0;->a:Ld2/f4;

    .line 80
    iget v9, p0, Ld2/i0;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-virtual {v4, v9}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v4

    .line 82
    iget-boolean v9, p0, Ld2/i0;->d:Z

    invoke-virtual {v3, v4, v8, v9}, Ld2/h0;->b(Ld2/f4;IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 83
    iget-object v3, p0, Ld2/i0;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdColony [WARNING]"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 84
    :cond_c
    iget v3, p0, Ld2/i0;->c:I

    if-nez v3, :cond_d

    iget-object v3, p0, Ld2/i0;->e:Ld2/h0;

    .line 85
    iget-object v4, v3, Ld2/h0;->a:Ld2/f4;

    .line 86
    iget v9, p0, Ld2/i0;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 87
    invoke-virtual {v4, v9}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v4

    .line 88
    iget-boolean v9, p0, Ld2/i0;->d:Z

    invoke-virtual {v3, v4, v5, v9}, Ld2/h0;->b(Ld2/f4;IZ)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 89
    iget-object v3, p0, Ld2/i0;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto/16 :goto_1

    .line 90
    :cond_d
    iget v3, p0, Ld2/i0;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    sget v3, Ld2/h0;->f:I

    if-lt v3, v4, :cond_9

    .line 91
    iget-object v3, p0, Ld2/i0;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    return-void
.end method
