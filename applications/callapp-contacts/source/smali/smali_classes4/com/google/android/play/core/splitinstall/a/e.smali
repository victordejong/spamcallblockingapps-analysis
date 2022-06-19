.class final synthetic Lcom/google/android/play/core/splitinstall/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/a/j;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/b;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/e;->a:Lcom/google/android/play/core/splitinstall/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitinstall/c;)Lcom/google/android/play/core/splitinstall/c;
    .locals 11

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/e;->a:Lcom/google/android/play/core/splitinstall/b;

    sget v1, Lcom/google/android/play/core/splitinstall/a/a;->h:I

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 1000
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->b()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    .line 2000
    :cond_2
    new-instance p1, Lcom/google/android/play/core/splitinstall/SplitInstallException;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lcom/google/android/play/core/splitinstall/SplitInstallException;-><init>(I)V

    throw p1

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->a()I

    move-result p1

    add-int/2addr v1, p1

    move v2, v1

    :goto_3
    iget-object v9, v0, Lcom/google/android/play/core/splitinstall/b;->a:Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v2 .. v10}, Lcom/google/android/play/core/splitinstall/c;->a(IIIJJLjava/util/List;Ljava/util/List;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object p1

    return-object p1
.end method
