.class final Lcom/google/android/exoplayer2/source/n$a;
.super Lcom/google/android/exoplayer2/source/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/j;-><init>(Lcom/google/android/exoplayer2/al;)V

    .line 302
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/n$a;->d:Ljava/lang/Object;

    .line 303
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/n$a;
    .locals 3

    .line 276
    new-instance v0, Lcom/google/android/exoplayer2/source/n$a;

    new-instance v1, Lcom/google/android/exoplayer2/source/n$b;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/n$b;-><init>(Lcom/google/android/exoplayer2/MediaItem;)V

    sget-object p0, Lcom/google/android/exoplayer2/al$b;->a:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/source/n$a;-><init>(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/n$a;
    .locals 1

    .line 294
    new-instance v0, Lcom/google/android/exoplayer2/source/n$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/n$a;-><init>(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/n$a;)Ljava/lang/Object;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;

    .line 332
    iget-object p1, p2, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 333
    sget-object p1, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    iput-object p1, p2, Lcom/google/android/exoplayer2/al$a;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/al;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    .line 323
    iget-object p1, p2, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/n$a;->d:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    sget-object p1, Lcom/google/android/exoplayer2/al$b;->a:Ljava/lang/Object;

    iput-object p1, p2, Lcom/google/android/exoplayer2/al$b;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final a(Lcom/google/android/exoplayer2/al;)Lcom/google/android/exoplayer2/source/n$a;
    .locals 3

    .line 312
    new-instance v0, Lcom/google/android/exoplayer2/source/n$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/n$a;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/n$a;-><init>(Lcom/google/android/exoplayer2/al;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->a:Lcom/google/android/exoplayer2/al;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/al;->a(I)Ljava/lang/Object;

    move-result-object p1

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/n$a;->a:Lcom/google/android/exoplayer2/al;

    .line 341
    sget-object v1, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/n$a;->e:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object p1, v1

    .line 340
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/al;->c(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
