.class public final Lcom/jjoe64/graphview/helper/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jjoe64/graphview/d;


# instance fields
.field protected a:Lcom/jjoe64/graphview/j;

.field protected b:[Ljava/lang/String;

.field protected c:[Ljava/lang/String;

.field protected d:Lcom/jjoe64/graphview/d;

.field protected final e:Lcom/jjoe64/graphview/GraphView;


# direct methods
.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/jjoe64/graphview/helper/a;->e:Lcom/jjoe64/graphview/GraphView;

    const/4 p1, 0x0

    .line 73
    invoke-direct {p0, p1, p1, p1}, Lcom/jjoe64/graphview/helper/a;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;Lcom/jjoe64/graphview/d;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/jjoe64/graphview/helper/a;->e:Lcom/jjoe64/graphview/GraphView;

    const/4 p1, 0x0

    .line 86
    invoke-direct {p0, p1, p1, p2}, Lcom/jjoe64/graphview/helper/a;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/jjoe64/graphview/helper/a;->e:Lcom/jjoe64/graphview/GraphView;

    const/4 p1, 0x0

    .line 100
    invoke-direct {p0, p2, p3, p1}, Lcom/jjoe64/graphview/helper/a;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/jjoe64/graphview/GraphView;[Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/d;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/jjoe64/graphview/helper/a;->e:Lcom/jjoe64/graphview/GraphView;

    .line 116
    invoke-direct {p0, p2, p3, p4}, Lcom/jjoe64/graphview/helper/a;->a([Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/d;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/jjoe64/graphview/helper/a;->d:Lcom/jjoe64/graphview/d;

    iget-object v1, p0, Lcom/jjoe64/graphview/helper/a;->a:Lcom/jjoe64/graphview/j;

    invoke-interface {v0, v1}, Lcom/jjoe64/graphview/d;->a(Lcom/jjoe64/graphview/j;)V

    .line 212
    iget-object v0, p0, Lcom/jjoe64/graphview/helper/a;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 213
    array-length v0, v0

    if-lt v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/jjoe64/graphview/helper/a;->e:Lcom/jjoe64/graphview/GraphView;

    .line 2236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 216
    iget-object v2, p0, Lcom/jjoe64/graphview/helper/a;->b:[Ljava/lang/String;

    array-length v2, v2

    .line 2746
    iput v2, v0, Lcom/jjoe64/graphview/c;->d:I

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need at least 2 vertical labels if you use static label formatter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jjoe64/graphview/helper/a;->c:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 219
    array-length v0, v0

    if-lt v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/jjoe64/graphview/helper/a;->e:Lcom/jjoe64/graphview/GraphView;

    .line 3236
    iget-object v0, v0, Lcom/jjoe64/graphview/GraphView;->b:Lcom/jjoe64/graphview/c;

    .line 222
    iget-object v1, p0, Lcom/jjoe64/graphview/helper/a;->c:[Ljava/lang/String;

    array-length v1, v1

    .line 3762
    iput v1, v0, Lcom/jjoe64/graphview/c;->e:I

    goto :goto_1

    .line 220
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need at least 2 horizontal labels if you use static label formatter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;Lcom/jjoe64/graphview/d;)V
    .locals 0

    .line 128
    iput-object p3, p0, Lcom/jjoe64/graphview/helper/a;->d:Lcom/jjoe64/graphview/d;

    if-nez p3, :cond_0

    .line 130
    new-instance p3, Lcom/jjoe64/graphview/b;

    invoke-direct {p3}, Lcom/jjoe64/graphview/b;-><init>()V

    iput-object p3, p0, Lcom/jjoe64/graphview/helper/a;->d:Lcom/jjoe64/graphview/d;

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/jjoe64/graphview/helper/a;->c:[Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/jjoe64/graphview/helper/a;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(DZ)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 179
    iget-object v1, p0, Lcom/jjoe64/graphview/helper/a;->c:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 180
    iget-object p3, p0, Lcom/jjoe64/graphview/helper/a;->a:Lcom/jjoe64/graphview/j;

    invoke-virtual {p3, v0}, Lcom/jjoe64/graphview/j;->a(Z)D

    move-result-wide v1

    .line 181
    iget-object p3, p0, Lcom/jjoe64/graphview/helper/a;->a:Lcom/jjoe64/graphview/j;

    invoke-virtual {p3, v0}, Lcom/jjoe64/graphview/j;->b(Z)D

    move-result-wide v3

    sub-double/2addr v3, v1

    sub-double/2addr p1, v1

    div-double/2addr p1, v3

    .line 184
    iget-object p3, p0, Lcom/jjoe64/graphview/helper/a;->c:[Ljava/lang/String;

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 185
    aget-object p1, p3, p1

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 186
    iget-object v1, p0, Lcom/jjoe64/graphview/helper/a;->b:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 187
    iget-object p3, p0, Lcom/jjoe64/graphview/helper/a;->a:Lcom/jjoe64/graphview/j;

    invoke-virtual {p3, v0}, Lcom/jjoe64/graphview/j;->c(Z)D

    move-result-wide v1

    .line 188
    iget-object p3, p0, Lcom/jjoe64/graphview/helper/a;->a:Lcom/jjoe64/graphview/j;

    invoke-virtual {p3, v0}, Lcom/jjoe64/graphview/j;->d(Z)D

    move-result-wide v3

    sub-double/2addr v3, v1

    sub-double/2addr p1, v1

    div-double/2addr p1, v3

    .line 191
    iget-object p3, p0, Lcom/jjoe64/graphview/helper/a;->b:[Ljava/lang/String;

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 192
    aget-object p1, p3, p1

    return-object p1

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/jjoe64/graphview/helper/a;->d:Lcom/jjoe64/graphview/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/jjoe64/graphview/d;->a(DZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/jjoe64/graphview/j;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/jjoe64/graphview/helper/a;->a:Lcom/jjoe64/graphview/j;

    .line 204
    invoke-direct {p0}, Lcom/jjoe64/graphview/helper/a;->a()V

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/jjoe64/graphview/helper/a;->c:[Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Lcom/jjoe64/graphview/helper/a;->a()V

    return-void
.end method
