.class public final Lcom/mp4parser/iso14496/part15/c;
.super Lcom/googlecode/mp4parser/b/b/b/b;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:I

.field e:J

.field f:J

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/googlecode/mp4parser/b/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "tscl"

    return-object v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    .line 122
    iput v0, p0, Lcom/mp4parser/iso14496/part15/c;->a:I

    .line 2068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    shr-int/lit8 v1, v1, 0x6

    .line 124
    iput v1, p0, Lcom/mp4parser/iso14496/part15/c;->b:I

    and-int/lit8 v1, v0, 0x20

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    :goto_0
    iput-boolean v1, p0, Lcom/mp4parser/iso14496/part15/c;->c:Z

    and-int/lit8 v0, v0, 0x1f

    .line 126
    iput v0, p0, Lcom/mp4parser/iso14496/part15/c;->d:I

    .line 127
    invoke-static {p1}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mp4parser/iso14496/part15/c;->e:J

    .line 128
    invoke-static {p1}, Lcom/b/a/e;->i(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mp4parser/iso14496/part15/c;->f:J

    .line 3068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    .line 129
    iput v0, p0, Lcom/mp4parser/iso14496/part15/c;->g:I

    .line 130
    invoke-static {p1}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/mp4parser/iso14496/part15/c;->h:I

    .line 131
    invoke-static {p1}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/mp4parser/iso14496/part15/c;->i:I

    .line 4068
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/b/a/e;->a(B)I

    move-result v0

    .line 132
    iput v0, p0, Lcom/mp4parser/iso14496/part15/c;->j:I

    .line 133
    invoke-static {p1}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/mp4parser/iso14496/part15/c;->k:I

    return-void
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 3

    const/16 v0, 0x14

    .line 138
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 140
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->a:I

    invoke-static {v0, v1}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 141
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->b:I

    shl-int/lit8 v1, v1, 0x6

    iget-boolean v2, p0, Lcom/mp4parser/iso14496/part15/c;->c:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    iget v2, p0, Lcom/mp4parser/iso14496/part15/c;->d:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 143
    iget-wide v1, p0, Lcom/mp4parser/iso14496/part15/c;->e:J

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 144
    iget-wide v1, p0, Lcom/mp4parser/iso14496/part15/c;->f:J

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;J)V

    .line 145
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->g:I

    invoke-static {v0, v1}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 146
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->h:I

    invoke-static {v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 147
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->i:I

    invoke-static {v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 148
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->j:I

    invoke-static {v0, v1}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 149
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->k:I

    invoke-static {v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 150
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    check-cast p1, Lcom/mp4parser/iso14496/part15/c;

    .line 166
    iget v2, p0, Lcom/mp4parser/iso14496/part15/c;->a:I

    iget v3, p1, Lcom/mp4parser/iso14496/part15/c;->a:I

    if-eq v2, v3, :cond_2

    return v1

    .line 167
    :cond_2
    iget v2, p0, Lcom/mp4parser/iso14496/part15/c;->i:I

    iget v3, p1, Lcom/mp4parser/iso14496/part15/c;->i:I

    if-eq v2, v3, :cond_3

    return v1

    .line 168
    :cond_3
    iget v2, p0, Lcom/mp4parser/iso14496/part15/c;->k:I

    iget v3, p1, Lcom/mp4parser/iso14496/part15/c;->k:I

    if-eq v2, v3, :cond_4

    return v1

    .line 169
    :cond_4
    iget v2, p0, Lcom/mp4parser/iso14496/part15/c;->j:I

    iget v3, p1, Lcom/mp4parser/iso14496/part15/c;->j:I

    if-eq v2, v3, :cond_5

    return v1

    .line 170
    :cond_5
    iget v2, p0, Lcom/mp4parser/iso14496/part15/c;->h:I

    iget v3, p1, Lcom/mp4parser/iso14496/part15/c;->h:I

    if-eq v2, v3, :cond_6

    return v1

    .line 171
    :cond_6
    iget-wide v2, p0, Lcom/mp4parser/iso14496/part15/c;->f:J

    iget-wide v4, p1, Lcom/mp4parser/iso14496/part15/c;->f:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_7

    return v1

    .line 172
    :cond_7
    iget v2, p0, Lcom/mp4parser/iso14496/part15/c;->g:I

    iget v3, p1, Lcom/mp4parser/iso14496/part15/c;->g:I

    if-eq v2, v3, :cond_8

    return v1

    .line 173
    :cond_8
    iget-wide v2, p0, Lcom/mp4parser/iso14496/part15/c;->e:J

    iget-wide v4, p1, Lcom/mp4parser/iso14496/part15/c;->e:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    return v1

    .line 174
    :cond_9
    iget v2, p0, Lcom/mp4parser/iso14496/part15/c;->d:I

    iget v3, p1, Lcom/mp4parser/iso14496/part15/c;->d:I

    if-eq v2, v3, :cond_a

    return v1

    .line 175
    :cond_a
    iget v2, p0, Lcom/mp4parser/iso14496/part15/c;->b:I

    iget v3, p1, Lcom/mp4parser/iso14496/part15/c;->b:I

    if-eq v2, v3, :cond_b

    return v1

    .line 176
    :cond_b
    iget-boolean v2, p0, Lcom/mp4parser/iso14496/part15/c;->c:Z

    iget-boolean p1, p1, Lcom/mp4parser/iso14496/part15/c;->c:Z

    if-eq v2, p1, :cond_c

    return v1

    :cond_c
    return v0

    :cond_d
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 183
    iget v0, p0, Lcom/mp4parser/iso14496/part15/c;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 184
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 185
    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/c;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 186
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 187
    iget-wide v1, p0, Lcom/mp4parser/iso14496/part15/c;->e:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 188
    iget-wide v1, p0, Lcom/mp4parser/iso14496/part15/c;->f:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 190
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 191
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 192
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 193
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->k:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TemporalLayerSampleGroup{temporalLayerId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tlprofile_space="

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tltier_flag="

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mp4parser/iso14496/part15/c;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tlprofile_idc="

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tlprofile_compatibility_flags="

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mp4parser/iso14496/part15/c;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tlconstraint_indicator_flags="

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mp4parser/iso14496/part15/c;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tllevel_idc="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tlMaxBitRate="

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tlAvgBitRate="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tlConstantFrameRate="

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tlAvgFrameRate="

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mp4parser/iso14496/part15/c;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
