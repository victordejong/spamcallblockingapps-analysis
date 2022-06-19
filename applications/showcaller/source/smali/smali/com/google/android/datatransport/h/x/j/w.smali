.class final synthetic Lcom/google/android/datatransport/h/x/j/w;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/h/x/j/b0$b;


# instance fields
.field private final a:Lcom/google/android/datatransport/h/x/j/b0;

.field private final b:Lcom/google/android/datatransport/h/m;

.field private final c:Lcom/google/android/datatransport/h/h;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/h/x/j/b0;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/x/j/w;->a:Lcom/google/android/datatransport/h/x/j/b0;

    iput-object p2, p0, Lcom/google/android/datatransport/h/x/j/w;->b:Lcom/google/android/datatransport/h/m;

    iput-object p3, p0, Lcom/google/android/datatransport/h/x/j/w;->c:Lcom/google/android/datatransport/h/h;

    return-void
.end method

.method public static b(Lcom/google/android/datatransport/h/x/j/b0;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;)Lcom/google/android/datatransport/h/x/j/b0$b;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/h/x/j/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/h/x/j/w;-><init>(Lcom/google/android/datatransport/h/x/j/b0;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/h/x/j/w;->a:Lcom/google/android/datatransport/h/x/j/b0;

    iget-object v1, p0, Lcom/google/android/datatransport/h/x/j/w;->b:Lcom/google/android/datatransport/h/m;

    iget-object v2, p0, Lcom/google/android/datatransport/h/x/j/w;->c:Lcom/google/android/datatransport/h/h;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/datatransport/h/x/j/b0;->Y(Lcom/google/android/datatransport/h/x/j/b0;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
