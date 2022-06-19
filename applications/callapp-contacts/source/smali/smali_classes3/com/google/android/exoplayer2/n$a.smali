.class final Lcom/google/android/exoplayer2/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lcom/google/android/exoplayer2/al;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/al;)V
    .locals 0

    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1438
    iput-object p1, p0, Lcom/google/android/exoplayer2/n$a;->b:Ljava/lang/Object;

    .line 1439
    iput-object p2, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/al;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lcom/google/android/exoplayer2/al;
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/google/android/exoplayer2/n$a;->a:Lcom/google/android/exoplayer2/al;

    return-object v0
.end method
