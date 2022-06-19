.class final synthetic Lcom/google/android/play/core/splitinstall/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/a/j;


# instance fields
.field private final a:Ljava/lang/Integer;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/Long;

.field private final e:Ljava/lang/Long;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/Integer;IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/c;->a:Ljava/lang/Integer;

    iput p2, p0, Lcom/google/android/play/core/splitinstall/a/c;->b:I

    iput p3, p0, Lcom/google/android/play/core/splitinstall/a/c;->c:I

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/a/c;->d:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/play/core/splitinstall/a/c;->e:Ljava/lang/Long;

    iput-object p6, p0, Lcom/google/android/play/core/splitinstall/a/c;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/play/core/splitinstall/a/c;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/splitinstall/c;)Lcom/google/android/play/core/splitinstall/c;
    .locals 8

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/c;->a:Ljava/lang/Integer;

    iget v1, p0, Lcom/google/android/play/core/splitinstall/a/c;->b:I

    iget v2, p0, Lcom/google/android/play/core/splitinstall/a/c;->c:I

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/a/c;->d:Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/a/c;->e:Ljava/lang/Long;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/a/c;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/play/core/splitinstall/a/c;->g:Ljava/util/List;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/play/core/splitinstall/a/a;->a(Ljava/lang/Integer;IILjava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Lcom/google/android/play/core/splitinstall/c;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object p1

    return-object p1
.end method
