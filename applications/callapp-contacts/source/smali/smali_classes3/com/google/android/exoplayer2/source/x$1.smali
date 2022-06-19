.class final Lcom/google/android/exoplayer2/source/x$1;
.super Lcom/google/android/exoplayer2/source/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/x;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/google/android/exoplayer2/source/x;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/al;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x$1;->c:Lcom/google/android/exoplayer2/source/x;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/j;-><init>(Lcom/google/android/exoplayer2/al;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;
    .locals 0

    .line 373
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/j;->a(ILcom/google/android/exoplayer2/al$b;J)Lcom/google/android/exoplayer2/al$b;

    const/4 p1, 0x1

    .line 374
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/al$b;->m:Z

    return-object p2
.end method
