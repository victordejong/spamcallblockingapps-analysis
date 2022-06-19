.class final Lcom/google/android/exoplayer2/text/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/text/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/exoplayer2/text/b;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1327
    sget-object v0, Lcom/google/android/exoplayer2/text/a/-$$Lambda$b$a$YskcJtEuqMKQOqsRy3Keb1fvr-M;->INSTANCE:Lcom/google/android/exoplayer2/text/a/-$$Lambda$b$a$YskcJtEuqMKQOqsRy3Keb1fvr-M;

    sput-object v0, Lcom/google/android/exoplayer2/text/a/b$a;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    new-instance v0, Lcom/google/android/exoplayer2/text/b$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/b$a;-><init>()V

    .line 1539
    iput-object p1, v0, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    .line 1581
    iput-object p2, v0, Lcom/google/android/exoplayer2/text/b$a;->c:Landroid/text/Layout$Alignment;

    .line 1370
    invoke-virtual {v0, p3, p4}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    move-result-object p1

    .line 1634
    iput p5, p1, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 1655
    iput p6, p1, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 1675
    iput p7, p1, Lcom/google/android/exoplayer2/text/b$a;->f:I

    .line 1727
    iput p8, p1, Lcom/google/android/exoplayer2/text/b$a;->g:F

    if-eqz p9, :cond_0

    .line 1769
    iput p10, p1, Lcom/google/android/exoplayer2/text/b$a;->j:I

    const/4 p2, 0x1

    .line 1770
    iput-boolean p2, p1, Lcom/google/android/exoplayer2/text/b$a;->i:Z

    .line 1378
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/b$a;->a()Lcom/google/android/exoplayer2/text/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/a/b$a;->a:Lcom/google/android/exoplayer2/text/b;

    .line 1379
    iput p11, p0, Lcom/google/android/exoplayer2/text/a/b$a;->b:I

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/text/a/b$a;Lcom/google/android/exoplayer2/text/a/b$a;)I
    .locals 0

    .line 1328
    iget p1, p1, Lcom/google/android/exoplayer2/text/a/b$a;->b:I

    iget p0, p0, Lcom/google/android/exoplayer2/text/a/b$a;->b:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic a()Ljava/util/Comparator;
    .locals 1

    .line 1321
    sget-object v0, Lcom/google/android/exoplayer2/text/a/b$a;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method public static synthetic lambda$YskcJtEuqMKQOqsRy3Keb1fvr-M(Lcom/google/android/exoplayer2/text/a/b$a;Lcom/google/android/exoplayer2/text/a/b$a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/a/b$a;->a(Lcom/google/android/exoplayer2/text/a/b$a;Lcom/google/android/exoplayer2/text/a/b$a;)I

    move-result p0

    return p0
.end method
