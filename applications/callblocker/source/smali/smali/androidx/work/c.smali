.class public final Landroidx/work/c;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/c$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/work/c;


# instance fields
.field private b:Landroidx/work/m;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:Landroidx/work/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Landroidx/work/c$a;

    invoke-direct {v0}, Landroidx/work/c$a;-><init>()V

    invoke-virtual {v0}, Landroidx/work/c$a;->a()Landroidx/work/c;

    move-result-object v0

    sput-object v0, Landroidx/work/c;->a:Landroidx/work/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Landroidx/work/m;->a:Landroidx/work/m;

    iput-object v0, p0, Landroidx/work/c;->b:Landroidx/work/m;

    .line 64
    iput-wide v2, p0, Landroidx/work/c;->g:J

    .line 67
    iput-wide v2, p0, Landroidx/work/c;->h:J

    .line 72
    new-instance v0, Landroidx/work/d;

    invoke-direct {v0}, Landroidx/work/d;-><init>()V

    iput-object v0, p0, Landroidx/work/c;->i:Landroidx/work/d;

    .line 80
    return-void
.end method

.method constructor <init>(Landroidx/work/c$a;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Landroidx/work/m;->a:Landroidx/work/m;

    iput-object v0, p0, Landroidx/work/c;->b:Landroidx/work/m;

    .line 64
    iput-wide v2, p0, Landroidx/work/c;->g:J

    .line 67
    iput-wide v2, p0, Landroidx/work/c;->h:J

    .line 72
    new-instance v0, Landroidx/work/d;

    invoke-direct {v0}, Landroidx/work/d;-><init>()V

    iput-object v0, p0, Landroidx/work/c;->i:Landroidx/work/d;

    .line 83
    iget-boolean v0, p1, Landroidx/work/c$a;->a:Z

    iput-boolean v0, p0, Landroidx/work/c;->c:Z

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p1, Landroidx/work/c$a;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroidx/work/c;->d:Z

    .line 85
    iget-object v0, p1, Landroidx/work/c$a;->c:Landroidx/work/m;

    iput-object v0, p0, Landroidx/work/c;->b:Landroidx/work/m;

    .line 86
    iget-boolean v0, p1, Landroidx/work/c$a;->d:Z

    iput-boolean v0, p0, Landroidx/work/c;->e:Z

    .line 87
    iget-boolean v0, p1, Landroidx/work/c$a;->e:Z

    iput-boolean v0, p0, Landroidx/work/c;->f:Z

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 89
    iget-object v0, p1, Landroidx/work/c$a;->h:Landroidx/work/d;

    iput-object v0, p0, Landroidx/work/c;->i:Landroidx/work/d;

    .line 90
    iget-wide v0, p1, Landroidx/work/c$a;->f:J

    iput-wide v0, p0, Landroidx/work/c;->g:J

    .line 91
    iget-wide v0, p1, Landroidx/work/c$a;->g:J

    iput-wide v0, p0, Landroidx/work/c;->h:J

    .line 93
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/work/c;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Landroidx/work/m;->a:Landroidx/work/m;

    iput-object v0, p0, Landroidx/work/c;->b:Landroidx/work/m;

    .line 64
    iput-wide v2, p0, Landroidx/work/c;->g:J

    .line 67
    iput-wide v2, p0, Landroidx/work/c;->h:J

    .line 72
    new-instance v0, Landroidx/work/d;

    invoke-direct {v0}, Landroidx/work/d;-><init>()V

    iput-object v0, p0, Landroidx/work/c;->i:Landroidx/work/d;

    .line 96
    iget-boolean v0, p1, Landroidx/work/c;->c:Z

    iput-boolean v0, p0, Landroidx/work/c;->c:Z

    .line 97
    iget-boolean v0, p1, Landroidx/work/c;->d:Z

    iput-boolean v0, p0, Landroidx/work/c;->d:Z

    .line 98
    iget-object v0, p1, Landroidx/work/c;->b:Landroidx/work/m;

    iput-object v0, p0, Landroidx/work/c;->b:Landroidx/work/m;

    .line 99
    iget-boolean v0, p1, Landroidx/work/c;->e:Z

    iput-boolean v0, p0, Landroidx/work/c;->e:Z

    .line 100
    iget-boolean v0, p1, Landroidx/work/c;->f:Z

    iput-boolean v0, p0, Landroidx/work/c;->f:Z

    .line 101
    iget-object v0, p1, Landroidx/work/c;->i:Landroidx/work/d;

    iput-object v0, p0, Landroidx/work/c;->i:Landroidx/work/d;

    .line 102
    return-void
.end method


# virtual methods
.method public a()Landroidx/work/m;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/m;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 198
    iput-wide p1, p0, Landroidx/work/c;->g:J

    .line 199
    return-void
.end method

.method public a(Landroidx/work/d;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Landroidx/work/c;->i:Landroidx/work/d;

    .line 227
    return-void
.end method

.method public a(Landroidx/work/m;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Landroidx/work/c;->b:Landroidx/work/m;

    .line 115
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Landroidx/work/c;->c:Z

    .line 131
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 216
    iput-wide p1, p0, Landroidx/work/c;->h:J

    .line 217
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 148
    iput-boolean p1, p0, Landroidx/work/c;->d:Z

    .line 149
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Landroidx/work/c;->c:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 164
    iput-boolean p1, p0, Landroidx/work/c;->e:Z

    .line 165
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Landroidx/work/c;->d:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Landroidx/work/c;->f:Z

    .line 181
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Landroidx/work/c;->e:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Landroidx/work/c;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 250
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 253
    check-cast p1, Landroidx/work/c;

    .line 255
    iget-boolean v1, p0, Landroidx/work/c;->c:Z

    iget-boolean v2, p1, Landroidx/work/c;->c:Z

    if-ne v1, v2, :cond_0

    .line 256
    iget-boolean v1, p0, Landroidx/work/c;->d:Z

    iget-boolean v2, p1, Landroidx/work/c;->d:Z

    if-ne v1, v2, :cond_0

    .line 257
    iget-boolean v1, p0, Landroidx/work/c;->e:Z

    iget-boolean v2, p1, Landroidx/work/c;->e:Z

    if-ne v1, v2, :cond_0

    .line 258
    iget-boolean v1, p0, Landroidx/work/c;->f:Z

    iget-boolean v2, p1, Landroidx/work/c;->f:Z

    if-ne v1, v2, :cond_0

    .line 259
    iget-wide v2, p0, Landroidx/work/c;->g:J

    iget-wide v4, p1, Landroidx/work/c;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 260
    iget-wide v2, p0, Landroidx/work/c;->h:J

    iget-wide v4, p1, Landroidx/work/c;->h:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 261
    iget-object v1, p0, Landroidx/work/c;->b:Landroidx/work/m;

    iget-object v2, p1, Landroidx/work/c;->b:Landroidx/work/m;

    if-ne v1, v2, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/work/c;->i:Landroidx/work/d;

    iget-object v1, p1, Landroidx/work/c;->i:Landroidx/work/d;

    invoke-virtual {v0, v1}, Landroidx/work/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Landroidx/work/c;->g:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 207
    iget-wide v0, p0, Landroidx/work/c;->h:J

    return-wide v0
.end method

.method public h()Landroidx/work/d;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroidx/work/c;->i:Landroidx/work/d;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Landroidx/work/c;->b:Landroidx/work/m;

    invoke-virtual {v0}, Landroidx/work/m;->hashCode()I

    move-result v0

    .line 268
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Landroidx/work/c;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 269
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Landroidx/work/c;->d:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 270
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Landroidx/work/c;->e:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 271
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Landroidx/work/c;->f:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 272
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Landroidx/work/c;->g:J

    iget-wide v4, p0, Landroidx/work/c;->g:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 274
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Landroidx/work/c;->h:J

    iget-wide v4, p0, Landroidx/work/c;->h:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 275
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/c;->i:Landroidx/work/d;

    invoke-virtual {v1}, Landroidx/work/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    return v0

    :cond_0
    move v0, v2

    .line 268
    goto :goto_0

    :cond_1
    move v0, v2

    .line 269
    goto :goto_1

    :cond_2
    move v0, v2

    .line 270
    goto :goto_2

    :cond_3
    move v1, v2

    .line 271
    goto :goto_3
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroidx/work/c;->i:Landroidx/work/d;

    invoke-virtual {v0}, Landroidx/work/d;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
