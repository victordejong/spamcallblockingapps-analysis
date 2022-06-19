.class final Lcom/google/android/exoplayer2/upstream/c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/c$a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Lcom/google/android/exoplayer2/upstream/c$a;

.field c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/c$a;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/c$a$a$a;->a:Landroid/os/Handler;

    .line 96
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/c$a$a$a;->b:Lcom/google/android/exoplayer2/upstream/c$a;

    return-void
.end method
