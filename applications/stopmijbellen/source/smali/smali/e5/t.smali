.class public Le5/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ll5/d;

.field public final synthetic b:Le5/v;


# direct methods
.method public constructor <init>(Le5/v;Ll5/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/t;->b:Le5/v;

    iput-object p2, p0, Le5/t;->a:Ll5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le5/t;->b:Le5/v;

    iget-object v1, p0, Le5/t;->a:Ll5/d;

    invoke-static {v0, v1}, Le5/v;->a(Le5/v;Ll5/d;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
