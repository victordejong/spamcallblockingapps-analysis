.class final synthetic Lcom/google/android/datatransport/h/x/j/j;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/h/x/j/b0$b;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/datatransport/h/m;


# direct methods
.method private constructor <init>(JLcom/google/android/datatransport/h/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/datatransport/h/x/j/j;->a:J

    iput-object p3, p0, Lcom/google/android/datatransport/h/x/j/j;->b:Lcom/google/android/datatransport/h/m;

    return-void
.end method

.method public static b(JLcom/google/android/datatransport/h/m;)Lcom/google/android/datatransport/h/x/j/b0$b;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/h/x/j/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/h/x/j/j;-><init>(JLcom/google/android/datatransport/h/m;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-wide v0, p0, Lcom/google/android/datatransport/h/x/j/j;->a:J

    iget-object v2, p0, Lcom/google/android/datatransport/h/x/j/j;->b:Lcom/google/android/datatransport/h/m;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/datatransport/h/x/j/b0;->d0(JLcom/google/android/datatransport/h/m;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
