.class public final Lcom/google/android/exoplayer2/upstream/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/h$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/upstream/v;

.field private final c:Lcom/google/android/exoplayer2/upstream/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/v;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/h$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/v;Lcom/google/android/exoplayer2/upstream/h$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/v;Lcom/google/android/exoplayer2/upstream/h$a;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/n;->a:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/n;->b:Lcom/google/android/exoplayer2/upstream/v;

    .line 92
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/n;->c:Lcom/google/android/exoplayer2/upstream/h$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/v;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/google/android/exoplayer2/upstream/o$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/o$a;-><init>()V

    .line 1107
    iput-object p2, v0, Lcom/google/android/exoplayer2/upstream/o$a;->a:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1, p3, v0}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/v;Lcom/google/android/exoplayer2/upstream/h$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/h;
    .locals 3

    .line 2097
    new-instance v0, Lcom/google/android/exoplayer2/upstream/m;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/n;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/n;->c:Lcom/google/android/exoplayer2/upstream/h$a;

    .line 2098
    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/h$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/h;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/m;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/h;)V

    .line 2099
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/n;->b:Lcom/google/android/exoplayer2/upstream/v;

    if-eqz v1, :cond_0

    .line 2100
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    :cond_0
    return-object v0
.end method
