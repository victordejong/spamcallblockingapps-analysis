.class public final Lcom/google/android/exoplayer2/source/n$b;
.super Lcom/google/android/exoplayer2/al;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/MediaItem;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 0

    .line 360
    invoke-direct {p0}, Lcom/google/android/exoplayer2/al;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/n$b;->a:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(ILcom/google/android/exoplayer2/al$a;Z)Lcom/google/android/exoplayer2/al$a;
    .locals 8

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 399
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz p3, :cond_1

    .line 400
    sget-object p1, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    :cond_1
    move-object v3, p1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    move-object v1, p2

    .line 398
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/al$a;->a(Ljava/lang/Object;Ljava/lang/Object;JJ)Lcom/google/android/exoplayer2/al$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;
    .locals 19

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    .line 371
    sget-object v1, Lcom/google/android/exoplayer2/al$b;->a:Ljava/lang/Object;

    move-object/from16 v13, p0

    iget-object v2, v13, Lcom/google/android/exoplayer2/source/n$b;->a:Lcom/google/android/exoplayer2/MediaItem;

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v15, v16

    const-wide/16 v17, 0x0

    invoke-virtual/range {v0 .. v18}, Lcom/google/android/exoplayer2/al$b;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJJ)Lcom/google/android/exoplayer2/al$b;

    const/4 v0, 0x1

    move-object/from16 v1, p2

    .line 387
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/al$b;->m:Z

    return-object v1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 0

    .line 413
    sget-object p1, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Ljava/lang/Object;)I
    .locals 1

    .line 408
    sget-object v0, Lcom/google/android/exoplayer2/source/n$a;->c:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
