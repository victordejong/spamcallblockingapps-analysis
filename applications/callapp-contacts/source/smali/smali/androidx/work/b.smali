.class public final Landroidx/work/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/b$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/work/b;


# instance fields
.field public b:Landroidx/work/l;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J

.field public h:J

.field public i:Landroidx/work/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroidx/work/b$a;

    invoke-direct {v0}, Landroidx/work/b$a;-><init>()V

    invoke-virtual {v0}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v0

    sput-object v0, Landroidx/work/b;->a:Landroidx/work/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Landroidx/work/l;->NOT_REQUIRED:Landroidx/work/l;

    iput-object v0, p0, Landroidx/work/b;->b:Landroidx/work/l;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Landroidx/work/b;->g:J

    .line 67
    iput-wide v0, p0, Landroidx/work/b;->h:J

    .line 72
    new-instance v0, Landroidx/work/c;

    invoke-direct {v0}, Landroidx/work/c;-><init>()V

    iput-object v0, p0, Landroidx/work/b;->i:Landroidx/work/c;

    return-void
.end method

.method constructor <init>(Landroidx/work/b$a;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Landroidx/work/l;->NOT_REQUIRED:Landroidx/work/l;

    iput-object v0, p0, Landroidx/work/b;->b:Landroidx/work/l;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Landroidx/work/b;->g:J

    .line 67
    iput-wide v0, p0, Landroidx/work/b;->h:J

    .line 72
    new-instance v0, Landroidx/work/c;

    invoke-direct {v0}, Landroidx/work/c;-><init>()V

    iput-object v0, p0, Landroidx/work/b;->i:Landroidx/work/c;

    .line 83
    iget-boolean v0, p1, Landroidx/work/b$a;->a:Z

    iput-boolean v0, p0, Landroidx/work/b;->c:Z

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p1, Landroidx/work/b$a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/work/b;->d:Z

    .line 85
    iget-object v0, p1, Landroidx/work/b$a;->c:Landroidx/work/l;

    iput-object v0, p0, Landroidx/work/b;->b:Landroidx/work/l;

    .line 86
    iget-boolean v0, p1, Landroidx/work/b$a;->d:Z

    iput-boolean v0, p0, Landroidx/work/b;->e:Z

    .line 87
    iget-boolean v0, p1, Landroidx/work/b$a;->e:Z

    iput-boolean v0, p0, Landroidx/work/b;->f:Z

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 89
    iget-object v0, p1, Landroidx/work/b$a;->h:Landroidx/work/c;

    iput-object v0, p0, Landroidx/work/b;->i:Landroidx/work/c;

    .line 90
    iget-wide v0, p1, Landroidx/work/b$a;->f:J

    iput-wide v0, p0, Landroidx/work/b;->g:J

    .line 91
    iget-wide v0, p1, Landroidx/work/b$a;->g:J

    iput-wide v0, p0, Landroidx/work/b;->h:J

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroidx/work/b;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Landroidx/work/l;->NOT_REQUIRED:Landroidx/work/l;

    iput-object v0, p0, Landroidx/work/b;->b:Landroidx/work/l;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Landroidx/work/b;->g:J

    .line 67
    iput-wide v0, p0, Landroidx/work/b;->h:J

    .line 72
    new-instance v0, Landroidx/work/c;

    invoke-direct {v0}, Landroidx/work/c;-><init>()V

    iput-object v0, p0, Landroidx/work/b;->i:Landroidx/work/c;

    .line 96
    iget-boolean v0, p1, Landroidx/work/b;->c:Z

    iput-boolean v0, p0, Landroidx/work/b;->c:Z

    .line 97
    iget-boolean v0, p1, Landroidx/work/b;->d:Z

    iput-boolean v0, p0, Landroidx/work/b;->d:Z

    .line 98
    iget-object v0, p1, Landroidx/work/b;->b:Landroidx/work/l;

    iput-object v0, p0, Landroidx/work/b;->b:Landroidx/work/l;

    .line 99
    iget-boolean v0, p1, Landroidx/work/b;->e:Z

    iput-boolean v0, p0, Landroidx/work/b;->e:Z

    .line 100
    iget-boolean v0, p1, Landroidx/work/b;->f:Z

    iput-boolean v0, p0, Landroidx/work/b;->f:Z

    .line 101
    iget-object p1, p1, Landroidx/work/b;->i:Landroidx/work/c;

    iput-object p1, p0, Landroidx/work/b;->i:Landroidx/work/c;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 245
    iget-object v0, p0, Landroidx/work/b;->i:Landroidx/work/c;

    invoke-virtual {v0}, Landroidx/work/c;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    check-cast p1, Landroidx/work/b;

    .line 255
    iget-boolean v1, p0, Landroidx/work/b;->c:Z

    iget-boolean v2, p1, Landroidx/work/b;->c:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 256
    :cond_2
    iget-boolean v1, p0, Landroidx/work/b;->d:Z

    iget-boolean v2, p1, Landroidx/work/b;->d:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 257
    :cond_3
    iget-boolean v1, p0, Landroidx/work/b;->e:Z

    iget-boolean v2, p1, Landroidx/work/b;->e:Z

    if-eq v1, v2, :cond_4

    return v0

    .line 258
    :cond_4
    iget-boolean v1, p0, Landroidx/work/b;->f:Z

    iget-boolean v2, p1, Landroidx/work/b;->f:Z

    if-eq v1, v2, :cond_5

    return v0

    .line 259
    :cond_5
    iget-wide v1, p0, Landroidx/work/b;->g:J

    iget-wide v3, p1, Landroidx/work/b;->g:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    return v0

    .line 260
    :cond_6
    iget-wide v1, p0, Landroidx/work/b;->h:J

    iget-wide v3, p1, Landroidx/work/b;->h:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    return v0

    .line 261
    :cond_7
    iget-object v1, p0, Landroidx/work/b;->b:Landroidx/work/l;

    iget-object v2, p1, Landroidx/work/b;->b:Landroidx/work/l;

    if-eq v1, v2, :cond_8

    return v0

    .line 262
    :cond_8
    iget-object v0, p0, Landroidx/work/b;->i:Landroidx/work/c;

    iget-object p1, p1, Landroidx/work/b;->i:Landroidx/work/c;

    invoke-virtual {v0, p1}, Landroidx/work/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 267
    iget-object v0, p0, Landroidx/work/b;->b:Landroidx/work/l;

    invoke-virtual {v0}, Landroidx/work/l;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget-boolean v1, p0, Landroidx/work/b;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget-boolean v1, p0, Landroidx/work/b;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-boolean v1, p0, Landroidx/work/b;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-boolean v1, p0, Landroidx/work/b;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 272
    iget-wide v1, p0, Landroidx/work/b;->g:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-wide v1, p0, Landroidx/work/b;->h:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    iget-object v1, p0, Landroidx/work/b;->i:Landroidx/work/c;

    invoke-virtual {v1}, Landroidx/work/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
