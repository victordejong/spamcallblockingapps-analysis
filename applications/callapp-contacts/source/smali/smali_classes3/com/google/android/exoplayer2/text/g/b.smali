.class final Lcom/google/android/exoplayer2/text/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Lcom/google/common/collect/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/common/collect/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/google/common/collect/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lcom/google/common/collect/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/z<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\\s+"

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/b;->d:Ljava/util/regex/Pattern;

    const-string v0, "auto"

    const-string v1, "none"

    .line 77
    invoke-static {v0, v1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/b;->e:Lcom/google/common/collect/z;

    const-string v0, "dot"

    const-string v1, "sesame"

    const-string v2, "circle"

    .line 80
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/b;->f:Lcom/google/common/collect/z;

    const-string v0, "filled"

    const-string v1, "open"

    .line 86
    invoke-static {v0, v1}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/b;->g:Lcom/google/common/collect/z;

    const-string v0, "after"

    const-string v1, "before"

    const-string v2, "outside"

    .line 89
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/z;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/g/b;->h:Lcom/google/common/collect/z;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/google/android/exoplayer2/text/g/b;->a:I

    .line 108
    iput p2, p0, Lcom/google/android/exoplayer2/text/g/b;->b:I

    .line 109
    iput p3, p0, Lcom/google/android/exoplayer2/text/g/b;->c:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/g/b;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 139
    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/text/g/b;->d:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/z;->a([Ljava/lang/Object;)Lcom/google/common/collect/z;

    move-result-object p0

    .line 1143
    sget-object v0, Lcom/google/android/exoplayer2/text/g/b;->h:Lcom/google/common/collect/z;

    invoke-static {v0, p0}, Lcom/google/common/collect/av;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/av$b;

    move-result-object v0

    const-string v1, "outside"

    .line 1148
    invoke-static {v0, v1}, Lcom/google/common/collect/aa;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5305c081

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_4

    const v3, -0x41ecca5b

    if-eq v2, v3, :cond_3

    const v1, 0x58705dc

    if-eq v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "after"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "before"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v7, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, -0x2

    goto :goto_2

    :cond_7
    const/4 v0, 0x2

    .line 1163
    :goto_2
    sget-object v1, Lcom/google/android/exoplayer2/text/g/b;->e:Lcom/google/common/collect/z;

    invoke-static {v1, p0}, Lcom/google/common/collect/av;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/av$b;

    move-result-object v1

    .line 1164
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1168
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_9

    const v2, 0x33af38

    if-eq v1, v2, :cond_8

    goto :goto_3

    :cond_8
    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    const-string v1, "auto"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v7, -0x1

    :goto_4
    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    const/4 v5, 0x0

    .line 1177
    :goto_5
    new-instance p0, Lcom/google/android/exoplayer2/text/g/b;

    invoke-direct {p0, v5, v6, v0}, Lcom/google/android/exoplayer2/text/g/b;-><init>(III)V

    return-object p0

    .line 1180
    :cond_c
    sget-object v1, Lcom/google/android/exoplayer2/text/g/b;->g:Lcom/google/common/collect/z;

    invoke-static {v1, p0}, Lcom/google/common/collect/av;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/av$b;

    move-result-object v1

    .line 1181
    sget-object v2, Lcom/google/android/exoplayer2/text/g/b;->f:Lcom/google/common/collect/z;

    invoke-static {v2, p0}, Lcom/google/common/collect/av;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/av$b;

    move-result-object p0

    .line 1182
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1189
    new-instance p0, Lcom/google/android/exoplayer2/text/g/b;

    invoke-direct {p0, v5, v6, v0}, Lcom/google/android/exoplayer2/text/g/b;-><init>(III)V

    return-object p0

    :cond_d
    const-string v2, "filled"

    .line 1193
    invoke-static {v1, v2}, Lcom/google/common/collect/aa;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v8, -0x4bf7529e

    if-eq v3, v8, :cond_f

    const v2, 0x34264a

    if-eq v3, v2, :cond_e

    goto :goto_6

    :cond_e
    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_7

    :cond_f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_7

    :cond_10
    :goto_6
    const/4 v1, -0x1

    :goto_7
    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    const/4 v1, 0x2

    :goto_8
    const-string v2, "circle"

    .line 1203
    invoke-static {p0, v2}, Lcom/google/common/collect/aa;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v8, -0x51134330

    if-eq v3, v8, :cond_14

    const v2, -0x35fdaa48    # -2135406.0f

    if-eq v3, v2, :cond_13

    const v2, 0x18549

    if-eq v3, v2, :cond_12

    goto :goto_9

    :cond_12
    const-string v2, "dot"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 v5, 0x0

    goto :goto_9

    :cond_13
    const-string v2, "sesame"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 v5, 0x1

    goto :goto_9

    :cond_14
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 v5, 0x2

    :cond_15
    :goto_9
    if-eqz v5, :cond_17

    if-eq v5, v7, :cond_16

    const/4 v4, 0x1

    goto :goto_a

    :cond_16
    const/4 v4, 0x3

    .line 1215
    :cond_17
    :goto_a
    new-instance p0, Lcom/google/android/exoplayer2/text/g/b;

    invoke-direct {p0, v4, v1, v0}, Lcom/google/android/exoplayer2/text/g/b;-><init>(III)V

    return-object p0
.end method
