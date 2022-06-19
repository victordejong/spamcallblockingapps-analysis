.class public final Lcom/google/android/datatransport/h/x/j/h;
.super Ljava/lang/Object;
.source "EventStoreModule_StoreConfigFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/h/u/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/h/x/j/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/h/u/a/b<",
        "Lcom/google/android/datatransport/h/x/j/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/h/x/j/h;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/h/x/j/h$a;->a()Lcom/google/android/datatransport/h/x/j/h;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/google/android/datatransport/h/x/j/d;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/h/x/j/e;->c()Lcom/google/android/datatransport/h/x/j/d;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/datatransport/h/u/a/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/h/x/j/d;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/h/x/j/d;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/datatransport/h/x/j/h;->c()Lcom/google/android/datatransport/h/x/j/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/h/x/j/h;->b()Lcom/google/android/datatransport/h/x/j/d;

    move-result-object v0

    return-object v0
.end method
