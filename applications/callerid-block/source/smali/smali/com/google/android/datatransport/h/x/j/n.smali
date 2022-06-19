.class final synthetic Lcom/google/android/datatransport/h/x/j/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/h/x/j/b0$b;


# instance fields
.field private final a:Lcom/google/android/datatransport/h/x/j/b0;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/datatransport/h/m;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/h/x/j/b0;Ljava/util/List;Lcom/google/android/datatransport/h/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/x/j/n;->a:Lcom/google/android/datatransport/h/x/j/b0;

    iput-object p2, p0, Lcom/google/android/datatransport/h/x/j/n;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/datatransport/h/x/j/n;->c:Lcom/google/android/datatransport/h/m;

    return-void
.end method

.method public static b(Lcom/google/android/datatransport/h/x/j/b0;Ljava/util/List;Lcom/google/android/datatransport/h/m;)Lcom/google/android/datatransport/h/x/j/b0$b;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/h/x/j/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/h/x/j/n;-><init>(Lcom/google/android/datatransport/h/x/j/b0;Ljava/util/List;Lcom/google/android/datatransport/h/m;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/h/x/j/n;->a:Lcom/google/android/datatransport/h/x/j/b0;

    iget-object v1, p0, Lcom/google/android/datatransport/h/x/j/n;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/datatransport/h/x/j/n;->c:Lcom/google/android/datatransport/h/m;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/datatransport/h/x/j/b0;->g0(Lcom/google/android/datatransport/h/x/j/b0;Ljava/util/List;Lcom/google/android/datatransport/h/m;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
