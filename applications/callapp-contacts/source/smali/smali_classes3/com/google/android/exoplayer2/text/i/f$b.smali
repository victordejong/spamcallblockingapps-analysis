.class final Lcom/google/android/exoplayer2/text/i/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    iput p2, p0, Lcom/google/android/exoplayer2/text/i/f$b;->b:I

    .line 939
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/i/f$b;->a:Ljava/lang/String;

    .line 940
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/i/f$b;->c:Ljava/lang/String;

    .line 941
    iput-object p4, p0, Lcom/google/android/exoplayer2/text/i/f$b;->d:Ljava/util/Set;

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/google/android/exoplayer2/text/i/f$b;
    .locals 5

    .line 945
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 946
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    const-string v0, " "

    .line 947
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 952
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 953
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v0, v2

    :goto_0
    const-string v2, "\\."

    .line 955
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 956
    aget-object v2, p0, v3

    .line 957
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 958
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 959
    aget-object v4, p0, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 961
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/text/i/f$b;

    invoke-direct {p0, v2, p1, v0, v3}, Lcom/google/android/exoplayer2/text/i/f$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    return-object p0
.end method
