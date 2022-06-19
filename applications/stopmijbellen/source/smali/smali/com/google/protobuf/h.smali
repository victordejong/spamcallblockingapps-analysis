.class public final Lcom/google/protobuf/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/protobuf/h$a<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/protobuf/h;


# instance fields
.field public final a:Lcom/google/protobuf/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/c0<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/h;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/h;->d:Lcom/google/protobuf/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/protobuf/c0;->g:I

    .line 3
    new-instance v0, Lcom/google/protobuf/b0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/protobuf/b0;-><init>(I)V

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 5
    sget p1, Lcom/google/protobuf/c0;->g:I

    .line 6
    new-instance p1, Lcom/google/protobuf/b0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/protobuf/b0;-><init>(I)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    .line 9
    invoke-virtual {p0}, Lcom/google/protobuf/h;->l()V

    .line 10
    invoke-virtual {p0}, Lcom/google/protobuf/h;->l()V

    return-void
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, [B

    .line 3
    array-length v0, p0

    new-array v0, v0, [B

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static c(Lx6/c0;ILjava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result p1

    .line 2
    sget-object v0, Lx6/c0;->l:Lx6/c0;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 3
    :cond_0
    invoke-static {p0, p2}, Lcom/google/protobuf/h;->d(Lx6/c0;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(Lx6/c0;Ljava/lang/Object;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->f0(J)I

    move-result p0

    return p0

    .line 4
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->d0(I)I

    move-result p0

    return p0

    .line 5
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    return v1

    .line 6
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    return v0

    .line 7
    :pswitch_4
    instance-of p0, p1, Lcom/google/protobuf/k$a;

    if-eqz p0, :cond_0

    .line 8
    check-cast p1, Lcom/google/protobuf/k$a;

    invoke-interface {p1}, Lcom/google/protobuf/k$a;->y()I

    move-result p0

    .line 9
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->W(I)I

    move-result p0

    return p0

    .line 10
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 11
    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->W(I)I

    move-result p0

    return p0

    .line 12
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result p0

    return p0

    .line 13
    :pswitch_6
    instance-of p0, p1, Lx6/c;

    if-eqz p0, :cond_1

    .line 14
    check-cast p1, Lx6/c;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->O(Lx6/c;)I

    move-result p0

    return p0

    .line 15
    :cond_1
    check-cast p1, [B

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 16
    array-length p0, p1

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0

    .line 17
    :pswitch_7
    instance-of p0, p1, Lcom/google/protobuf/l;

    if-eqz p0, :cond_2

    .line 18
    check-cast p1, Lcom/google/protobuf/l;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->Y(Lcom/google/protobuf/m;)I

    move-result p0

    return p0

    .line 19
    :cond_2
    check-cast p1, Lcom/google/protobuf/u;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 20
    invoke-interface {p1}, Lcom/google/protobuf/u;->b()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0

    .line 21
    :pswitch_8
    check-cast p1, Lcom/google/protobuf/u;

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    .line 22
    invoke-interface {p1}, Lcom/google/protobuf/u;->b()I

    move-result p0

    return p0

    .line 23
    :pswitch_9
    instance-of p0, p1, Lx6/c;

    if-eqz p0, :cond_3

    .line 24
    check-cast p1, Lx6/c;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->O(Lx6/c;)I

    move-result p0

    return p0

    .line 25
    :cond_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->h0(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 26
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    const/4 p0, 0x1

    return p0

    .line 27
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    return v0

    .line 28
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    return v1

    .line 29
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->W(I)I

    move-result p0

    return p0

    .line 30
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->m0(J)I

    move-result p0

    return p0

    .line 31
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 32
    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->m0(J)I

    move-result p0

    return p0

    .line 33
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    return v0

    .line 34
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    sget-object p0, Lcom/google/protobuf/CodedOutputStream;->b:Ljava/util/logging/Logger;

    return v1

    nop

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

.method public static e(Lcom/google/protobuf/h$a;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/h$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/h$a;->A()Lx6/c0;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/protobuf/h$a;->y()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lcom/google/protobuf/h$a;->z()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {p0}, Lcom/google/protobuf/h$a;->F()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 5
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/google/protobuf/h;->d(Lx6/c0;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 8
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->k0(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 9
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/h;->c(Lx6/c0;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    .line 11
    :cond_3
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/h;->c(Lx6/c0;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static j(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/h$a<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h$a;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/h$a;->E()Lx6/d0;

    move-result-object v1

    sget-object v2, Lx6/d0;->j:Lx6/d0;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/h$a;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/u;

    .line 5
    invoke-interface {v0}, Lx6/p;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 7
    instance-of v0, p0, Lcom/google/protobuf/u;

    if-eqz v0, :cond_2

    .line 8
    check-cast p0, Lcom/google/protobuf/u;

    invoke-interface {p0}, Lx6/p;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 9
    :cond_2
    instance-of p0, p0, Lcom/google/protobuf/l;

    if-eqz p0, :cond_3

    return v3

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public static p(Lcom/google/protobuf/CodedOutputStream;Lx6/c0;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lx6/c0;->l:Lx6/c0;

    if-ne p1, v0, :cond_0

    .line 2
    check-cast p3, Lcom/google/protobuf/u;

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/CodedOutputStream;->G0(II)V

    .line 4
    invoke-interface {p3, p0}, Lcom/google/protobuf/u;->f(Lcom/google/protobuf/CodedOutputStream;)V

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/protobuf/CodedOutputStream;->G0(II)V

    goto/16 :goto_0

    .line 6
    :cond_0
    iget v0, p1, Lx6/c0;->b:I

    .line 7
    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->G0(II)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 9
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 10
    invoke-static {p1, p2}, Lcom/google/protobuf/CodedOutputStream;->o0(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->K0(J)V

    goto/16 :goto_0

    .line 11
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 12
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->n0(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->I0(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->x0(J)V

    goto/16 :goto_0

    .line 15
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->v0(I)V

    goto/16 :goto_0

    .line 17
    :pswitch_4
    instance-of p1, p3, Lcom/google/protobuf/k$a;

    if-eqz p1, :cond_1

    .line 18
    check-cast p3, Lcom/google/protobuf/k$a;

    invoke-interface {p3}, Lcom/google/protobuf/k$a;->y()I

    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->z0(I)V

    goto/16 :goto_0

    .line 20
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->z0(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->I0(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    instance-of p1, p3, Lx6/c;

    if-eqz p1, :cond_2

    .line 24
    check-cast p3, Lx6/c;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->t0(Lx6/c;)V

    goto/16 :goto_0

    .line 25
    :cond_2
    check-cast p3, [B

    .line 26
    array-length p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/protobuf/CodedOutputStream;->r0([BII)V

    goto/16 :goto_0

    .line 27
    :pswitch_7
    check-cast p3, Lcom/google/protobuf/u;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->B0(Lcom/google/protobuf/u;)V

    goto/16 :goto_0

    .line 28
    :pswitch_8
    check-cast p3, Lcom/google/protobuf/u;

    .line 29
    invoke-interface {p3, p0}, Lcom/google/protobuf/u;->f(Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_0

    .line 30
    :pswitch_9
    instance-of p1, p3, Lx6/c;

    if-eqz p1, :cond_3

    .line 31
    check-cast p3, Lx6/c;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->t0(Lx6/c;)V

    goto :goto_0

    .line 32
    :cond_3
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/protobuf/CodedOutputStream;->F0(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    int-to-byte p1, p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->p0(B)V

    goto :goto_0

    .line 35
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->v0(I)V

    goto :goto_0

    .line 36
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->x0(J)V

    goto :goto_0

    .line 37
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->z0(I)V

    goto :goto_0

    .line 38
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->K0(J)V

    goto :goto_0

    .line 39
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->K0(J)V

    goto :goto_0

    .line 41
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 42
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->v0(I)V

    goto :goto_0

    .line 43
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->x0(J)V

    :goto_0
    return-void

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


# virtual methods
.method public a()Lcom/google/protobuf/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/h;

    invoke-direct {v0}, Lcom/google/protobuf/h;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v2}, Lcom/google/protobuf/c0;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/c0;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/h$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/h;->n(Lcom/google/protobuf/h$a;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v1}, Lcom/google/protobuf/c0;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/h$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/h;->n(Lcom/google/protobuf/h$a;Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/h;->c:Z

    iput-boolean v1, v0, Lcom/google/protobuf/h;->c:Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/h;->a()Lcom/google/protobuf/h;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/h;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/protobuf/h;

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    iget-object p1, p1, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/c0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/google/protobuf/h$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/l;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/protobuf/l;

    invoke-virtual {p1}, Lcom/google/protobuf/l;->c()Lcom/google/protobuf/u;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final g(Ljava/util/Map$Entry;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h$a;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/h$a;->E()Lx6/d0;

    move-result-object v2

    sget-object v3, Lx6/d0;->j:Lx6/d0;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/protobuf/h$a;->z()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/protobuf/h$a;->F()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    instance-of v0, v1, Lcom/google/protobuf/l;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/h$a;

    invoke-interface {p1}, Lcom/google/protobuf/h$a;->y()I

    move-result p1

    check-cast v1, Lcom/google/protobuf/l;

    .line 8
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 9
    invoke-static {v4, p1}, Lcom/google/protobuf/CodedOutputStream;->j0(II)I

    move-result p1

    add-int/2addr p1, v0

    .line 10
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->Y(Lcom/google/protobuf/m;)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    return v1

    .line 11
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/h$a;

    invoke-interface {p1}, Lcom/google/protobuf/h$a;->y()I

    move-result p1

    check-cast v1, Lcom/google/protobuf/u;

    .line 12
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 13
    invoke-static {v4, p1}, Lcom/google/protobuf/CodedOutputStream;->j0(II)I

    move-result p1

    add-int/2addr p1, v0

    .line 14
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->i0(I)I

    move-result v0

    .line 15
    invoke-interface {v1}, Lcom/google/protobuf/u;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    return v1

    .line 16
    :cond_1
    invoke-static {v0, v1}, Lcom/google/protobuf/h;->e(Lcom/google/protobuf/h$a;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v0}, Lcom/google/protobuf/c0;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v2}, Lcom/google/protobuf/c0;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/c0;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/h;->j(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v1}, Lcom/google/protobuf/c0;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v2}, Lcom/google/protobuf/h;->j(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public k()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/h;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/l$c;

    iget-object v1, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v1}, Lcom/google/protobuf/c0;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/l$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v0}, Lcom/google/protobuf/c0;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/h;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v0}, Lcom/google/protobuf/c0;->g()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/h;->b:Z

    return-void
.end method

.method public final m(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h$a;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lcom/google/protobuf/l;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/google/protobuf/l;

    invoke-virtual {p1}, Lcom/google/protobuf/l;->c()Lcom/google/protobuf/u;

    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/h$a;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/protobuf/h;->f(Lcom/google/protobuf/h$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/c0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {v0}, Lcom/google/protobuf/h$a;->E()Lx6/d0;

    move-result-object v1

    sget-object v2, Lx6/d0;->j:Lx6/d0;

    if-ne v1, v2, :cond_5

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/protobuf/h;->f(Lcom/google/protobuf/h$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-static {p1}, Lcom/google/protobuf/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/c0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_4
    check-cast v1, Lcom/google/protobuf/u;

    .line 15
    invoke-interface {v1}, Lcom/google/protobuf/u;->d()Lcom/google/protobuf/u$a;

    move-result-object v1

    check-cast p1, Lcom/google/protobuf/u;

    invoke-interface {v0, v1, p1}, Lcom/google/protobuf/h$a;->C(Lcom/google/protobuf/u$a;Lcom/google/protobuf/u;)Lcom/google/protobuf/u$a;

    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/protobuf/i$a;

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/c0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-static {p1}, Lcom/google/protobuf/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/c0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public n(Lcom/google/protobuf/h$a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/h$a;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-interface {p1}, Lcom/google/protobuf/h$a;->A()Lx6/c0;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/h;->o(Lx6/c0;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-interface {p1}, Lcom/google/protobuf/h$a;->A()Lx6/c0;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/h;->o(Lx6/c0;Ljava/lang/Object;)V

    .line 9
    :goto_1
    instance-of v0, p2, Lcom/google/protobuf/l;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/protobuf/h;->c:Z

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/h;->a:Lcom/google/protobuf/c0;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/c0;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final o(Lx6/c0;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/protobuf/k;->a:Ljava/nio/charset/Charset;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Lx6/c0;->a:Lx6/d0;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    instance-of p1, p2, Lcom/google/protobuf/u;

    if-nez p1, :cond_1

    instance-of p1, p2, Lcom/google/protobuf/l;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :pswitch_1
    instance-of p1, p2, Ljava/lang/Integer;

    if-nez p1, :cond_1

    instance-of p1, p2, Lcom/google/protobuf/k$a;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :pswitch_2
    instance-of p1, p2, Lx6/c;

    if-nez p1, :cond_1

    instance-of p1, p2, [B

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    move v1, v0

    goto :goto_1

    .line 8
    :pswitch_3
    instance-of v1, p2, Ljava/lang/String;

    goto :goto_1

    .line 9
    :pswitch_4
    instance-of v1, p2, Ljava/lang/Boolean;

    goto :goto_1

    .line 10
    :pswitch_5
    instance-of v1, p2, Ljava/lang/Double;

    goto :goto_1

    .line 11
    :pswitch_6
    instance-of v1, p2, Ljava/lang/Float;

    goto :goto_1

    .line 12
    :pswitch_7
    instance-of v1, p2, Ljava/lang/Long;

    goto :goto_1

    .line 13
    :pswitch_8
    instance-of v1, p2, Ljava/lang/Integer;

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
