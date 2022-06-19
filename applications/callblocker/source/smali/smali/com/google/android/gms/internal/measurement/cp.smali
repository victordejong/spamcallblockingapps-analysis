.class final Lcom/google/android/gms/internal/measurement/cp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# direct methods
.method static a(I[BIILcom/google/android/gms/internal/measurement/cs;)I
    .locals 3

    .prologue
    .line 163
    .line 164
    ushr-int/lit8 v0, p0, 0x3

    .line 165
    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->d()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 168
    :cond_0
    and-int/lit8 v0, p0, 0x7

    .line 169
    packed-switch v0, :pswitch_data_0

    .line 186
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->d()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 170
    :pswitch_1
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 185
    :cond_1
    :goto_0
    return v0

    .line 172
    :pswitch_2
    add-int/lit8 v0, p2, 0x4

    goto :goto_0

    .line 173
    :pswitch_3
    add-int/lit8 v0, p2, 0x8

    goto :goto_0

    .line 174
    :pswitch_4
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 175
    iget v1, p4, Lcom/google/android/gms/internal/measurement/cs;->a:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 176
    :pswitch_5
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v2, v0, 0x4

    .line 177
    const/4 v1, 0x0

    move v0, p2

    .line 178
    :goto_1
    if-ge v0, p3, :cond_2

    .line 179
    invoke-static {p1, v0, p4}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 180
    iget v1, p4, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 181
    if-eq v1, v2, :cond_2

    .line 182
    invoke-static {v1, p1, v0, p3, p4}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BIILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    goto :goto_1

    .line 183
    :cond_2
    if-gt v0, p3, :cond_3

    if-eq v1, v2, :cond_1

    .line 184
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->g()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static a(I[BIILcom/google/android/gms/internal/measurement/el;Lcom/google/android/gms/internal/measurement/cs;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/measurement/el",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/cs;",
            ")I"
        }
    .end annotation

    .prologue
    .line 97
    check-cast p4, Lcom/google/android/gms/internal/measurement/eg;

    .line 98
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 99
    iget v1, p5, Lcom/google/android/gms/internal/measurement/cs;->a:I

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/measurement/eg;->d(I)V

    .line 100
    :goto_0
    if-ge v0, p3, :cond_0

    .line 101
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v1

    .line 102
    iget v2, p5, Lcom/google/android/gms/internal/measurement/cs;->a:I

    if-ne p0, v2, :cond_0

    .line 103
    invoke-static {p1, v1, p5}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 104
    iget v1, p5, Lcom/google/android/gms/internal/measurement/cs;->a:I

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/measurement/eg;->d(I)V

    goto :goto_0

    .line 106
    :cond_0
    return v0
.end method

.method static a(I[BIILcom/google/android/gms/internal/measurement/gx;Lcom/google/android/gms/internal/measurement/cs;)I
    .locals 7

    .prologue
    .line 126
    .line 127
    ushr-int/lit8 v0, p0, 0x3

    .line 128
    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->d()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 131
    :cond_0
    and-int/lit8 v0, p0, 0x7

    .line 132
    packed-switch v0, :pswitch_data_0

    .line 162
    :pswitch_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->d()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 133
    :pswitch_1
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/cp;->b([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 134
    iget-wide v2, p5, Lcom/google/android/gms/internal/measurement/cs;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, p0, v1}, Lcom/google/android/gms/internal/measurement/gx;->a(ILjava/lang/Object;)V

    .line 161
    :goto_0
    return v0

    .line 136
    :pswitch_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/cp;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/google/android/gms/internal/measurement/gx;->a(ILjava/lang/Object;)V

    .line 137
    add-int/lit8 v0, p2, 0x4

    goto :goto_0

    .line 138
    :pswitch_3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/cp;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p0, v0}, Lcom/google/android/gms/internal/measurement/gx;->a(ILjava/lang/Object;)V

    .line 139
    add-int/lit8 v0, p2, 0x8

    goto :goto_0

    .line 140
    :pswitch_4
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 141
    iget v1, p5, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 142
    if-gez v1, :cond_1

    .line 143
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->b()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 144
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, v0

    if-le v1, v2, :cond_2

    .line 145
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 146
    :cond_2
    if-nez v1, :cond_3

    .line 147
    sget-object v2, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/ct;

    invoke-virtual {p4, p0, v2}, Lcom/google/android/gms/internal/measurement/gx;->a(ILjava/lang/Object;)V

    .line 149
    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 148
    :cond_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/ct;->a([BII)Lcom/google/android/gms/internal/measurement/ct;

    move-result-object v2

    invoke-virtual {p4, p0, v2}, Lcom/google/android/gms/internal/measurement/gx;->a(ILjava/lang/Object;)V

    goto :goto_1

    .line 150
    :pswitch_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/gx;->b()Lcom/google/android/gms/internal/measurement/gx;

    move-result-object v4

    .line 151
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v6, v0, 0x4

    .line 152
    const/4 v0, 0x0

    move v1, p2

    .line 153
    :goto_2
    if-ge v1, p3, :cond_5

    .line 154
    invoke-static {p1, v1, p5}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v2

    .line 155
    iget v0, p5, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 156
    if-eq v0, v6, :cond_4

    move-object v1, p1

    move v3, p3

    move-object v5, p5

    .line 157
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BIILcom/google/android/gms/internal/measurement/gx;Lcom/google/android/gms/internal/measurement/cs;)I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 158
    :cond_5
    if-gt v1, p3, :cond_6

    if-eq v0, v6, :cond_7

    .line 159
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->g()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 160
    :cond_7
    invoke-virtual {p4, p0, v4}, Lcom/google/android/gms/internal/measurement/gx;->a(ILjava/lang/Object;)V

    move v0, v1

    .line 161
    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static a(I[BILcom/google/android/gms/internal/measurement/cs;)I
    .locals 3

    .prologue
    .line 6
    and-int/lit8 v1, p0, 0x7f

    .line 7
    add-int/lit8 v0, p2, 0x1

    aget-byte v2, p1, p2

    .line 8
    if-ltz v2, :cond_0

    .line 9
    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 29
    :goto_0
    return v0

    .line 11
    :cond_0
    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v1

    .line 12
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    .line 13
    if-ltz v0, :cond_1

    .line 14
    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v0, v2

    iput v0, p3, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr v0, v2

    .line 17
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    .line 18
    if-ltz v1, :cond_2

    .line 19
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v0

    .line 22
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    .line 23
    if-ltz v2, :cond_3

    .line 24
    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/gms/internal/measurement/cs;->a:I

    goto :goto_0

    .line 26
    :cond_3
    and-int/lit8 v2, v2, 0x7f

    shl-int/lit8 v2, v2, 0x1c

    or-int/2addr v2, v1

    .line 27
    :goto_1
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_4

    .line 28
    iput v2, p3, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move v0, v1

    .line 29
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method static a(Lcom/google/android/gms/internal/measurement/gd;I[BIILcom/google/android/gms/internal/measurement/el;Lcom/google/android/gms/internal/measurement/cs;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/gd",
            "<*>;I[BII",
            "Lcom/google/android/gms/internal/measurement/el",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/cs;",
            ")I"
        }
    .end annotation

    .prologue
    .line 116
    .line 117
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;[BIILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 118
    iget-object v1, p6, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_0
    if-ge v0, p4, :cond_0

    .line 120
    invoke-static {p2, v0, p6}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v1

    .line 121
    iget v2, p6, Lcom/google/android/gms/internal/measurement/cs;->a:I

    if-ne p1, v2, :cond_0

    .line 122
    invoke-static {p0, p2, v1, p4, p6}, Lcom/google/android/gms/internal/measurement/cp;->a(Lcom/google/android/gms/internal/measurement/gd;[BIILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 123
    iget-object v1, p6, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/measurement/el;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_0
    return v0
.end method

.method static a(Lcom/google/android/gms/internal/measurement/gd;[BIIILcom/google/android/gms/internal/measurement/cs;)I
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/measurement/fr;

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fr;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 93
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/fr;->a(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/cs;)I

    move-result v2

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->c(Ljava/lang/Object;)V

    .line 95
    iput-object v1, p5, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 96
    return v2
.end method

.method static a(Lcom/google/android/gms/internal/measurement/gd;[BIILcom/google/android/gms/internal/measurement/cs;)I
    .locals 7

    .prologue
    .line 79
    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    .line 80
    if-gez v0, :cond_2

    .line 81
    invoke-static {v0, p1, v3, p4}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v3

    .line 82
    iget v0, p4, Lcom/google/android/gms/internal/measurement/cs;->a:I

    move v6, v0

    .line 83
    :goto_0
    if-ltz v6, :cond_0

    sub-int v0, p3, v3

    if-le v6, v0, :cond_1

    .line 84
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 85
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/gd;->a()Ljava/lang/Object;

    move-result-object v1

    .line 86
    add-int v4, v3, v6

    move-object v0, p0

    move-object v2, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/gd;->a(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/cs;)V

    .line 87
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/measurement/gd;->c(Ljava/lang/Object;)V

    .line 88
    iput-object v1, p4, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 89
    add-int v0, v3, v6

    return v0

    :cond_2
    move v6, v0

    goto :goto_0
.end method

.method static a([BI)I
    .locals 2

    .prologue
    .line 46
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static a([BILcom/google/android/gms/internal/measurement/cs;)I
    .locals 2

    .prologue
    .line 1
    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    .line 2
    if-ltz v1, :cond_0

    .line 3
    iput v1, p2, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 5
    :goto_0
    return v0

    :cond_0
    invoke-static {v1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/cp;->a(I[BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    goto :goto_0
.end method

.method static a([BILcom/google/android/gms/internal/measurement/el;Lcom/google/android/gms/internal/measurement/cs;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/measurement/el",
            "<*>;",
            "Lcom/google/android/gms/internal/measurement/cs;",
            ")I"
        }
    .end annotation

    .prologue
    .line 107
    check-cast p2, Lcom/google/android/gms/internal/measurement/eg;

    .line 108
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 109
    iget v1, p3, Lcom/google/android/gms/internal/measurement/cs;->a:I

    add-int/2addr v1, v0

    .line 110
    :goto_0
    if-ge v0, v1, :cond_0

    .line 111
    invoke-static {p0, v0, p3}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 112
    iget v2, p3, Lcom/google/android/gms/internal/measurement/cs;->a:I

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/measurement/eg;->d(I)V

    goto :goto_0

    .line 113
    :cond_0
    if-eq v0, v1, :cond_1

    .line 114
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 115
    :cond_1
    return v0
.end method

.method static b([BILcom/google/android/gms/internal/measurement/cs;)I
    .locals 8

    .prologue
    const/4 v1, 0x7

    .line 30
    add-int/lit8 v0, p1, 0x1

    aget-byte v2, p0, p1

    int-to-long v2, v2

    .line 31
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 32
    iput-wide v2, p2, Lcom/google/android/gms/internal/measurement/cs;->b:J

    .line 45
    :goto_0
    return v0

    .line 35
    :cond_0
    const-wide/16 v4, 0x7f

    and-long/2addr v4, v2

    .line 36
    add-int/lit8 v3, v0, 0x1

    aget-byte v2, p0, v0

    .line 38
    and-int/lit8 v0, v2, 0x7f

    int-to-long v6, v0

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    move v0, v3

    .line 39
    :goto_1
    if-gez v2, :cond_1

    .line 40
    add-int/lit8 v3, v0, 0x1

    aget-byte v2, p0, v0

    .line 41
    add-int/lit8 v1, v1, 0x7

    .line 42
    and-int/lit8 v0, v2, 0x7f

    int-to-long v6, v0

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    move v0, v3

    goto :goto_1

    .line 43
    :cond_1
    iput-wide v4, p2, Lcom/google/android/gms/internal/measurement/cs;->b:J

    goto :goto_0
.end method

.method static b([BI)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 47
    aget-byte v0, p0, p1

    int-to-long v0, v0

    and-long/2addr v0, v6

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static c([BI)D
    .locals 2

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/cp;->b([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static c([BILcom/google/android/gms/internal/measurement/cs;)I
    .locals 4

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 51
    iget v1, p2, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 52
    if-gez v1, :cond_0

    .line 53
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->b()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 54
    :cond_0
    if-nez v1, :cond_1

    .line 55
    const-string/jumbo v1, ""

    iput-object v1, p2, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 58
    :goto_0
    return v0

    .line 57
    :cond_1
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/measurement/ef;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, p2, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 58
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static d([BI)F
    .locals 1

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/cp;->a([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method static d([BILcom/google/android/gms/internal/measurement/cs;)I
    .locals 3

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 60
    iget v1, p2, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 61
    if-gez v1, :cond_0

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->b()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 63
    :cond_0
    if-nez v1, :cond_1

    .line 64
    const-string/jumbo v1, ""

    iput-object v1, p2, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/hd;->b([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 67
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static e([BILcom/google/android/gms/internal/measurement/cs;)I
    .locals 3

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/cp;->a([BILcom/google/android/gms/internal/measurement/cs;)I

    move-result v0

    .line 69
    iget v1, p2, Lcom/google/android/gms/internal/measurement/cs;->a:I

    .line 70
    if-gez v1, :cond_0

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->b()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 72
    :cond_0
    array-length v2, p0

    sub-int/2addr v2, v0

    if-le v1, v2, :cond_1

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->a()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v0

    throw v0

    .line 74
    :cond_1
    if-nez v1, :cond_2

    .line 75
    sget-object v1, Lcom/google/android/gms/internal/measurement/ct;->a:Lcom/google/android/gms/internal/measurement/ct;

    iput-object v1, p2, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 78
    :goto_0
    return v0

    .line 77
    :cond_2
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ct;->a([BII)Lcom/google/android/gms/internal/measurement/ct;

    move-result-object v2

    iput-object v2, p2, Lcom/google/android/gms/internal/measurement/cs;->c:Ljava/lang/Object;

    .line 78
    add-int/2addr v0, v1

    goto :goto_0
.end method
