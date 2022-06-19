.class final synthetic Lcom/google/android/play/core/splitinstall/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/a/j;


# instance fields
.field private final a:I

.field private final synthetic b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/splitinstall/a/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/splitinstall/a/f;->a:I

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/play/core/splitinstall/a/f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/splitinstall/a/f;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitinstall/c;)Lcom/google/android/play/core/splitinstall/c;
    .locals 10

    iget v0, p0, Lcom/google/android/play/core/splitinstall/a/f;->b:I

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/google/android/play/core/splitinstall/a/f;->a:I

    sget v0, Lcom/google/android/play/core/splitinstall/a/a;->h:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->a()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->d()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->e()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->f()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/c;->g()Ljava/util/List;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Lcom/google/android/play/core/splitinstall/c;->a(IIIJJLjava/util/List;Ljava/util/List;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object p1

    return-object p1

    :cond_1
    iget v0, p0, Lcom/google/android/play/core/splitinstall/a/f;->a:I

    invoke-static {v0, p1}, Lcom/google/android/play/core/splitinstall/a/a;->a(ILcom/google/android/play/core/splitinstall/c;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object p1

    return-object p1
.end method
