.class final Lcom/google/android/exoplayer2/text/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/e/c$b;,
        Lcom/google/android/exoplayer2/text/e/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/Integer;

.field public final d:F

.field public final e:Z

.field public final f:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;FZZ)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/e/c;->a:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/google/android/exoplayer2/text/e/c;->b:I

    .line 107
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/e/c;->c:Ljava/lang/Integer;

    .line 108
    iput p4, p0, Lcom/google/android/exoplayer2/text/e/c;->d:F

    .line 109
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/text/e/c;->e:Z

    .line 110
    iput-boolean p6, p0, Lcom/google/android/exoplayer2/text/e/c;->f:Z

    return-void
.end method

.method static a(Ljava/lang/String;)I
    .locals 2

    .line 152
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v0, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    return v0

    .line 159
    :catch_0
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring unknown alignment: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SsaStyle"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static a(Ljava/lang/String;Lcom/google/android/exoplayer2/text/e/c$a;)Lcom/google/android/exoplayer2/text/e/c;
    .locals 12

    const-string v0, "Style:"

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    const/4 v0, 0x6

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 117
    array-length v1, v0

    iget v2, p1, Lcom/google/android/exoplayer2/text/e/c$a;->g:I

    const-string v3, "SsaStyle"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    iget p1, p1, Lcom/google/android/exoplayer2/text/e/c$a;->g:I

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const/4 p1, 0x1

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    .line 120
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 126
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/text/e/c;

    iget v2, p1, Lcom/google/android/exoplayer2/text/e/c$a;->a:I

    aget-object v2, v0, v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 128
    iget v2, p1, Lcom/google/android/exoplayer2/text/e/c$a;->b:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 129
    iget v2, p1, Lcom/google/android/exoplayer2/text/e/c$a;->b:I

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/text/e/c;->a(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 131
    :goto_0
    iget v8, p1, Lcom/google/android/exoplayer2/text/e/c$a;->c:I

    if-eq v8, v7, :cond_2

    .line 132
    iget v8, p1, Lcom/google/android/exoplayer2/text/e/c$a;->c:I

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/text/e/c;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v8, v4

    .line 134
    :goto_1
    iget v9, p1, Lcom/google/android/exoplayer2/text/e/c$a;->d:I

    if-eq v9, v7, :cond_3

    .line 135
    iget v9, p1, Lcom/google/android/exoplayer2/text/e/c$a;->d:I

    aget-object v9, v0, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/text/e/c;->c(Ljava/lang/String;)F

    move-result v9

    goto :goto_2

    :cond_3
    const v9, -0x800001

    .line 137
    :goto_2
    iget v10, p1, Lcom/google/android/exoplayer2/text/e/c$a;->e:I

    if-eq v10, v7, :cond_4

    .line 138
    iget v10, p1, Lcom/google/android/exoplayer2/text/e/c$a;->e:I

    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/text/e/c;->d(Ljava/lang/String;)Z

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    .line 140
    :goto_3
    iget v11, p1, Lcom/google/android/exoplayer2/text/e/c$a;->f:I

    if-eq v11, v7, :cond_5

    .line 141
    iget p1, p1, Lcom/google/android/exoplayer2/text/e/c$a;->f:I

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/text/e/c;->d(Ljava/lang/String;)Z

    move-result v5

    move v11, v5

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    move-object v5, v1

    move v7, v2

    .line 142
    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplayer2/text/e/c;-><init>(Ljava/lang/String;ILjava/lang/Integer;FZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping malformed \'Style:\' line: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    :try_start_0
    const-string v0, "&H"

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 206
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p0, 0x18

    shr-long v4, v2, p0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v4, v6

    .line 212
    invoke-static {v4, v5}, Lcom/google/common/b/b;->a(J)I

    move-result p0

    shr-long v0, v2, v1

    and-long/2addr v0, v6

    .line 213
    invoke-static {v0, v1}, Lcom/google/common/b/b;->a(J)I

    move-result v0

    const/16 v1, 0x8

    shr-long v4, v2, v1

    and-long/2addr v4, v6

    .line 214
    invoke-static {v4, v5}, Lcom/google/common/b/b;->a(J)I

    move-result v1

    and-long/2addr v2, v6

    .line 215
    invoke-static {v2, v3}, Lcom/google/common/b/b;->a(J)I

    move-result v2

    .line 216
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse color expression: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)F
    .locals 3

    .line 221
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse font size: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p0, -0x800001

    return p0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 230
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception v1

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse bold/italic: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SsaStyle"

    invoke-static {v2, p0, v1}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
