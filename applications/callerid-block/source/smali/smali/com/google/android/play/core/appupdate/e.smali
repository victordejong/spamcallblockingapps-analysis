.class public final Lcom/google/android/play/core/appupdate/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/internal/s0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/internal/s0<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/appupdate/c;


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/appupdate/e;->b()Landroid/content/Context;

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/e;->a:Lcom/google/android/play/core/appupdate/c;

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/c;->a()Landroid/content/Context;

    const/4 v0, 0x0

    throw v0
.end method
