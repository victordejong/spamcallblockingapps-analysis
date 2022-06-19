.class public final Lu2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu2/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lu2/h;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lu2/h;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
