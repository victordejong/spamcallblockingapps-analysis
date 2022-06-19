.class final synthetic Lcom/google/android/datatransport/h/x/b;
.super Ljava/lang/Object;
.source "DefaultScheduler.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/a$a;


# instance fields
.field private final a:Lcom/google/android/datatransport/h/x/c;

.field private final b:Lcom/google/android/datatransport/h/m;

.field private final c:Lcom/google/android/datatransport/h/h;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/h/x/c;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/x/b;->a:Lcom/google/android/datatransport/h/x/c;

    iput-object p2, p0, Lcom/google/android/datatransport/h/x/b;->b:Lcom/google/android/datatransport/h/m;

    iput-object p3, p0, Lcom/google/android/datatransport/h/x/b;->c:Lcom/google/android/datatransport/h/h;

    return-void
.end method

.method public static a(Lcom/google/android/datatransport/h/x/c;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;)Lcom/google/android/datatransport/runtime/synchronization/a$a;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/h/x/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/h/x/b;-><init>(Lcom/google/android/datatransport/h/x/c;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;)V

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/h/x/b;->a:Lcom/google/android/datatransport/h/x/c;

    iget-object v1, p0, Lcom/google/android/datatransport/h/x/b;->b:Lcom/google/android/datatransport/h/m;

    iget-object v2, p0, Lcom/google/android/datatransport/h/x/b;->c:Lcom/google/android/datatransport/h/h;

    invoke-static {v0, v1, v2}, Lcom/google/android/datatransport/h/x/c;->b(Lcom/google/android/datatransport/h/x/c;Lcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
