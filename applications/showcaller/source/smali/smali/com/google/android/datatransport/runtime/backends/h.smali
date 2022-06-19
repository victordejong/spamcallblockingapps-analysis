.class Lcom/google/android/datatransport/runtime/backends/h;
.super Ljava/lang/Object;
.source "CreationContextFactory.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/datatransport/h/y/a;

.field private final c:Lcom/google/android/datatransport/h/y/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/y/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/h;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/h;->b:Lcom/google/android/datatransport/h/y/a;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/backends/h;->c:Lcom/google/android/datatransport/h/y/a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/h;->b:Lcom/google/android/datatransport/h/y/a;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/backends/h;->c:Lcom/google/android/datatransport/h/y/a;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/datatransport/runtime/backends/g;->a(Landroid/content/Context;Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/y/a;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/g;

    move-result-object p1

    return-object p1
.end method
