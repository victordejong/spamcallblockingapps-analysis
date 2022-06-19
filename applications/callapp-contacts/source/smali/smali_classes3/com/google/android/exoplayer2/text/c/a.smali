.class public final Lcom/google/android/exoplayer2/text/c/a;
.super Lcom/google/android/exoplayer2/text/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/c/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:Lcom/google/android/exoplayer2/util/u;

.field private final c:Lcom/google/android/exoplayer2/text/c/a$a;

.field private d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PgsDecoder"

    .line 50
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/c;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/c/a;->b:Lcom/google/android/exoplayer2/util/u;

    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/text/c/a$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/c/a$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/c/a;->c:Lcom/google/android/exoplayer2/text/c/a$a;

    return-void
.end method


# virtual methods
.method public final a([BIZ)Lcom/google/android/exoplayer2/text/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 58
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 59
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 1072
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->b()I

    move-result p2

    const/16 p3, 0x78

    if-ne p2, p3, :cond_1

    .line 1073
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/c/a;->d:Ljava/util/zip/Inflater;

    if-nez p2, :cond_0

    .line 1074
    new-instance p2, Ljava/util/zip/Inflater;

    invoke-direct {p2}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/text/c/a;->d:Ljava/util/zip/Inflater;

    .line 1076
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/c/a;->b:Lcom/google/android/exoplayer2/util/u;

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/c/a;->d:Ljava/util/zip/Inflater;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/util/af;->a(Lcom/google/android/exoplayer2/util/u;Lcom/google/android/exoplayer2/util/u;Ljava/util/zip/Inflater;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1077
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/c/a;->b:Lcom/google/android/exoplayer2/util/u;

    .line 1169
    iget-object p2, p2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1077
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/c/a;->b:Lcom/google/android/exoplayer2/util/u;

    .line 2127
    iget p3, p3, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 1077
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/c/a;->c:Lcom/google/android/exoplayer2/text/c/a$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/c/a$a;->b()V

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_8

    .line 63
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/c/a;->a:Lcom/google/android/exoplayer2/util/u;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/c/a;->c:Lcom/google/android/exoplayer2/text/c/a$a;

    .line 3127
    iget v1, p2, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 3085
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    .line 3086
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v3

    .line 3144
    iget v4, p2, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr v4, v3

    const/4 v5, 0x0

    if-le v4, v1, :cond_3

    .line 3090
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto/16 :goto_3

    :cond_3
    const/16 v1, 0x80

    if-eq v2, v1, :cond_6

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 p3, 0x13

    if-lt v3, p3, :cond_7

    .line 8197
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result p3

    iput p3, v0, Lcom/google/android/exoplayer2/text/c/a$a;->b:I

    .line 8198
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result p3

    iput p3, v0, Lcom/google/android/exoplayer2/text/c/a$a;->c:I

    const/16 p3, 0xb

    .line 8199
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 8200
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result p3

    iput p3, v0, Lcom/google/android/exoplayer2/text/c/a$a;->d:I

    .line 8201
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result p3

    iput p3, v0, Lcom/google/android/exoplayer2/text/c/a$a;->e:I

    goto :goto_2

    :pswitch_1
    const/4 v2, 0x4

    if-lt v3, v2, :cond_7

    .line 5166
    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 5167
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result p3

    and-int/2addr p3, v1

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    :goto_1
    add-int/lit8 v3, v3, -0x4

    if-eqz p3, :cond_5

    const/4 p3, 0x7

    if-lt v3, p3, :cond_7

    .line 5174
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result p3

    if-lt p3, v2, :cond_7

    .line 5178
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/text/c/a$a;->f:I

    .line 5179
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/text/c/a$a;->g:I

    .line 5180
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    add-int/lit8 v3, v3, -0x7

    .line 5184
    :cond_5
    iget-object p3, v0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 6144
    iget p3, p3, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 5185
    iget-object v1, v0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 7127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    if-ge p3, v1, :cond_7

    if-lez v3, :cond_7

    sub-int/2addr v1, p3

    .line 5187
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5188
    iget-object v2, v0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    .line 7169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 5188
    invoke-virtual {p2, v2, p3, v1}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 5189
    iget-object v0, v0, Lcom/google/android/exoplayer2/text/c/a$a;->a:Lcom/google/android/exoplayer2/util/u;

    add-int/2addr p3, v1

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_2

    .line 4117
    :pswitch_2
    invoke-virtual {v0, p2, v3}, Lcom/google/android/exoplayer2/text/c/a$a;->a(Lcom/google/android/exoplayer2/util/u;I)V

    goto :goto_2

    .line 3106
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/c/a$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object v5

    .line 3107
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/c/a$a;->b()V

    .line 3113
    :cond_7
    :goto_2
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    :goto_3
    if-eqz v5, :cond_2

    .line 65
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :cond_8
    new-instance p2, Lcom/google/android/exoplayer2/text/c/b;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/text/c/b;-><init>(Ljava/util/List;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
