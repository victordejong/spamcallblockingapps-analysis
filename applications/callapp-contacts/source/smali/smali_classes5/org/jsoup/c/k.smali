.class final Lorg/jsoup/c/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[I

.field private static final p:[C


# instance fields
.field final b:Lorg/jsoup/c/a;

.field c:Lorg/jsoup/c/l;

.field d:Lorg/jsoup/c/i;

.field e:Z

.field f:Ljava/lang/String;

.field g:Ljava/lang/StringBuilder;

.field h:Ljava/lang/StringBuilder;

.field i:Lorg/jsoup/c/i$h;

.field j:Lorg/jsoup/c/i$g;

.field k:Lorg/jsoup/c/i$f;

.field l:Lorg/jsoup/c/i$b;

.field m:Lorg/jsoup/c/i$d;

.field n:Lorg/jsoup/c/i$c;

.field o:Ljava/lang/String;

.field private final q:Lorg/jsoup/c/e;

.field private final r:[I

.field private final s:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    new-array v0, v0, [C

    .line 14
    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/c/k;->p:[C

    const/16 v1, 0x20

    new-array v1, v1, [I

    .line 19
    fill-array-data v1, :array_1

    sput-object v1, Lorg/jsoup/c/k;->a:[I

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method constructor <init>(Lorg/jsoup/c/a;Lorg/jsoup/c/e;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lorg/jsoup/c/l;->Data:Lorg/jsoup/c/l;

    iput-object v0, p0, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/jsoup/c/k;->e:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/jsoup/c/k;->f:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/c/k;->g:Ljava/lang/StringBuilder;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jsoup/c/k;->h:Ljava/lang/StringBuilder;

    .line 43
    new-instance v0, Lorg/jsoup/c/i$g;

    invoke-direct {v0}, Lorg/jsoup/c/i$g;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/k;->j:Lorg/jsoup/c/i$g;

    .line 44
    new-instance v0, Lorg/jsoup/c/i$f;

    invoke-direct {v0}, Lorg/jsoup/c/i$f;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/k;->k:Lorg/jsoup/c/i$f;

    .line 45
    new-instance v0, Lorg/jsoup/c/i$b;

    invoke-direct {v0}, Lorg/jsoup/c/i$b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/k;->l:Lorg/jsoup/c/i$b;

    .line 46
    new-instance v0, Lorg/jsoup/c/i$d;

    invoke-direct {v0}, Lorg/jsoup/c/i$d;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/k;->m:Lorg/jsoup/c/i$d;

    .line 47
    new-instance v0, Lorg/jsoup/c/i$c;

    invoke-direct {v0}, Lorg/jsoup/c/i$c;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 132
    iput-object v0, p0, Lorg/jsoup/c/k;->r:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 133
    iput-object v0, p0, Lorg/jsoup/c/k;->s:[I

    .line 51
    iput-object p1, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    .line 52
    iput-object p2, p0, Lorg/jsoup/c/k;->q:Lorg/jsoup/c/e;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .line 267
    iget-object v0, p0, Lorg/jsoup/c/k;->q:Lorg/jsoup/c/e;

    invoke-virtual {v0}, Lorg/jsoup/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/jsoup/c/k;->q:Lorg/jsoup/c/e;

    new-instance v1, Lorg/jsoup/c/d;

    iget-object v2, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {v2}, Lorg/jsoup/c/a;->b()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Invalid character reference: %s"

    invoke-direct {v1, v2, p1, v3}, Lorg/jsoup/c/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/c/e;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method final a(Z)Lorg/jsoup/c/i$h;
    .locals 0

    if-eqz p1, :cond_0

    .line 214
    iget-object p1, p0, Lorg/jsoup/c/k;->j:Lorg/jsoup/c/i$g;

    invoke-virtual {p1}, Lorg/jsoup/c/i$g;->h()Lorg/jsoup/c/i$h;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/jsoup/c/k;->k:Lorg/jsoup/c/i$f;

    invoke-virtual {p1}, Lorg/jsoup/c/i$f;->h()Lorg/jsoup/c/i$h;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    return-object p1
.end method

.method final a()V
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    .line 3128
    iget-object v1, v0, Lorg/jsoup/c/i$h;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3129
    invoke-virtual {v0}, Lorg/jsoup/c/i$h;->i()V

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {p0, v0}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/i;)V

    return-void
.end method

.method final a(C)V
    .locals 0

    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/c/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/jsoup/c/k;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    iput-object p1, p0, Lorg/jsoup/c/k;->f:Ljava/lang/String;

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/jsoup/c/k;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lorg/jsoup/c/k;->g:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/c/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/jsoup/c/k;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method final a(Lorg/jsoup/c/i;)V
    .locals 2

    .line 78
    iget-boolean v0, p0, Lorg/jsoup/c/k;->e:Z

    invoke-static {v0}, Lorg/jsoup/a/c;->b(Z)V

    .line 80
    iput-object p1, p0, Lorg/jsoup/c/k;->d:Lorg/jsoup/c/i;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/jsoup/c/k;->e:Z

    .line 83
    iget-object v0, p1, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    sget-object v1, Lorg/jsoup/c/i$i;->StartTag:Lorg/jsoup/c/i$i;

    if-ne v0, v1, :cond_0

    .line 84
    check-cast p1, Lorg/jsoup/c/i$g;

    .line 85
    iget-object p1, p1, Lorg/jsoup/c/i$g;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/jsoup/c/k;->o:Ljava/lang/String;

    return-void

    .line 86
    :cond_0
    iget-object v0, p1, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    sget-object v1, Lorg/jsoup/c/i$i;->EndTag:Lorg/jsoup/c/i$i;

    if-ne v0, v1, :cond_1

    .line 87
    check-cast p1, Lorg/jsoup/c/i$f;

    .line 88
    iget-object p1, p1, Lorg/jsoup/c/i$f;->g:Lorg/jsoup/nodes/b;

    if-eqz p1, :cond_1

    const-string p1, "Attributes incorrectly present on end tag"

    .line 89
    invoke-virtual {p0, p1}, Lorg/jsoup/c/k;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method final a(Lorg/jsoup/c/l;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {v0}, Lorg/jsoup/c/a;->g()V

    .line 129
    iput-object p1, p0, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    return-void
.end method

.method final a(Ljava/lang/Character;Z)[I
    .locals 9

    .line 135
    iget-object v0, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {v0}, Lorg/jsoup/c/a;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {v0}, Lorg/jsoup/c/a;->d()C

    move-result v0

    if-ne p1, v0, :cond_1

    return-object v1

    .line 139
    :cond_1
    iget-object p1, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    sget-object v0, Lorg/jsoup/c/k;->p:[C

    invoke-virtual {p1, v0}, Lorg/jsoup/c/a;->d([C)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    .line 142
    :cond_2
    iget-object p1, p0, Lorg/jsoup/c/k;->r:[I

    .line 143
    iget-object v0, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    .line 1156
    iget v2, v0, Lorg/jsoup/c/a;->c:I

    iget v3, v0, Lorg/jsoup/c/a;->e:I

    sub-int/2addr v2, v3

    const/16 v3, 0x400

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 1157
    iput v4, v0, Lorg/jsoup/c/a;->d:I

    .line 1159
    :cond_3
    invoke-virtual {v0}, Lorg/jsoup/c/a;->a()V

    .line 1160
    iget v2, v0, Lorg/jsoup/c/a;->e:I

    iput v2, v0, Lorg/jsoup/c/a;->f:I

    .line 144
    iget-object v0, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lorg/jsoup/c/a;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "missing semicolon"

    const-string v3, ";"

    const/4 v5, -0x1

    if-eqz v0, :cond_c

    .line 145
    iget-object p2, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lorg/jsoup/c/a;->b(Ljava/lang/String;)Z

    move-result p2

    .line 146
    iget-object v0, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lorg/jsoup/c/a;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/jsoup/c/a;->o()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    const-string p1, "numeric reference with no numerals"

    .line 148
    invoke-direct {p0, p1}, Lorg/jsoup/c/k;->c(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {p1}, Lorg/jsoup/c/a;->h()V

    return-object v1

    .line 153
    :cond_5
    iget-object v1, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    .line 1164
    iput v5, v1, Lorg/jsoup/c/a;->f:I

    .line 154
    iget-object v1, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {v1, v3}, Lorg/jsoup/c/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 155
    invoke-direct {p0, v2}, Lorg/jsoup/c/k;->c(Ljava/lang/String;)V

    :cond_6
    if-eqz p2, :cond_7

    const/16 p2, 0x10

    goto :goto_1

    :cond_7
    const/16 p2, 0xa

    .line 159
    :goto_1
    :try_start_0
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, -0x1

    :goto_2
    if-eq p2, v5, :cond_b

    const v0, 0xd800

    if-lt p2, v0, :cond_8

    const v0, 0xdfff

    if-le p2, v0, :cond_b

    :cond_8
    const v0, 0x10ffff

    if-le p2, v0, :cond_9

    goto :goto_3

    :cond_9
    const/16 v0, 0x80

    if-lt p2, v0, :cond_a

    .line 168
    sget-object v1, Lorg/jsoup/c/k;->a:[I

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_a

    const-string v0, "character is not a valid unicode code point"

    .line 169
    invoke-direct {p0, v0}, Lorg/jsoup/c/k;->c(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x80

    .line 170
    aget p2, v1, p2

    .line 175
    :cond_a
    aput p2, p1, v4

    return-object p1

    :cond_b
    :goto_3
    const-string p2, "character outside of valid range"

    .line 163
    invoke-direct {p0, p2}, Lorg/jsoup/c/k;->c(Ljava/lang/String;)V

    const p2, 0xfffd

    .line 164
    aput p2, p1, v4

    return-object p1

    .line 180
    :cond_c
    iget-object v0, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {v0}, Lorg/jsoup/c/a;->m()Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v6, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Lorg/jsoup/c/a;->b(C)Z

    move-result v6

    .line 183
    invoke-static {v0}, Lorg/jsoup/nodes/i;->b(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_e

    invoke-static {v0}, Lorg/jsoup/nodes/i;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v6, :cond_d

    goto :goto_4

    :cond_d
    const/4 v7, 0x0

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v7, 0x1

    :goto_5
    if-nez v7, :cond_10

    .line 186
    iget-object p1, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {p1}, Lorg/jsoup/c/a;->h()V

    if-eqz v6, :cond_f

    const-string p1, "invalid named reference"

    .line 188
    invoke-direct {p0, p1}, Lorg/jsoup/c/k;->c(Ljava/lang/String;)V

    :cond_f
    return-object v1

    :cond_10
    if-eqz p2, :cond_13

    .line 191
    iget-object p2, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {p2}, Lorg/jsoup/c/a;->p()Z

    move-result p2

    if-nez p2, :cond_12

    iget-object p2, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    .line 1490
    invoke-virtual {p2}, Lorg/jsoup/c/a;->c()Z

    move-result v6

    if-nez v6, :cond_11

    .line 1492
    iget-object v6, p2, Lorg/jsoup/c/a;->a:[C

    iget p2, p2, Lorg/jsoup/c/a;->e:I

    aget-char p2, v6, p2

    const/16 v6, 0x30

    if-lt p2, v6, :cond_11

    const/16 v6, 0x39

    if-gt p2, v6, :cond_11

    const/4 p2, 0x1

    goto :goto_6

    :cond_11
    const/4 p2, 0x0

    :goto_6
    if-nez p2, :cond_12

    .line 191
    iget-object p2, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    const/4 v6, 0x3

    new-array v6, v6, [C

    fill-array-data v6, :array_0

    invoke-virtual {p2, v6}, Lorg/jsoup/c/a;->c([C)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 193
    :cond_12
    iget-object p1, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {p1}, Lorg/jsoup/c/a;->h()V

    return-object v1

    .line 197
    :cond_13
    iget-object p2, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    .line 2164
    iput v5, p2, Lorg/jsoup/c/a;->f:I

    .line 198
    iget-object p2, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {p2, v3}, Lorg/jsoup/c/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_14

    .line 199
    invoke-direct {p0, v2}, Lorg/jsoup/c/k;->c(Ljava/lang/String;)V

    .line 200
    :cond_14
    iget-object p2, p0, Lorg/jsoup/c/k;->s:[I

    invoke-static {v0, p2}, Lorg/jsoup/nodes/i;->a(Ljava/lang/String;[I)I

    move-result p2

    if-ne p2, v8, :cond_15

    .line 202
    iget-object p2, p0, Lorg/jsoup/c/k;->s:[I

    aget p2, p2, v4

    aput p2, p1, v4

    return-object p1

    :cond_15
    const/4 p1, 0x2

    if-ne p2, p1, :cond_16

    .line 205
    iget-object p1, p0, Lorg/jsoup/c/k;->s:[I

    return-object p1

    .line 207
    :cond_16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected characters returned for "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/a/c;->b(Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lorg/jsoup/c/k;->s:[I

    return-object p1

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method final b()V
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    invoke-virtual {p0, v0}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/i;)V

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 3

    .line 272
    iget-object v0, p0, Lorg/jsoup/c/k;->q:Lorg/jsoup/c/e;

    invoke-virtual {v0}, Lorg/jsoup/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/jsoup/c/k;->q:Lorg/jsoup/c/e;

    new-instance v1, Lorg/jsoup/c/d;

    iget-object v2, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {v2}, Lorg/jsoup/c/a;->b()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lorg/jsoup/c/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/c/e;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final b(Lorg/jsoup/c/l;)V
    .locals 6

    .line 257
    iget-object v0, p0, Lorg/jsoup/c/k;->q:Lorg/jsoup/c/e;

    invoke-virtual {v0}, Lorg/jsoup/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/jsoup/c/k;->q:Lorg/jsoup/c/e;

    new-instance v1, Lorg/jsoup/c/d;

    iget-object v2, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {v2}, Lorg/jsoup/c/a;->b()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {v5}, Lorg/jsoup/c/a;->d()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected character \'%s\' in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lorg/jsoup/c/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/c/e;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final c()V
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    invoke-virtual {v0}, Lorg/jsoup/c/i$c;->a()Lorg/jsoup/c/i;

    .line 233
    iget-object v0, p0, Lorg/jsoup/c/k;->n:Lorg/jsoup/c/i$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jsoup/c/i$c;->b:Z

    return-void
.end method

.method final c(Lorg/jsoup/c/l;)V
    .locals 5

    .line 262
    iget-object v0, p0, Lorg/jsoup/c/k;->q:Lorg/jsoup/c/e;

    invoke-virtual {v0}, Lorg/jsoup/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lorg/jsoup/c/k;->q:Lorg/jsoup/c/e;

    new-instance v1, Lorg/jsoup/c/d;

    iget-object v2, p0, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {v2}, Lorg/jsoup/c/a;->b()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Unexpectedly reached end of file (EOF) in input state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lorg/jsoup/c/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/c/e;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final d()V
    .locals 1

    .line 237
    iget-object v0, p0, Lorg/jsoup/c/k;->m:Lorg/jsoup/c/i$d;

    invoke-virtual {v0}, Lorg/jsoup/c/i$d;->a()Lorg/jsoup/c/i;

    return-void
.end method

.method final e()V
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/jsoup/c/k;->m:Lorg/jsoup/c/i$d;

    invoke-virtual {p0, v0}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/i;)V

    return-void
.end method

.method final f()Z
    .locals 2

    .line 249
    iget-object v0, p0, Lorg/jsoup/c/k;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/c/k;->i:Lorg/jsoup/c/i$h;

    invoke-virtual {v0}, Lorg/jsoup/c/i$h;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/c/k;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
