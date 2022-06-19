.class public final Lcom/google/android/datatransport/runtime/backends/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/h/u/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/h/u/a/b<",
        "Lcom/google/android/datatransport/runtime/backends/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/backends/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/a/a;Lh/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/backends/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/backends/k;->a:Lh/a/a;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/backends/k;->b:Lh/a/a;

    return-void
.end method

.method public static a(Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/runtime/backends/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/backends/h;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/backends/k;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/datatransport/runtime/backends/k;

    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/backends/k;-><init>(Lh/a/a;Lh/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/backends/j;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/backends/j;

    check-cast p1, Lcom/google/android/datatransport/runtime/backends/h;

    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/backends/j;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/backends/h;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/backends/j;
    .locals 2

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/backends/k;->a:Lh/a/a;

    invoke-interface {v0}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/backends/k;->b:Lh/a/a;

    invoke-interface {v1}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/backends/k;->c(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/backends/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/backends/k;->b()Lcom/google/android/datatransport/runtime/backends/j;

    move-result-object v0

    return-object v0
.end method
