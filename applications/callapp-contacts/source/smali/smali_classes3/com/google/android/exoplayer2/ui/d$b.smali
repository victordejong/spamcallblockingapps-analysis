.class final Lcom/google/android/exoplayer2/ui/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/ui/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/ui/d$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 332
    sget-object v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$d$b$tc1Y_2QbgOkDJdn_HzXbgB7GSfQ;->INSTANCE:Lcom/google/android/exoplayer2/ui/-$$Lambda$d$b$tc1Y_2QbgOkDJdn_HzXbgB7GSfQ;

    sput-object v0, Lcom/google/android/exoplayer2/ui/d$b;->e:Ljava/util/Comparator;

    .line 349
    sget-object v0, Lcom/google/android/exoplayer2/ui/-$$Lambda$d$b$MV7IGaGxtWP5pLZHaYnsofQOYGs;->INSTANCE:Lcom/google/android/exoplayer2/ui/-$$Lambda$d$b$MV7IGaGxtWP5pLZHaYnsofQOYGs;

    sput-object v0, Lcom/google/android/exoplayer2/ui/d$b;->f:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput p1, p0, Lcom/google/android/exoplayer2/ui/d$b;->a:I

    .line 369
    iput p2, p0, Lcom/google/android/exoplayer2/ui/d$b;->b:I

    .line 370
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/d$b;->c:Ljava/lang/String;

    .line 371
    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/d$b;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/ui/d$1;)V
    .locals 0

    .line 327
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/d$b;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/ui/d$b;Lcom/google/android/exoplayer2/ui/d$b;)I
    .locals 2

    .line 351
    iget v0, p1, Lcom/google/android/exoplayer2/ui/d$b;->a:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/d$b;->a:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 355
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/d$b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/d$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 359
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/d$b;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/d$b;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic a()Ljava/util/Comparator;
    .locals 1

    .line 327
    sget-object v0, Lcom/google/android/exoplayer2/ui/d$b;->f:Ljava/util/Comparator;

    return-object v0
.end method

.method private static synthetic b(Lcom/google/android/exoplayer2/ui/d$b;Lcom/google/android/exoplayer2/ui/d$b;)I
    .locals 2

    .line 334
    iget v0, p1, Lcom/google/android/exoplayer2/ui/d$b;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/d$b;->b:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/d$b;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/d$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    .line 342
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/d$b;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/d$b;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    .line 327
    sget-object v0, Lcom/google/android/exoplayer2/ui/d$b;->e:Ljava/util/Comparator;

    return-object v0
.end method

.method public static synthetic lambda$MV7IGaGxtWP5pLZHaYnsofQOYGs(Lcom/google/android/exoplayer2/ui/d$b;Lcom/google/android/exoplayer2/ui/d$b;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/d$b;->a(Lcom/google/android/exoplayer2/ui/d$b;Lcom/google/android/exoplayer2/ui/d$b;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$tc1Y_2QbgOkDJdn_HzXbgB7GSfQ(Lcom/google/android/exoplayer2/ui/d$b;Lcom/google/android/exoplayer2/ui/d$b;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/d$b;->b(Lcom/google/android/exoplayer2/ui/d$b;Lcom/google/android/exoplayer2/ui/d$b;)I

    move-result p0

    return p0
.end method
