.class public final Lcom/google/android/datatransport/h/x/j/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/datatransport/h/u/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/h/u/a/b<",
        "Lcom/google/android/datatransport/h/x/j/h0;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/a/a;Lh/a/a;Lh/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lh/a/a<",
            "Ljava/lang/String;",
            ">;",
            "Lh/a/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/h/x/j/i0;->a:Lh/a/a;

    iput-object p2, p0, Lcom/google/android/datatransport/h/x/j/i0;->b:Lh/a/a;

    iput-object p3, p0, Lcom/google/android/datatransport/h/x/j/i0;->c:Lh/a/a;

    return-void
.end method

.method public static a(Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/h/x/j/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a/a<",
            "Landroid/content/Context;",
            ">;",
            "Lh/a/a<",
            "Ljava/lang/String;",
            ">;",
            "Lh/a/a<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/datatransport/h/x/j/i0;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/datatransport/h/x/j/i0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/h/x/j/i0;-><init>(Lh/a/a;Lh/a/a;Lh/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/datatransport/h/x/j/h0;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/h/x/j/h0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/h/x/j/h0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/h/x/j/h0;
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/h/x/j/i0;->a:Lh/a/a;

    invoke-interface {v0}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/datatransport/h/x/j/i0;->b:Lh/a/a;

    invoke-interface {v1}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/datatransport/h/x/j/i0;->c:Lh/a/a;

    invoke-interface {v2}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/datatransport/h/x/j/i0;->c(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/datatransport/h/x/j/h0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/h/x/j/i0;->b()Lcom/google/android/datatransport/h/x/j/h0;

    move-result-object v0

    return-object v0
.end method
