.class public abstract Lscala/collection/immutable/VectorPointer$class;
.super Ljava/lang/Object;
.source "Vector.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/VectorPointer;)V
    .locals 0

    return-void
.end method

.method public static final copyOf(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    .line 955
    sget-object p0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v0, "NULL"

    invoke-virtual {p0, v0}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 956
    :cond_0
    array-length p0, p1

    new-array p0, p0, [Ljava/lang/Object;

    .line 957
    sget-object v0, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static final copyRange(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2

    const/16 p0, 0x20

    new-array v0, p0, [Ljava/lang/Object;

    .line 1121
    sget-object v1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v1, p3, p2}, Lscala/math/package$;->max(II)I

    move-result v1

    sub-int/2addr p0, v1

    invoke-static {p1, p2, v0, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static debug(Lscala/collection/immutable/VectorPointer;)V
    .locals 0

    return-void
.end method

.method public static final getElem(Lscala/collection/immutable/VectorPointer;II)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    .line 804
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p0

    and-int/lit8 p1, p1, 0x1f

    aget-object p0, p0, p1

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1

    .line 807
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p0

    shr-int/lit8 p2, p1, 0x5

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    and-int/lit8 p1, p1, 0x1f

    aget-object p0, p0, p1

    goto/16 :goto_0

    :cond_1
    const v0, 0x8000

    if-ge p2, v0, :cond_2

    .line 810
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p0

    shr-int/lit8 p2, p1, 0xa

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    shr-int/lit8 p2, p1, 0x5

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    and-int/lit8 p1, p1, 0x1f

    aget-object p0, p0, p1

    goto/16 :goto_0

    :cond_2
    const/high16 v0, 0x100000

    if-ge p2, v0, :cond_3

    .line 813
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p0

    shr-int/lit8 p2, p1, 0xf

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    shr-int/lit8 p2, p1, 0xa

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    shr-int/lit8 p2, p1, 0x5

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    and-int/lit8 p1, p1, 0x1f

    aget-object p0, p0, p1

    goto :goto_0

    :cond_3
    const/high16 v0, 0x2000000

    if-ge p2, v0, :cond_4

    .line 816
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p0

    shr-int/lit8 p2, p1, 0x14

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    shr-int/lit8 p2, p1, 0xf

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    shr-int/lit8 p2, p1, 0xa

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    shr-int/lit8 p2, p1, 0x5

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    and-int/lit8 p1, p1, 0x1f

    aget-object p0, p0, p1

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_5

    .line 819
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p0

    shr-int/lit8 p2, p1, 0x19

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    shr-int/lit8 p2, p1, 0x14

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    shr-int/lit8 p2, p1, 0xf

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    shr-int/lit8 p2, p1, 0xa

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    shr-int/lit8 p2, p1, 0x5

    and-int/lit8 p2, p2, 0x1f

    aget-object p0, p0, p2

    check-cast p0, [Ljava/lang/Object;

    and-int/lit8 p1, p1, 0x1f

    aget-object p0, p0, p1

    :goto_0
    return-object p0

    .line 821
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static final gotoFreshPosWritable0(Lscala/collection/immutable/VectorPointer;III)V
    .locals 4

    const/16 v0, 0x20

    if-lt p3, v0, :cond_14

    const/16 v1, 0x400

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ge p3, v1, :cond_1

    .line 1138
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    if-ne p2, v3, :cond_0

    new-array p2, v0, [Ljava/lang/Object;

    .line 1139
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1140
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p3

    aput-object p3, p2, p1

    .line 1141
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p1

    add-int/2addr p1, v3

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    .line 1143
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const v1, 0x8000

    if-ge p3, v1, :cond_4

    .line 1146
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    new-array p3, v0, [Ljava/lang/Object;

    .line 1147
    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1148
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 p1, p1, 0xa

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, p1

    .line 1149
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p1

    add-int/2addr p1, v3

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 1151
    :cond_2
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p2, p2, 0xa

    and-int/lit8 p2, p2, 0x1f

    aget-object p1, p1, p2

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1152
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    .line 1153
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const/high16 v1, 0x100000

    if-ge p3, v1, :cond_8

    .line 1156
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_5

    new-array p3, v0, [Ljava/lang/Object;

    .line 1157
    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1158
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 p1, p1, 0xf

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, p1

    new-array p1, v0, [Ljava/lang/Object;

    .line 1159
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 1160
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1161
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p1

    add-int/2addr p1, v3

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 1163
    :cond_5
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0xf

    and-int/lit8 p3, p3, 0x1f

    aget-object p1, p1, p3

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1164
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1165
    :cond_6
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p2, p2, 0xa

    and-int/lit8 p2, p2, 0x1f

    aget-object p1, p1, p2

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1166
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_7

    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    :cond_7
    new-array p1, v0, [Ljava/lang/Object;

    .line 1167
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    const/high16 v1, 0x2000000

    if-ge p3, v1, :cond_d

    .line 1170
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p3

    const/4 v1, 0x4

    if-ne p3, v1, :cond_9

    new-array p3, v0, [Ljava/lang/Object;

    .line 1171
    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1172
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 p1, p1, 0x14

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, p1

    new-array p1, v0, [Ljava/lang/Object;

    .line 1173
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 1174
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 1175
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1176
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p1

    add-int/2addr p1, v3

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 1178
    :cond_9
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0x14

    and-int/lit8 p3, p3, 0x1f

    aget-object p1, p1, p3

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1179
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_a

    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1180
    :cond_a
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0xf

    and-int/lit8 p3, p3, 0x1f

    aget-object p1, p1, p3

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1181
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_b

    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1182
    :cond_b
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p2, p2, 0xa

    and-int/lit8 p2, p2, 0x1f

    aget-object p1, p1, p2

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1183
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    :cond_c
    new-array p1, v0, [Ljava/lang/Object;

    .line 1184
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p3, v1, :cond_13

    .line 1187
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p3

    if-ne p3, v2, :cond_e

    new-array p3, v0, [Ljava/lang/Object;

    .line 1188
    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    .line 1189
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 p1, p1, 0x19

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, p1

    new-array p1, v0, [Ljava/lang/Object;

    .line 1190
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 1191
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 1192
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 1193
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1194
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p1

    add-int/2addr p1, v3

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 1196
    :cond_e
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0x14

    and-int/lit8 p3, p3, 0x1f

    aget-object p1, p1, p3

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1197
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_f

    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1198
    :cond_f
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, p3

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1199
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1200
    :cond_10
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0xf

    and-int/lit8 p3, p3, 0x1f

    aget-object p1, p1, p3

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1201
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_11

    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1202
    :cond_11
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p2, p2, 0xa

    and-int/lit8 p2, p2, 0x1f

    aget-object p1, p1, p2

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1203
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_12

    new-array p1, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    :cond_12
    new-array p1, v0, [Ljava/lang/Object;

    .line 1204
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 1206
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_14
    :goto_0
    return-void
.end method

.method public static final gotoFreshPosWritable1(Lscala/collection/immutable/VectorPointer;III)V
    .locals 0

    .line 1214
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->stabilize(I)V

    .line 1215
    invoke-interface {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer;->gotoFreshPosWritable0(III)V

    return-void
.end method

.method public static final gotoNextBlockStart(Lscala/collection/immutable/VectorPointer;II)V
    .locals 2

    const/16 v0, 0x400

    if-ge p2, v0, :cond_0

    .line 868
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const v0, 0x8000

    const/4 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 871
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0xa

    and-int/lit8 p1, p1, 0x1f

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 872
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const/high16 v0, 0x100000

    if-ge p2, v0, :cond_2

    .line 875
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0xf

    and-int/lit8 p1, p1, 0x1f

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 876
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 877
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x2000000

    if-ge p2, v0, :cond_3

    .line 880
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0x14

    and-int/lit8 p1, p1, 0x1f

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 881
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 882
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 883
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_4

    .line 886
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0x19

    and-int/lit8 p1, p1, 0x1f

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 887
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 888
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 889
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 890
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 892
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static final gotoNextBlockStartWritable(Lscala/collection/immutable/VectorPointer;II)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/16 v3, 0x20

    const/16 v4, 0x400

    if-ge p2, v4, :cond_1

    .line 901
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    if-ne p2, v2, :cond_0

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p2, v0

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    :cond_0
    new-array p2, v3, [Ljava/lang/Object;

    .line 902
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 903
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, p1

    goto/16 :goto_0

    :cond_1
    const v4, 0x8000

    if-ge p2, v4, :cond_3

    .line 906
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    :cond_2
    new-array p2, v3, [Ljava/lang/Object;

    .line 907
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 908
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 909
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 910
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0xa

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, p1

    goto/16 :goto_0

    :cond_3
    const/high16 v4, 0x100000

    if-ge p2, v4, :cond_5

    .line 913
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    :cond_4
    new-array p2, v3, [Ljava/lang/Object;

    .line 914
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 915
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 916
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 917
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 918
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 919
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0xf

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, p1

    goto/16 :goto_0

    :cond_5
    const/high16 v4, 0x2000000

    if-ge p2, v4, :cond_7

    .line 922
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_6

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    :cond_6
    new-array p2, v3, [Ljava/lang/Object;

    .line 923
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 924
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 925
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 926
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 927
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 928
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 929
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 930
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0x14

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, p1

    goto/16 :goto_0

    :cond_7
    const/high16 v4, 0x40000000    # 2.0f

    if-ge p2, v4, :cond_9

    .line 933
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    if-ne p2, v1, :cond_8

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    :cond_8
    new-array p2, v3, [Ljava/lang/Object;

    .line 934
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 935
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 936
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 937
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    new-array p2, v3, [Ljava/lang/Object;

    .line 938
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 939
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 940
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 941
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 942
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x14

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    .line 943
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0x19

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, p1

    :goto_0
    return-void

    .line 945
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static final gotoPos(Lscala/collection/immutable/VectorPointer;II)V
    .locals 1

    const/16 v0, 0x20

    if-lt p2, v0, :cond_5

    const/16 v0, 0x400

    if-ge p2, v0, :cond_0

    .line 833
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const v0, 0x8000

    if-ge p2, v0, :cond_1

    .line 836
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    aget-object p2, p2, v0

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 837
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const/high16 v0, 0x100000

    if-ge p2, v0, :cond_2

    .line 840
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x1f

    aget-object p2, p2, v0

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 841
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    aget-object p2, p2, v0

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 842
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/high16 v0, 0x2000000

    if-ge p2, v0, :cond_3

    .line 845
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x14

    and-int/lit8 v0, v0, 0x1f

    aget-object p2, p2, v0

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 846
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x1f

    aget-object p2, p2, v0

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 847
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    aget-object p2, p2, v0

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 848
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_4

    .line 851
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x19

    and-int/lit8 v0, v0, 0x1f

    aget-object p2, p2, v0

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 852
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x14

    and-int/lit8 v0, v0, 0x1f

    aget-object p2, p2, v0

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 853
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x1f

    aget-object p2, p2, v0

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 854
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    aget-object p2, p2, v0

    check-cast p2, [Ljava/lang/Object;

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 855
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    aget-object p1, p2, p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 857
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method public static final gotoPosWritable0(Lscala/collection/immutable/VectorPointer;II)V
    .locals 2

    .line 1020
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-eqz p2, :cond_5

    const/4 v1, 0x5

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    .line 1022
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    .line 1023
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x19

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0, p2, v0}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1024
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x14

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0, p2, v0}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1025
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0, p2, v0}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1026
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0, p2, v0}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1027
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0, p2, p1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1020
    :cond_0
    new-instance p0, Lscala/MatchError;

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 1029
    :cond_1
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1030
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0x14

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0, p2, v0}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1031
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0, p2, v0}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1032
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0, p2, v0}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1033
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0, p2, p1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1035
    :cond_2
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1036
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0, p2, v0}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1037
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0, p2, v0}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1038
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0, p2, p1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 1040
    :cond_3
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1041
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0, p2, v0}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1042
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0, p2, p1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 1044
    :cond_4
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1045
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    shr-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0, p2, p1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 1047
    :cond_5
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final gotoPosWritable1(Lscala/collection/immutable/VectorPointer;III)V
    .locals 2

    const/16 v0, 0x20

    if-ge p3, v0, :cond_0

    .line 1055
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x400

    if-ge p3, v0, :cond_1

    .line 1058
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1059
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, p1

    .line 1060
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p2, p2, 0x5

    and-int/lit8 p2, p2, 0x1f

    invoke-interface {p0, p1, p2}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const v0, 0x8000

    if-ge p3, v0, :cond_2

    .line 1063
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1064
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1065
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1066
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 p1, p1, 0xa

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, p1

    .line 1067
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0xa

    and-int/lit8 p3, p3, 0x1f

    invoke-interface {p0, p1, p3}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1068
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p2, p2, 0x5

    and-int/lit8 p2, p2, 0x1f

    invoke-interface {p0, p1, p2}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/high16 v0, 0x100000

    if-ge p3, v0, :cond_3

    .line 1071
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1072
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1073
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1074
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1075
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1076
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 p1, p1, 0xf

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, p1

    .line 1077
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0xf

    and-int/lit8 p3, p3, 0x1f

    invoke-interface {p0, p1, p3}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1078
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0xa

    and-int/lit8 p3, p3, 0x1f

    invoke-interface {p0, p1, p3}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1079
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p2, p2, 0x5

    and-int/lit8 p2, p2, 0x1f

    invoke-interface {p0, p1, p2}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const/high16 v0, 0x2000000

    if-ge p3, v0, :cond_4

    .line 1082
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1083
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1084
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1085
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1086
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1087
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1088
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1089
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 p1, p1, 0x14

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, p1

    .line 1090
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0x14

    and-int/lit8 p3, p3, 0x1f

    invoke-interface {p0, p1, p3}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1091
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0xf

    and-int/lit8 p3, p3, 0x1f

    invoke-interface {p0, p1, p3}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1092
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0xa

    and-int/lit8 p3, p3, 0x1f

    invoke-interface {p0, p1, p3}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1093
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p2, p2, 0x5

    and-int/lit8 p2, p2, 0x1f

    invoke-interface {p0, p1, p2}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p3, v0, :cond_5

    .line 1096
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1097
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1098
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1099
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1100
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, p3}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    .line 1101
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1102
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 v0, p1, 0xa

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1103
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 v0, p1, 0xf

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1104
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 v0, p1, 0x14

    and-int/lit8 v0, v0, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p3, v0

    .line 1105
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p3

    shr-int/lit8 p1, p1, 0x19

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, p1

    .line 1106
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0x19

    and-int/lit8 p3, p3, 0x1f

    invoke-interface {p0, p1, p3}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1107
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0x14

    and-int/lit8 p3, p3, 0x1f

    invoke-interface {p0, p1, p3}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1108
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0xf

    and-int/lit8 p3, p3, 0x1f

    invoke-interface {p0, p1, p3}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1109
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p3, p2, 0xa

    and-int/lit8 p3, p3, 0x1f

    invoke-interface {p0, p1, p3}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1110
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p1

    shr-int/lit8 p2, p2, 0x5

    and-int/lit8 p2, p2, 0x1f

    invoke-interface {p0, p1, p2}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 1112
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static final initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;)V
    .locals 1

    .line 764
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lscala/collection/immutable/VectorPointer;->initFrom(Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method

.method public static final initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;I)V
    .locals 0

    .line 767
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    add-int/lit8 p2, p2, -0x1

    packed-switch p2, :pswitch_data_0

    .line 768
    new-instance p0, Lscala/MatchError;

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 791
    :pswitch_0
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    .line 792
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 793
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 794
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 795
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 796
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 785
    :pswitch_1
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 786
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 787
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 788
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 789
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 780
    :pswitch_2
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 781
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 782
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 783
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 776
    :pswitch_3
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 777
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 778
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 773
    :pswitch_4
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 774
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 771
    :pswitch_5
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    :goto_0
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final nullSlotAndCopy(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2

    .line 963
    aget-object v0, p1, p2

    const/4 v1, 0x0

    .line 964
    aput-object v1, p1, p2

    .line 965
    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final stabilize(Lscala/collection/immutable/VectorPointer;I)V
    .locals 4

    .line 973
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    .line 975
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    .line 976
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 977
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 978
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 979
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 980
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x19

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 981
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 982
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 983
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 984
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, p1

    goto/16 :goto_0

    .line 973
    :cond_0
    new-instance p0, Lscala/MatchError;

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 986
    :cond_1
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 987
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 988
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 989
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 990
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 991
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 992
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 993
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, p1

    goto/16 :goto_0

    .line 995
    :cond_2
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 996
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 997
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 998
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 999
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1000
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, p1

    goto :goto_0

    .line 1002
    :cond_3
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1003
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1004
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 1005
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, p1

    goto :goto_0

    .line 1007
    :cond_4
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1008
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, p1

    :cond_5
    :goto_0
    return-void
.end method
