.class final synthetic Lcom/google/android/datatransport/h/x/j/r;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/h/x/j/b0$b;


# static fields
.field private static final a:Lcom/google/android/datatransport/h/x/j/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/h/x/j/r;

    invoke-direct {v0}, Lcom/google/android/datatransport/h/x/j/r;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/h/x/j/r;->a:Lcom/google/android/datatransport/h/x/j/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/datatransport/h/x/j/b0$b;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/h/x/j/r;->a:Lcom/google/android/datatransport/h/x/j/r;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/google/android/datatransport/h/x/j/b0;->D(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
