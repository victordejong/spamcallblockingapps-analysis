.class public final Landroidx/media2/exoplayer/external/text/c/a;
.super Landroidx/media2/exoplayer/external/text/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/text/c/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/p;

.field private final b:Landroidx/media2/exoplayer/external/util/p;

.field private final c:Landroidx/media2/exoplayer/external/text/c/a$a;

.field private d:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PgsDecoder"

    .line 56
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/b;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/c/a;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 58
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/c/a;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 59
    new-instance v0, Landroidx/media2/exoplayer/external/text/c/a$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/c/a$a;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/c/a;->c:Landroidx/media2/exoplayer/external/text/c/a$a;

    return-void
.end method


# virtual methods
.method public final a([BIZ)Landroidx/media2/exoplayer/external/text/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 64
    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/c/a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p3, p1, p2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 65
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/c/a;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 1078
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p2

    if-lez p2, :cond_1

    .line 1217
    iget-object p2, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget p3, p1, Landroidx/media2/exoplayer/external/util/p;->b:I

    aget-byte p2, p2, p3

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x78

    if-ne p2, p3, :cond_1

    .line 1079
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/c/a;->d:Ljava/util/zip/Inflater;

    if-nez p2, :cond_0

    .line 1080
    new-instance p2, Ljava/util/zip/Inflater;

    invoke-direct {p2}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p2, p0, Landroidx/media2/exoplayer/external/text/c/a;->d:Ljava/util/zip/Inflater;

    .line 1082
    :cond_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/c/a;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/c/a;->d:Ljava/util/zip/Inflater;

    invoke-static {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/ac;->a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/util/p;Ljava/util/zip/Inflater;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1083
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/c/a;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object p2, p2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/c/a;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 2125
    iget p3, p3, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 1083
    invoke-virtual {p1, p2, p3}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 66
    :cond_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/text/c/a;->c:Landroidx/media2/exoplayer/external/text/c/a$a;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/c/a$a;->b()V

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :cond_2
    :goto_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/c/a;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_8

    .line 69
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/c/a;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/c/a;->c:Landroidx/media2/exoplayer/external/text/c/a$a;

    .line 3125
    iget v1, p2, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 3091
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v2

    .line 3092
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v3

    .line 3142
    iget v4, p2, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr v4, v3

    const/4 v5, 0x0

    if-le v4, v1, :cond_3

    .line 3096
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto/16 :goto_3

    :cond_3
    const/16 v1, 0x80

    if-eq v2, v1, :cond_6

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/16 p3, 0x13

    if-lt v3, p3, :cond_7

    .line 8203
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result p3

    iput p3, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->b:I

    .line 8204
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result p3

    iput p3, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->c:I

    const/16 p3, 0xb

    .line 8205
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 8206
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result p3

    iput p3, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->d:I

    .line 8207
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result p3

    iput p3, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->e:I

    goto :goto_2

    :pswitch_1
    const/4 v2, 0x4

    if-lt v3, v2, :cond_7

    .line 5172
    invoke-virtual {p2, p3}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 5173
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->c()I

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

    .line 5180
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result p3

    if-lt p3, v2, :cond_7

    .line 5184
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v1

    iput v1, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->f:I

    .line 5185
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v1

    iput v1, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->g:I

    .line 5186
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    add-int/lit8 p3, p3, -0x4

    invoke-virtual {v1, p3}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    add-int/lit8 v3, v3, -0x7

    .line 5190
    :cond_5
    iget-object p3, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 6142
    iget p3, p3, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 5191
    iget-object v1, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 7125
    iget v1, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-ge p3, v1, :cond_7

    if-lez v3, :cond_7

    sub-int/2addr v1, p3

    .line 5193
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5194
    iget-object v2, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-virtual {p2, v2, p3, v1}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 5195
    iget-object v0, v0, Landroidx/media2/exoplayer/external/text/c/a$a;->a:Landroidx/media2/exoplayer/external/util/p;

    add-int/2addr p3, v1

    invoke-virtual {v0, p3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_2

    .line 4123
    :pswitch_2
    invoke-virtual {v0, p2, v3}, Landroidx/media2/exoplayer/external/text/c/a$a;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    goto :goto_2

    .line 3112
    :cond_6
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/c/a$a;->a()Landroidx/media2/exoplayer/external/text/a;

    move-result-object v5

    .line 3113
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/text/c/a$a;->b()V

    .line 3119
    :cond_7
    :goto_2
    invoke-virtual {p2, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    :goto_3
    if-eqz v5, :cond_2

    .line 71
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 74
    :cond_8
    new-instance p2, Landroidx/media2/exoplayer/external/text/c/b;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/text/c/b;-><init>(Ljava/util/List;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
