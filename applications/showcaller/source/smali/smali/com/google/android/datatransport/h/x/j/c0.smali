.class public final Lcom/google/android/datatransport/h/x/j/c0;
.super Ljava/lang/Object;
.source "SQLiteEventStore_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/h/u/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/h/u/a/b<",
        "Lcom/google/android/datatransport/h/x/j/b0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/x/j/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/x/j/h0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;",
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;",
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/x/j/d;",
            ">;",
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/x/j/h0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/datatransport/h/x/j/c0;->a:Le/a/a;

    .line 3
    iput-object p2, p0, Lcom/google/android/datatransport/h/x/j/c0;->b:Le/a/a;

    .line 4
    iput-object p3, p0, Lcom/google/android/datatransport/h/x/j/c0;->c:Le/a/a;

    .line 5
    iput-object p4, p0, Lcom/google/android/datatransport/h/x/j/c0;->d:Le/a/a;

    return-void
.end method

.method public static a(Le/a/a;Le/a/a;Le/a/a;Le/a/a;)Lcom/google/android/datatransport/h/x/j/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;",
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/y/a;",
            ">;",
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/x/j/d;",
            ">;",
            "Le/a/a<",
            "Lcom/google/android/datatransport/h/x/j/h0;",
            ">;)",
            "Lcom/google/android/datatransport/h/x/j/c0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/h/x/j/c0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/h/x/j/c0;-><init>(Le/a/a;Le/a/a;Le/a/a;Le/a/a;)V

    return-object v0
.end method

.method public static c(Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/y/a;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/datatransport/h/x/j/b0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/h/x/j/b0;

    check-cast p2, Lcom/google/android/datatransport/h/x/j/d;

    check-cast p3, Lcom/google/android/datatransport/h/x/j/h0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/h/x/j/b0;-><init>(Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/x/j/d;Lcom/google/android/datatransport/h/x/j/h0;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/h/x/j/b0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/h/x/j/c0;->a:Le/a/a;

    invoke-interface {v0}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/h/y/a;

    iget-object v1, p0, Lcom/google/android/datatransport/h/x/j/c0;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/h/y/a;

    iget-object v2, p0, Lcom/google/android/datatransport/h/x/j/c0;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/datatransport/h/x/j/c0;->d:Le/a/a;

    invoke-interface {v3}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/datatransport/h/x/j/c0;->c(Lcom/google/android/datatransport/h/y/a;Lcom/google/android/datatransport/h/y/a;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/datatransport/h/x/j/b0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/h/x/j/c0;->b()Lcom/google/android/datatransport/h/x/j/b0;

    move-result-object v0

    return-object v0
.end method
