.class public final Lorg/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/a/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Lorg/a/a/a/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/a/a/a/b$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:I

.field public volatile c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 63
    invoke-direct {p0, v0}, Lorg/a/a/a/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/a/a/a/b;->b:I

    mul-int/lit8 v0, p1, 0x4

    .line 69
    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/a/a/a/b;->d:I

    .line 70
    new-array p1, p1, [Lorg/a/a/a/b$a;

    iput-object p1, p0, Lorg/a/a/a/b;->a:[Lorg/a/a/a/b$a;

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)TT;"
        }
    .end annotation

    const/16 v0, 0x20

    ushr-long v1, p1, v0

    long-to-int v2, v1

    long-to-int v1, p1

    xor-int/2addr v1, v2

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 95
    iget v3, p0, Lorg/a/a/a/b;->b:I

    rem-int/2addr v1, v3

    .line 96
    iget-object v3, p0, Lorg/a/a/a/b;->a:[Lorg/a/a/a/b$a;

    aget-object v3, v3, v1

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    .line 98
    iget-wide v5, v4, Lorg/a/a/a/b$a;->a:J

    cmp-long v7, v5, p1

    if-nez v7, :cond_0

    .line 99
    iget-object p1, v4, Lorg/a/a/a/b$a;->b:Ljava/lang/Object;

    .line 100
    iput-object p3, v4, Lorg/a/a/a/b$a;->b:Ljava/lang/Object;

    return-object p1

    .line 97
    :cond_0
    iget-object v4, v4, Lorg/a/a/a/b$a;->c:Lorg/a/a/a/b$a;

    goto :goto_0

    .line 104
    :cond_1
    iget-object v4, p0, Lorg/a/a/a/b;->a:[Lorg/a/a/a/b$a;

    new-instance v5, Lorg/a/a/a/b$a;

    invoke-direct {v5, p1, p2, p3, v3}, Lorg/a/a/a/b$a;-><init>(JLjava/lang/Object;Lorg/a/a/a/b$a;)V

    aput-object v5, v4, v1

    .line 105
    iget p1, p0, Lorg/a/a/a/b;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/a/a/a/b;->c:I

    .line 106
    iget p1, p0, Lorg/a/a/a/b;->c:I

    iget p2, p0, Lorg/a/a/a/b;->d:I

    if-le p1, p2, :cond_4

    .line 107
    iget p1, p0, Lorg/a/a/a/b;->b:I

    mul-int/lit8 p1, p1, 0x2

    .line 1175
    new-array p2, p1, [Lorg/a/a/a/b$a;

    .line 1176
    iget-object p3, p0, Lorg/a/a/a/b;->a:[Lorg/a/a/a/b$a;

    array-length v1, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, p3, v3

    :goto_2
    if-eqz v4, :cond_2

    .line 1179
    iget-wide v5, v4, Lorg/a/a/a/b$a;->a:J

    ushr-long v7, v5, v0

    long-to-int v8, v7

    long-to-int v6, v5

    xor-int v5, v8, v6

    and-int/2addr v5, v2

    .line 1180
    rem-int/2addr v5, p1

    .line 1182
    iget-object v6, v4, Lorg/a/a/a/b$a;->c:Lorg/a/a/a/b$a;

    .line 1183
    aget-object v7, p2, v5

    iput-object v7, v4, Lorg/a/a/a/b$a;->c:Lorg/a/a/a/b$a;

    .line 1184
    aput-object v4, p2, v5

    move-object v4, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1188
    :cond_3
    iput-object p2, p0, Lorg/a/a/a/b;->a:[Lorg/a/a/a/b$a;

    .line 1189
    iput p1, p0, Lorg/a/a/a/b;->b:I

    mul-int/lit8 p1, p1, 0x4

    .line 1190
    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/a/a/a/b;->d:I

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()[J
    .locals 9

    .line 137
    iget v0, p0, Lorg/a/a/a/b;->c:I

    new-array v0, v0, [J

    .line 139
    iget-object v1, p0, Lorg/a/a/a/b;->a:[Lorg/a/a/a/b$a;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    :goto_1
    if-eqz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 141
    iget-wide v7, v5, Lorg/a/a/a/b$a;->a:J

    aput-wide v7, v0, v4

    .line 142
    iget-object v5, v5, Lorg/a/a/a/b$a;->c:Lorg/a/a/a/b$a;

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
