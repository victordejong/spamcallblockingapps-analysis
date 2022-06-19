.class public final Lcom/google/android/exoplayer2/upstream/FileDataSource$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/upstream/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/h;
    .locals 2

    .line 1064
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    .line 1065
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;->a:Lcom/google/android/exoplayer2/upstream/v;

    if-eqz v1, :cond_0

    .line 1066
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    :cond_0
    return-object v0
.end method
