.class final Lcom/google/android/exoplayer2/text/i/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/text/i/f$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/exoplayer2/text/i/f$b;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 976
    sget-object v0, Lcom/google/android/exoplayer2/text/i/-$$Lambda$f$a$O3hYg7ZAg2ZENjTHcCeqAsljARY;->INSTANCE:Lcom/google/android/exoplayer2/text/i/-$$Lambda$f$a$O3hYg7ZAg2ZENjTHcCeqAsljARY;

    sput-object v0, Lcom/google/android/exoplayer2/text/i/f$a;->a:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/text/i/f$b;I)V
    .locals 0

    .line 986
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/i/f$a;->b:Lcom/google/android/exoplayer2/text/i/f$b;

    .line 988
    iput p2, p0, Lcom/google/android/exoplayer2/text/i/f$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/i/f$b;ILcom/google/android/exoplayer2/text/i/f$1;)V
    .locals 0

    .line 975
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/i/f$a;-><init>(Lcom/google/android/exoplayer2/text/i/f$b;I)V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/text/i/f$a;Lcom/google/android/exoplayer2/text/i/f$a;)I
    .locals 0

    .line 977
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/i/f$a;->b:Lcom/google/android/exoplayer2/text/i/f$b;

    iget p0, p0, Lcom/google/android/exoplayer2/text/i/f$b;->b:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/text/i/f$a;->b:Lcom/google/android/exoplayer2/text/i/f$b;

    iget p1, p1, Lcom/google/android/exoplayer2/text/i/f$b;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/text/i/f$a;)Lcom/google/android/exoplayer2/text/i/f$b;
    .locals 0

    .line 975
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/i/f$a;->b:Lcom/google/android/exoplayer2/text/i/f$b;

    return-object p0
.end method

.method static synthetic a()Ljava/util/Comparator;
    .locals 1

    .line 975
    sget-object v0, Lcom/google/android/exoplayer2/text/i/f$a;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/text/i/f$a;)I
    .locals 0

    .line 975
    iget p0, p0, Lcom/google/android/exoplayer2/text/i/f$a;->c:I

    return p0
.end method

.method public static synthetic lambda$O3hYg7ZAg2ZENjTHcCeqAsljARY(Lcom/google/android/exoplayer2/text/i/f$a;Lcom/google/android/exoplayer2/text/i/f$a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/i/f$a;->a(Lcom/google/android/exoplayer2/text/i/f$a;Lcom/google/android/exoplayer2/text/i/f$a;)I

    move-result p0

    return p0
.end method
