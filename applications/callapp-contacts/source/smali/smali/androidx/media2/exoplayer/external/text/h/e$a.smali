.class public final Landroidx/media2/exoplayer/external/text/h/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:Landroid/text/SpannableStringBuilder;

.field d:Landroid/text/Layout$Alignment;

.field e:F

.field f:I

.field g:I

.field h:F

.field i:I

.field j:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/h/e$a;->a()V

    return-void
.end method

.method private c()Landroidx/media2/exoplayer/external/text/h/e$a;
    .locals 4

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->d:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    .line 164
    iput v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->i:I

    goto :goto_0

    .line 166
    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/text/h/e$1;->a:[I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->d:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 177
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->d:Landroid/text/Layout$Alignment;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unrecognized alignment: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WebvttCueBuilder"

    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput v1, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->i:I

    goto :goto_0

    .line 174
    :cond_1
    iput v3, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->i:I

    goto :goto_0

    .line 171
    :cond_2
    iput v2, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->i:I

    goto :goto_0

    .line 168
    :cond_3
    iput v1, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->i:I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 90
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->a:J

    .line 91
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->b:J

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->c:Landroid/text/SpannableStringBuilder;

    .line 93
    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->d:Landroid/text/Layout$Alignment;

    const/4 v0, 0x1

    .line 94
    iput v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->e:F

    const/high16 v1, -0x80000000

    .line 95
    iput v1, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->f:I

    .line 96
    iput v1, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->g:I

    .line 97
    iput v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->h:F

    .line 98
    iput v1, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->i:I

    .line 99
    iput v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->j:F

    return-void
.end method

.method public final b()Landroidx/media2/exoplayer/external/text/h/e;
    .locals 15

    .line 105
    iget v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->h:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->i:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 106
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/h/e$a;->c()Landroidx/media2/exoplayer/external/text/h/e$a;

    .line 108
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/text/h/e;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->a:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->b:J

    iget-object v7, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->c:Landroid/text/SpannableStringBuilder;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->d:Landroid/text/Layout$Alignment;

    iget v9, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->e:F

    iget v10, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->f:I

    iget v11, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->g:I

    iget v12, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->h:F

    iget v13, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->i:I

    iget v14, p0, Landroidx/media2/exoplayer/external/text/h/e$a;->j:F

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Landroidx/media2/exoplayer/external/text/h/e;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v0
.end method
