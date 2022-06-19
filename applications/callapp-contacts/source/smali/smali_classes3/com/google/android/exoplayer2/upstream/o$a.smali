.class public final Lcom/google/android/exoplayer2/upstream/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field b:I

.field c:I

.field d:Z

.field private final e:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

.field private f:Lcom/google/android/exoplayer2/upstream/v;

.field private g:Lcom/google/common/base/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/n<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$a;->e:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    const/16 v0, 0x1f40

    .line 79
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o$a;->b:I

    .line 80
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/o$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/upstream/o;
    .locals 9

    .line 183
    new-instance v8, Lcom/google/android/exoplayer2/upstream/o;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o$a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/o$a;->b:I

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/o$a;->c:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/o$a;->d:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/o$a;->e:Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/o$a;->g:Lcom/google/common/base/n;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/o;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;Lcom/google/common/base/n;Lcom/google/android/exoplayer2/upstream/o$1;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o$a;->f:Lcom/google/android/exoplayer2/upstream/v;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/upstream/o;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    :cond_0
    return-object v8
.end method

.method public final synthetic b()Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/o$a;->a()Lcom/google/android/exoplayer2/upstream/o;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/h;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/o$a;->a()Lcom/google/android/exoplayer2/upstream/o;

    move-result-object v0

    return-object v0
.end method
