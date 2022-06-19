.class final Lcom/google/android/exoplayer2/text/e/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p1, p0, Lcom/google/android/exoplayer2/text/e/c$a;->a:I

    .line 263
    iput p2, p0, Lcom/google/android/exoplayer2/text/e/c$a;->b:I

    .line 264
    iput p3, p0, Lcom/google/android/exoplayer2/text/e/c$a;->c:I

    .line 265
    iput p4, p0, Lcom/google/android/exoplayer2/text/e/c$a;->d:I

    .line 266
    iput p5, p0, Lcom/google/android/exoplayer2/text/e/c$a;->e:I

    .line 267
    iput p6, p0, Lcom/google/android/exoplayer2/text/e/c$a;->f:I

    .line 268
    iput p7, p0, Lcom/google/android/exoplayer2/text/e/c$a;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/e/c$a;
    .locals 11

    const/4 v0, 0x7

    .line 285
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 286
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_6

    .line 287
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/af;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_1
    const/4 v3, -0x1

    goto :goto_2

    :sswitch_0
    const-string v10, "alignment"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x5

    goto :goto_2

    :sswitch_1
    const-string v10, "fontsize"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_2
    const-string v10, "name"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_3
    const-string v10, "bold"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    goto :goto_2

    :sswitch_4
    const-string v10, "primarycolour"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :sswitch_5
    const-string v10, "italic"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    move v5, v2

    goto :goto_3

    :pswitch_1
    move v7, v2

    goto :goto_3

    :pswitch_2
    move v4, v2

    goto :goto_3

    :pswitch_3
    move v8, v2

    goto :goto_3

    :pswitch_4
    move v6, v2

    goto :goto_3

    :pswitch_5
    move v9, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eq v4, v1, :cond_7

    .line 309
    new-instance v0, Lcom/google/android/exoplayer2/text/e/c$a;

    array-length v10, p0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/text/e/c$a;-><init>(IIIIIII)V

    return-object v0

    :cond_7
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_5
        -0x43a3db2 -> :sswitch_4
        0x2e3a85 -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x15d92cd0 -> :sswitch_1
        0x695fa1e3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
