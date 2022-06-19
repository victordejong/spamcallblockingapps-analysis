.class Landroidx/media2/widget/c$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# static fields
.field static final c:[Ljava/lang/String;


# instance fields
.field final d:I

.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "WHITE"

    const-string v1, "GREEN"

    const-string v2, "BLUE"

    const-string v3, "CYAN"

    const-string v4, "RED"

    const-string v5, "YELLOW"

    const-string v6, "MAGENTA"

    const-string v7, "INVALID"

    .line 294
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media2/widget/c$g;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput p1, p0, Landroidx/media2/widget/c$g;->d:I

    .line 320
    iput p2, p0, Landroidx/media2/widget/c$g;->e:I

    return-void
.end method

.method static a(B)Landroidx/media2/widget/c$g;
    .locals 3

    shr-int/lit8 v0, p0, 0x1

    const/4 v1, 0x7

    and-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    or-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    .line 315
    :cond_1
    new-instance v1, Landroidx/media2/widget/c$g;

    invoke-direct {v1, p0, v0}, Landroidx/media2/widget/c$g;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    sget-object v1, Landroidx/media2/widget/c$g;->c:[Ljava/lang/String;

    iget v2, p0, Landroidx/media2/widget/c$g;->e:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget v1, p0, Landroidx/media2/widget/c$g;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, ", ITALICS"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_0
    iget v1, p0, Landroidx/media2/widget/c$g;->d:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, ", UNDERLINE"

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
