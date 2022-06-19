.class public final Lcom/google/android/exoplayer2/extractor/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/ad$c;


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 115
    invoke-static {}, Lcom/google/common/collect/v;->g()Lcom/google/common/collect/v;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/h/g;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/g;->a:I

    .line 130
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/g;->b:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/h/ad$b;)Lcom/google/android/exoplayer2/extractor/h/z;
    .locals 1

    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/z;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/g;->c(Lcom/google/android/exoplayer2/extractor/h/ad$b;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/h/z;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private a(I)Z
    .locals 1

    .line 283
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/g;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/h/ad$b;)Lcom/google/android/exoplayer2/extractor/h/af;
    .locals 1

    .line 212
    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/af;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/g;->c(Lcom/google/android/exoplayer2/extractor/h/ad$b;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/h/af;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private c(Lcom/google/android/exoplayer2/extractor/h/ad$b;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/h/ad$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 225
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/g;->b:Ljava/util/List;

    return-object p1

    .line 228
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/h/ad$b;->d:[B

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    .line 229
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/g;->b:Ljava/util/List;

    .line 230
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v1

    if-lez v1, :cond_6

    .line 231
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    .line 232
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    .line 1144
    iget v3, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_5

    .line 236
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    const/4 v5, 0x3

    .line 239
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/u;->f(I)Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_3

    :cond_2
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    .line 253
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v10

    int-to-byte v10, v10

    .line 255
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    const/4 v11, 0x0

    if-eqz v7, :cond_4

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    .line 262
    :goto_4
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/d;->a(Z)Ljava/util/List;

    move-result-object v11

    .line 265
    :cond_4
    new-instance v7, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 1370
    iput-object v9, v7, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 2278
    iput-object v5, v7, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 2574
    iput v6, v7, Lcom/google/android/exoplayer2/Format$a;->C:I

    .line 3392
    iput-object v11, v7, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 271
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 265
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 276
    :cond_5
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_0

    :cond_6
    return-object p1
.end method


# virtual methods
.method public final a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/h/ad;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final a(ILcom/google/android/exoplayer2/extractor/h/ad$b;)Lcom/google/android/exoplayer2/extractor/h/ad;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    const/4 v1, 0x4

    if-eq p1, v1, :cond_e

    const/16 v2, 0x15

    if-eq p1, v2, :cond_d

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b

    const/16 v1, 0x24

    if-eq p1, v1, :cond_a

    const/16 v1, 0x59

    if-eq p1, v1, :cond_9

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_8

    const/16 v1, 0xac

    if-eq p1, v1, :cond_7

    const/16 v1, 0x101

    if-eq p1, v1, :cond_6

    const/16 v1, 0x81

    if-eq p1, v1, :cond_5

    const/16 v1, 0x82

    if-eq p1, v1, :cond_4

    const/16 v1, 0x86

    if-eq p1, v1, :cond_2

    const/16 v1, 0x87

    if-eq p1, v1, :cond_5

    packed-switch p1, :pswitch_data_0

    return-object v3

    .line 149
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v3

    .line 150
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/p;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/h/ad$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/h/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    .line 166
    :pswitch_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/l;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/h/g;->b(Lcom/google/android/exoplayer2/extractor/h/ad$b;)Lcom/google/android/exoplayer2/extractor/h/af;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/h/l;-><init>(Lcom/google/android/exoplayer2/extractor/h/af;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    .line 146
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v3

    .line 147
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/f;

    const/4 v1, 0x0

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/h/ad$b;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/h/f;-><init>(ZLjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    :cond_2
    const/16 p1, 0x10

    .line 174
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v3

    .line 176
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/y;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/h/s;

    const-string v0, "application/x-scte35"

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/extractor/h/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/h/y;-><init>(Lcom/google/android/exoplayer2/extractor/h/x;)V

    return-object p1

    :cond_4
    const/16 p1, 0x40

    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/g;->a(I)Z

    move-result p1

    if-nez p1, :cond_8

    return-object v3

    .line 153
    :cond_5
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/b;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/h/ad$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/h/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    .line 183
    :cond_6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/y;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/h/s;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/extractor/h/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/h/y;-><init>(Lcom/google/android/exoplayer2/extractor/h/x;)V

    return-object p1

    .line 155
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/d;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/h/ad$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/h/d;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    .line 162
    :cond_8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/h;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/h/ad$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/h/h;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    .line 180
    :cond_9
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/i;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/h/ad$b;->c:Ljava/util/List;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/h/i;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    .line 172
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/n;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/h/g;->a(Lcom/google/android/exoplayer2/extractor/h/ad$b;)Lcom/google/android/exoplayer2/extractor/h/z;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/h/n;-><init>(Lcom/google/android/exoplayer2/extractor/h/z;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    .line 168
    :cond_b
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/h/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_c

    return-object v3

    .line 169
    :cond_c
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/m;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/h/g;->a(Lcom/google/android/exoplayer2/extractor/h/ad$b;)Lcom/google/android/exoplayer2/extractor/h/z;

    move-result-object p2

    const/4 v1, 0x1

    .line 170
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/h/g;->a(I)Z

    move-result v1

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/h/g;->a(I)Z

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/exoplayer2/extractor/h/m;-><init>(Lcom/google/android/exoplayer2/extractor/h/z;ZZ)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    .line 178
    :cond_d
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/h/o;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/h/o;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    .line 144
    :cond_e
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/q;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/h/ad$b;->b:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/h/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    .line 164
    :cond_f
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/t;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/h/k;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/h/g;->b(Lcom/google/android/exoplayer2/extractor/h/ad$b;)Lcom/google/android/exoplayer2/extractor/h/af;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/h/k;-><init>(Lcom/google/android/exoplayer2/extractor/h/af;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/t;-><init>(Lcom/google/android/exoplayer2/extractor/h/j;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
